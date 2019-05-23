package gov.va.api.med.mockee;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryRequest;
import gov.va.med.esr.webservices.jaxws.schemas.ObjectFactory;
import gov.va.med.esr.webservices.jaxws.schemas.VceEligibilityInfo;
import javax.persistence.EntityManager;
import javax.xml.bind.JAXBElement;
import org.junit.Test;

public class EeSummaryEndpointTest {

  @Test
  public void correctSummaryResponse() {
    String expectedEeSummaryResponse =
        "<getEESummaryResponse xmlns=\"http://jaxws.webservices.esr.med.va.gov/schemas\">\\r\\n"
            + "            <eesVersion>5.6.0.01001</eesVersion>\\r\\n"
            + "            <summary>\\r\\n"
            + "                <communityCareEligibilityInfo>\\r\\n"
            + "                    <eligibilities>\\r\\n"
            + "                        <eligibility>\\r\\n"
            + "                            <vceDescription>Ineligible</vceDescription>\\r\\n"
            + "                             <vceEffectiveDate>"
            + "1946-08-23T16:01:01.745-04:00"
            + "</vceEffectiveDate>\\r\\n"
            + "                            <vceCode>X</vceCode>\\r\\n"
            + "                        </eligibility>\\r \\r\\n"
            + "                    </eligibilities>\\r\\n"
            + "                </communityCareEligibilityInfo>\\r\\n"
            + "            </summary>\\r\\n"
            + "            <invocationDate>2019-05-01T07:56:02</invocationDate>\\r\\n"
            + "        </getEESummaryResponse>";

    VceEligibilityInfo expectedEligibilityInfo =
        VceEligibilityInfo.builder().vceCode("X").vceDescription("Ineligible").build();

    EeSummaryEndpoint testEndpoint = new EeSummaryEndpoint(null);
    testEndpoint.entityManager = mock(EntityManager.class);

    when(testEndpoint.entityManager.find(EeResponseEntity.class, "1000003"))
        .thenReturn(
            EeResponseEntity.builder().icn("1000003").payload(expectedEeSummaryResponse).build());

    GetEESummaryRequest xmlRequest = GetEESummaryRequest.builder().key("1000003").build();

    ObjectFactory objectFactory = new ObjectFactory();

    JAXBElement<GetEESummaryRequest> request = objectFactory.createGetEESummaryRequest(xmlRequest);

    assertThat(
            testEndpoint
                .getEeSummaryRequest(request)
                .getValue()
                .getSummary()
                .getCommunityCareEligibilityInfo()
                .getEligibilities()
                .getEligibility()
                .get(0)
                .getVceCode())
        .isEqualTo(expectedEligibilityInfo.getVceCode());
  }

  @Test
  public void noEntriesAreFound() {

    EeSummaryEndpoint testEndpoint = new EeSummaryEndpoint(null);
    testEndpoint.entityManager = mock(EntityManager.class);

    when(testEndpoint.entityManager.find(EeResponseEntity.class, "invalid-icn"))
        .thenReturn(EeResponseEntity.builder().icn("invalid-icn").payload("").build());

    GetEESummaryRequest xmlRequest = GetEESummaryRequest.builder().key("invalid-icn").build();

    ObjectFactory objectFactory = new ObjectFactory();

    JAXBElement<GetEESummaryRequest> request = objectFactory.createGetEESummaryRequest(xmlRequest);

    assertThat(testEndpoint.getEeSummaryRequest(request).getValue().getSummary()).isNull();
  }
}
