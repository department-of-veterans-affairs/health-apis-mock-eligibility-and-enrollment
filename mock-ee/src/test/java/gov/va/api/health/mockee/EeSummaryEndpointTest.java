package gov.va.api.health.mockee;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import gov.va.med.esr.webservices.jaxws.schemas.CommunityCareEligibilityInfo;
import gov.va.med.esr.webservices.jaxws.schemas.EeSummary;
import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryRequest;
import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryResponse;
import gov.va.med.esr.webservices.jaxws.schemas.ObjectFactory;
import gov.va.med.esr.webservices.jaxws.schemas.VceEligibilityCollection;
import gov.va.med.esr.webservices.jaxws.schemas.VceEligibilityInfo;
import java.sql.Date;
import java.time.Instant;
import java.util.Collections;
import java.util.GregorianCalendar;
import javax.persistence.EntityManager;
import javax.xml.bind.JAXBElement;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;
import lombok.SneakyThrows;
import org.junit.Test;

public class EeSummaryEndpointTest {

  @SneakyThrows
  private static XMLGregorianCalendar parseXmlGregorianCalendar(String timestamp) {
    GregorianCalendar gCal = new GregorianCalendar();
    gCal.setTime(Date.from(Instant.parse(timestamp)));
    return DatatypeFactory.newInstance().newXMLGregorianCalendar(gCal);
  }

  @Test
  public void correctSummaryResponse() throws DatatypeConfigurationException {
    String payload =
        "<getEESummaryResponse xmlns=\"http://jaxws.webservices.esr.med.va.gov/schemas\">\\n"
            + "            <eesVersion>5.6.0.01001</eesVersion>\\n"
            + "            <summary>\\n"
            + "                <communityCareEligibilityInfo>\\n"
            + "                    <eligibilities>\\n"
            + "                        <eligibility>\\n"
            + "                            <vceDescription>Ineligible</vceDescription>\\n"
            + "                             <vceEffectiveDate>1946-08-23T16:01:01.00Z</vceEffectiveDate>\\n"
            + "                            <vceCode>X</vceCode>\\n"
            + "                        </eligibility>\\n"
            + "                    </eligibilities>\\n"
            + "                </communityCareEligibilityInfo>\\n"
            + "            </summary>\\n"
            + "            <invocationDate>2019-05-01T07:56:02.00Z</invocationDate>\\n"
            + "        </getEESummaryResponse>";

    EntityManager entityManager = mock(EntityManager.class);
    when(entityManager.find(EeResponseEntity.class, "1000003"))
        .thenReturn(EeResponseEntity.builder().icn("1000003").payload(payload).build());

    EeSummaryEndpoint testEndpoint = new EeSummaryEndpoint(entityManager);

    JAXBElement<GetEESummaryRequest> request =
        new ObjectFactory()
            .createGetEESummaryRequest(GetEESummaryRequest.builder().key("1000003").build());

    GetEESummaryResponse expected =
        GetEESummaryResponse.builder()
            .eesVersion("5.6.0.01001")
            .invocationDate(parseXmlGregorianCalendar("2019-05-01T07:56:02.00Z"))
            .summary(
                EeSummary.builder()
                    .communityCareEligibilityInfo(
                        CommunityCareEligibilityInfo.builder()
                            .eligibilities(
                                VceEligibilityCollection.builder()
                                    .eligibility(
                                        Collections.singletonList(
                                            VceEligibilityInfo.builder()
                                                .vceCode("X")
                                                .vceDescription("Ineligible")
                                                .vceEffectiveDate(
                                                    parseXmlGregorianCalendar(
                                                        "1946-08-23T16:01:01.00Z"))
                                                .build()))
                                    .build())
                            .build())
                    .build())
            .build();

    assertThat(testEndpoint.getEeSummaryRequest(request).getValue()).isEqualTo(expected);
  }

  @Test(expected = Exceptions.UnknownPatientIcnException.class)
  public void noEntriesAreFound() {

    EntityManager entityManager = mock(EntityManager.class);
    when(entityManager.find(EeResponseEntity.class, "100")).thenReturn(null);

    EeSummaryEndpoint testEndpoint = new EeSummaryEndpoint(entityManager);

    JAXBElement<GetEESummaryRequest> request =
        new ObjectFactory()
            .createGetEESummaryRequest(GetEESummaryRequest.builder().key("100").build());

    testEndpoint.getEeSummaryRequest(request);
  }
}
