package gov.va.api.health.mockee;

import gov.va.med.esr.webservices.jaxws.schemas.AddressCollection;
import gov.va.med.esr.webservices.jaxws.schemas.AddressInfo;
import gov.va.med.esr.webservices.jaxws.schemas.ContactInfo;
import gov.va.med.esr.webservices.jaxws.schemas.DemographicInfo;
import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryResponse;
import java.io.StringReader;
import java.io.StringWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.time.Instant;
import java.time.ZonedDateTime;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Optional;
import java.util.Random;
import java.util.stream.Collectors;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.Marshaller;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.transform.stream.StreamSource;
import lombok.NonNull;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;

/** Utility to edit Mock-EE data. */
@Slf4j
public final class Updaterator {
  private static final Random RANDOM = new Random(321_425_4852L);

  private static final Instant NOW =
      ZonedDateTime.parse("2019-09-26T12:59:53.716-04:00").toInstant();

  private static final Instant YESTERDAY =
      ZonedDateTime.parse("2019-09-25T12:59:53.716-04:00").toInstant();

  @SneakyThrows
  public static void main(String[] args) {
    // randomly leave some records unaffected
    // higher value --> fewer skips
    double randomSkipFloor = 0.90;

    JAXBContext jaxbContext = JAXBContext.newInstance(GetEESummaryResponse.class);

    List<Path> paths =
        Files.find(Paths.get("src/main/resources/data"), 1, (p, a) -> true)
            .filter(p -> p.toFile().getName().endsWith("xml"))
            .collect(Collectors.toList());

    for (Path path : paths) {
      if (RANDOM.nextDouble() >= randomSkipFloor) {
        continue;
      }
      log.info("Processing " + path.toFile().getName());

      String payload = Files.readString(path);
      JAXBElement<GetEESummaryResponse> elem =
          jaxbContext
              .createUnmarshaller()
              .unmarshal(new StreamSource(new StringReader(payload)), GetEESummaryResponse.class);

      modify(elem.getValue());

      StringWriter newPayloadWriter = new StringWriter();
      Marshaller marshaller = jaxbContext.createMarshaller();
      marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
      marshaller.marshal(elem, newPayloadWriter);

      String newPayload = newPayloadWriter.toString();
      Files.writeString(path, newPayload, StandardOpenOption.TRUNCATE_EXISTING);
    }

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
        eeResponse.getSummary().getDemographics().getContactInfo().getAddresses().getAddress()
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

    eeResponse.getSummary().getDemographics().getContactInfo().getAddresses().getAddress().stream()
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
}
