package gov.va.api.med.mockee;

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
import java.util.ArrayList;
import javax.persistence.EntityManager;
import javax.xml.bind.JAXBElement;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;
import org.junit.Test;

public class EeSummaryEndpointTest {

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
            + "                             <vceEffectiveDate>1946-08-23T16:01:01.745-04:00</vceEffectiveDate>\\n"
            + "                            <vceCode>X</vceCode>\\n"
            + "                        </eligibility>\\n"
            + "                    </eligibilities>\\n"
            + "                </communityCareEligibilityInfo>\\n"
            + "            </summary>\\n"
            + "            <invocationDate>2019-05-01T07:56:02</invocationDate>\\n"
            + "        </getEESummaryResponse>";

    EntityManager entityManager = mock(EntityManager.class);
    when(entityManager.find(EeResponseEntity.class, "1000003"))
        .thenReturn(EeResponseEntity.builder().icn("1000003").payload(payload).build());

    EeSummaryEndpoint testEndpoint = new EeSummaryEndpoint(entityManager);

    JAXBElement<GetEESummaryRequest> request =
        new ObjectFactory()
            .createGetEESummaryRequest(GetEESummaryRequest.builder().key("1000003").build());

    XMLGregorianCalendar vceEffectiveDate = DatatypeFactory.newInstance().newXMLGregorianCalendar();
    vceEffectiveDate.setTime(16, 1, 1, 745);
    vceEffectiveDate.setYear(1946);
    vceEffectiveDate.setMonth(8);
    vceEffectiveDate.setDay(23);
    vceEffectiveDate.setTimezone(-240);

    VceEligibilityInfo expectedEligibilityInfo =
        VceEligibilityInfo.builder()
            .vceCode("X")
            .vceDescription("Ineligible")
            .vceEffectiveDate(vceEffectiveDate)
            .build();

    ArrayList<VceEligibilityInfo> eligibilityList = new ArrayList<VceEligibilityInfo>();
    eligibilityList.add(expectedEligibilityInfo);

    XMLGregorianCalendar invocationDate = DatatypeFactory.newInstance().newXMLGregorianCalendar();
    invocationDate.setTime(7, 56, 02);
    invocationDate.setYear(2019);
    invocationDate.setMonth(5);
    invocationDate.setDay(1);

    GetEESummaryResponse expected =
        GetEESummaryResponse.builder()
            .eesVersion("5.6.0.01001")
            .invocationDate(invocationDate)
            .summary(
                EeSummary.builder()
                    .communityCareEligibilityInfo(
                        CommunityCareEligibilityInfo.builder()
                            .eligibilities(
                                VceEligibilityCollection.builder()
                                    .eligibility(eligibilityList)
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
