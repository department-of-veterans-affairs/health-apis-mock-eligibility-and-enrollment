package gov.va.api.health.mockee;

import static java.util.Collections.singletonList;
import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatExceptionOfType;

import gov.va.med.esr.webservices.jaxws.schemas.AddressCollection;
import gov.va.med.esr.webservices.jaxws.schemas.AddressInfo;
import gov.va.med.esr.webservices.jaxws.schemas.CommunityCareEligibilityInfo;
import gov.va.med.esr.webservices.jaxws.schemas.ContactInfo;
import gov.va.med.esr.webservices.jaxws.schemas.DemographicInfo;
import gov.va.med.esr.webservices.jaxws.schemas.EeSummary;
import gov.va.med.esr.webservices.jaxws.schemas.GeocodingInfo;
import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryRequest;
import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryResponse;
import gov.va.med.esr.webservices.jaxws.schemas.ObjectFactory;
import gov.va.med.esr.webservices.jaxws.schemas.VceEligibilityCollection;
import gov.va.med.esr.webservices.jaxws.schemas.VceEligibilityInfo;
import java.math.BigDecimal;
import java.sql.Date;
import java.time.Instant;
import java.util.GregorianCalendar;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;
import lombok.SneakyThrows;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest(classes = {Application.class, WebServiceConfig.class})
public class EeSummaryEndpointTest {
  @Autowired EeSummaryEndpoint eeSummaryEndpoint;

  @SneakyThrows
  private static XMLGregorianCalendar parseXmlGregorianCalendar(String timestamp) {
    GregorianCalendar gCal = new GregorianCalendar();
    gCal.setTime(Date.from(Instant.parse(timestamp)));
    return DatatypeFactory.newInstance().newXMLGregorianCalendar(gCal);
  }

  @Test
  public void correctSummaryResponse() {
    assertThat(
            eeSummaryEndpoint
                .getEeSummaryRequest(
                    new ObjectFactory()
                        .createGetEESummaryRequest(
                            GetEESummaryRequest.builder().key("1000003").build()))
                .getValue())
        .isEqualTo(
            GetEESummaryResponse.builder()
                .eesVersion("5.6.0.01001")
                .invocationDate(parseXmlGregorianCalendar("2019-05-01T07:56:02.00Z"))
                .summary(
                    EeSummary.builder()
                        .demographics(
                            DemographicInfo.builder()
                                .contactInfo(
                                    ContactInfo.builder()
                                        .addresses(
                                            AddressCollection.builder()
                                                .address(
                                                    singletonList(
                                                        AddressInfo.builder()
                                                            .city("Raleigh")
                                                            .line1("Apt. 71")
                                                            .line2("")
                                                            .line3("966 Summerhouse St.")
                                                            .postalCode("27601")
                                                            .state("NC")
                                                            .zipCode("27601")
                                                            .zipPlus4("0400")
                                                            .addressChangeDateTime(
                                                                parseXmlGregorianCalendar(
                                                                    "2019-09-26T12:59:53.00Z"))
                                                            .addressTypeCode("Residential")
                                                            .build()))
                                                .build())
                                        .build())
                                .build())
                        .communityCareEligibilityInfo(
                            CommunityCareEligibilityInfo.builder()
                                .eligibilities(
                                    VceEligibilityCollection.builder()
                                        .eligibility(
                                            singletonList(
                                                VceEligibilityInfo.builder()
                                                    .vceCode("H")
                                                    .vceDescription("Hardship")
                                                    .vceEffectiveDate(
                                                        parseXmlGregorianCalendar(
                                                            "1951-02-14T16:23:40.00Z"))
                                                    .build()))
                                        .build())
                                .geocodingInfo(
                                    GeocodingInfo.builder()
                                        .addressLatitude(BigDecimal.valueOf(28.1123163))
                                        .addressLongitude(BigDecimal.valueOf(-80.6992721))
                                        .geocodeDate(
                                            parseXmlGregorianCalendar(
                                                "2019-09-26T12:59:53.716-04:00"))
                                        .build())
                                .build())
                        .build())
                .build());
  }

  @Test
  public void initDataError() {
    assertThatExceptionOfType(RuntimeException.class)
        .isThrownBy(() -> new EeSummaryEndpoint(null).initData());
  }

  @Test
  public void noEntriesAreFound() {
    assertThatExceptionOfType(EeSummaryEndpoint.UnknownPatientIcnException.class)
        .isThrownBy(
            () ->
                eeSummaryEndpoint.getEeSummaryRequest(
                    new ObjectFactory()
                        .createGetEESummaryRequest(
                            GetEESummaryRequest.builder().key("100").build())));
  }
}
