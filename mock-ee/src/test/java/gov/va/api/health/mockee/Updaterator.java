package gov.va.api.health.mockee;

import static com.google.common.base.Preconditions.checkState;
import static org.assertj.core.api.Assertions.assertThat;

import com.google.common.collect.ImmutableMap;
import com.microsoft.sqlserver.jdbc.SQLServerDataSource;
import gov.va.med.esr.webservices.jaxws.schemas.AddressCollection;
import gov.va.med.esr.webservices.jaxws.schemas.AddressInfo;
import gov.va.med.esr.webservices.jaxws.schemas.ContactInfo;
import gov.va.med.esr.webservices.jaxws.schemas.DemographicInfo;
import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryResponse;
import java.io.FileInputStream;
import java.io.StringReader;
import java.io.StringWriter;
import java.net.URL;
import java.time.Instant;
import java.time.ZonedDateTime;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Optional;
import java.util.Properties;
import java.util.Random;
import java.util.stream.Collectors;
import javax.persistence.EntityManager;
import javax.persistence.SharedCacheMode;
import javax.persistence.ValidationMode;
import javax.persistence.spi.ClassTransformer;
import javax.persistence.spi.PersistenceUnitInfo;
import javax.persistence.spi.PersistenceUnitTransactionType;
import javax.sql.DataSource;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.Marshaller;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.transform.stream.StreamSource;
import lombok.Builder;
import lombok.NonNull;
import lombok.Singular;
import lombok.SneakyThrows;
import lombok.Value;
import lombok.experimental.Accessors;
import lombok.extern.slf4j.Slf4j;
import org.hibernate.cfg.AvailableSettings;
import org.hibernate.jpa.HibernatePersistenceProvider;

/**
 * Utility to update Mock-EE data. This class connects to the MITRE database and deserializes (and
 * re-serializes) the payload of each EeResponseEntity to apply the transformation in {@link
 * #modify(GetEESummaryResponse)}.
 */
@Slf4j
public final class Updaterator {
  private static final Random RANDOM = new Random(321_425_4852L);

  private static final Instant NOW =
      ZonedDateTime.parse("2019-09-26T12:59:53.716-04:00").toInstant();

  private static final Instant YESTERDAY =
      ZonedDateTime.parse("2019-09-25T12:59:53.716-04:00").toInstant();

  @SneakyThrows
  public static void main(String[] args) {
    String configFile = "config/application-dev.properties";
    // only update database if true
    boolean commit = false;
    // randomly leave some records unaffected
    // higher value --> fewer skips
    double randomSkipFloor = 0.90;

    JAXBContext jaxbContext = JAXBContext.newInstance(GetEESummaryResponse.class);
    EntityManager mitre = new Mitre(configFile).createEntityManager();
    mitre.getTransaction().begin();

    List<EeResponseEntity> entities =
        mitre
            .createQuery("Select e from EeResponseEntity e", EeResponseEntity.class)
            .getResultList();

    for (EeResponseEntity entity : entities) {
      if (RANDOM.nextDouble() >= randomSkipFloor) {
        continue;
      }
      log.info("Processing " + entity.icn());

      JAXBElement<GetEESummaryResponse> elem =
          jaxbContext
              .createUnmarshaller()
              .unmarshal(
                  new StreamSource(new StringReader(entity.payload())), GetEESummaryResponse.class);

      modify(elem.getValue());

      StringWriter newPayloadWriter = new StringWriter();
      Marshaller marshaller = jaxbContext.createMarshaller();
      marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
      marshaller.marshal(elem, newPayloadWriter);

      String newPayload = newPayloadWriter.toString();
      if (newPayload.startsWith("<?xml")) {
        // hack... chop off the opening <?xml> tag
        newPayload = newPayload.substring(newPayload.indexOf("\n") + 1);
      }
      checkState(newPayload.startsWith("<getEESummaryResponse"));

      entity.payload(newPayload);
    }

    if (commit) {
      mitre.getTransaction().commit();
    } else {
      mitre.getTransaction().rollback();
    }

    mitre.close();

    log.info("done");
    System.exit(0);
  }

  /** Edit this method to change how payloads are transformed. */
  private static void modify(@NonNull GetEESummaryResponse eeResponse) {
    if (eeResponse.getSummary().getDemographics() == null) {
      eeResponse.getSummary().setDemographics(DemographicInfo.builder().build());
    }

    if (eeResponse.getSummary().getDemographics().getContactInfo() == null) {
      eeResponse.getSummary().getDemographics().setContactInfo(ContactInfo.builder().build());
    }

    if (eeResponse.getSummary().getDemographics().getContactInfo().getAddresses() == null) {
      eeResponse
          .getSummary()
          .getDemographics()
          .getContactInfo()
          .setAddresses(AddressCollection.builder().build());
    }

    Optional<AddressInfo> maybeAddress =
        eeResponse
            .getSummary()
            .getDemographics()
            .getContactInfo()
            .getAddresses()
            .getAddress()
            .stream()
            .filter(a -> "Residential".equalsIgnoreCase(a.getAddressTypeCode()))
            .findFirst();
    if (maybeAddress.isEmpty()) {
      eeResponse
          .getSummary()
          .getDemographics()
          .getContactInfo()
          .getAddresses()
          .getAddress()
          .add(AddressInfo.builder().addressTypeCode("Residential").build());
    }

    eeResponse
        .getSummary()
        .getDemographics()
        .getContactInfo()
        .getAddresses()
        .getAddress()
        .stream()
        .filter(a -> "Residential".equalsIgnoreCase(a.getAddressTypeCode()))
        .findFirst()
        .get()
        .setAddressChangeDateTime(
            parseXmlGregorianCalendar(RANDOM.nextBoolean() ? NOW : YESTERDAY));

    System.out.println(eeResponse);
  }

  @SneakyThrows
  private static XMLGregorianCalendar parseXmlGregorianCalendar(Instant instant) {
    GregorianCalendar gCal = new GregorianCalendar();
    gCal.setTime(Date.from(instant));
    return DatatypeFactory.newInstance().newXMLGregorianCalendar(gCal);
  }

  private static final class Mitre {
    private final Properties config;

    @SneakyThrows
    Mitre(String configFile) {
      log.info("Loading MITRE connection configuration from {}", configFile);
      config = new Properties(System.getProperties());
      try (FileInputStream inputStream = new FileInputStream(configFile)) {
        config.load(inputStream);
      }
    }

    EntityManager createEntityManager() {
      PersistenceUnitInfo info =
          PersistenceUnit.builder()
              .persistenceUnitName("mitre")
              .jtaDataSource(dataSource())
              .managedClasses(Arrays.asList(EeResponseEntity.class))
              .properties(properties())
              .build();
      return new HibernatePersistenceProvider()
          .createContainerEntityManagerFactory(
              info,
              ImmutableMap.of(
                  AvailableSettings.JPA_JDBC_DRIVER,
                  "com.microsoft.sqlserver.jdbc.SQLServerDriver"))
          .createEntityManager();
    }

    DataSource dataSource() {
      SQLServerDataSource ds = new SQLServerDataSource();
      ds.setUser(valueOf("spring.datasource.username"));
      ds.setPassword(valueOf("spring.datasource.password"));
      ds.setURL(valueOf("spring.datasource.url"));
      return ds;
    }

    Properties properties() {
      Properties properties = new Properties();
      properties.put("hibernate.hbm2ddl.auto", "none");
      // CHANGE TO TRUE TO DEBUG
      properties.put("hibernate.show_sql", "false");
      properties.put("hibernate.format_sql", "true");
      properties.put("hibernate.globally_quoted_identifiers", "true");
      return properties;
    }

    String valueOf(String name) {
      String value = config.getProperty(name, "");
      assertThat(value).withFailMessage("System property %s must be specified.", name).isNotBlank();
      return value;
    }
  }

  @Value
  @Builder
  @Accessors(fluent = false)
  private static final class PersistenceUnit implements PersistenceUnitInfo {
    String persistenceUnitName;

    @Builder.Default
    String persistenceProviderClassName = HibernatePersistenceProvider.class.getName();

    @Builder.Default
    PersistenceUnitTransactionType transactionType = PersistenceUnitTransactionType.RESOURCE_LOCAL;

    DataSource jtaDataSource;
    @Builder.Default List<String> mappingFileNames = Collections.emptyList();
    @Builder.Default List<URL> jarFileUrls = Collections.emptyList();
    URL persistenceUnitRootUrl;
    @Singular List<Class<?>> managedClasses;
    @Builder.Default boolean excludeUnlistedClasses = false;
    @Builder.Default SharedCacheMode sharedCacheMode = SharedCacheMode.NONE;
    @Builder.Default ValidationMode validationMode = ValidationMode.AUTO;
    @Builder.Default Properties properties = new Properties();
    @Builder.Default String persistenceXMLSchemaVersion = "2.1";
    @Builder.Default ClassLoader classLoader = Thread.currentThread().getContextClassLoader();

    @Override
    public void addTransformer(ClassTransformer transformer) {}

    @Override
    public boolean excludeUnlistedClasses() {
      return excludeUnlistedClasses;
    }

    @Override
    public List<String> getManagedClassNames() {
      return managedClasses.stream().map(Class::getName).collect(Collectors.toList());
    }

    @Override
    public ClassLoader getNewTempClassLoader() {
      return null;
    }

    @Override
    public DataSource getNonJtaDataSource() {
      return getJtaDataSource();
    }
  }
}
