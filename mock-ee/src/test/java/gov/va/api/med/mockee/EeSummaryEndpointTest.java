package gov.va.api.med.mockee;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryRequest;
import gov.va.med.esr.webservices.jaxws.schemas.ObjectFactory;
import gov.va.med.esr.webservices.jaxws.schemas.VceEligibilityInfo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.JAXBException;
import org.junit.Test;

public class EeSummaryEndpointTest {

  @Test
  public void correctSummaryResponse() throws JAXBException, SQLException {
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

    ResultSet testResultSet = mock(ResultSet.class);
    when(testResultSet.getString("payload")).thenReturn(expectedEeSummaryResponse);

    PreparedStatement testPreparedStatement = mock(PreparedStatement.class);
    when(testPreparedStatement.executeQuery()).thenReturn(testResultSet);

    Connection testConnection = mock(Connection.class);

    ConnectionGenerator testConnectionGenerator = mock(ConnectionGenerator.class);
    when(testConnectionGenerator.generateConnection()).thenReturn(testConnection);
    when(testConnection.prepareStatement(
            "Select * from [OIT_Lighthouse].[synthea].[ee_summaries] where ICN = ?"))
        .thenReturn(testPreparedStatement);

    EeResponseRepository testRepository = new EeResponseRepository(testConnectionGenerator);
    EeSummaryEndpoint testEndpoint = new EeSummaryEndpoint(testRepository);

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
  public void noEntriesAreFound() throws SQLException, JAXBException {
    ResultSet testResultSet = mock(ResultSet.class);
    when(testResultSet.getString("payload")).thenReturn("");

    ConnectionGenerator testConnectionGenerator = mock(ConnectionGenerator.class);

    Connection testConnection = mock(Connection.class);
    when(testConnectionGenerator.generateConnection()).thenReturn(testConnection);

    PreparedStatement testPreparedStatement = mock(PreparedStatement.class);
    when(testPreparedStatement.executeQuery()).thenReturn(testResultSet);
    when(testConnection.prepareStatement(
            "Select * from [OIT_Lighthouse].[synthea].[ee_summaries] where ICN = ?"))
        .thenReturn(testPreparedStatement);

    EeResponseRepository testRepository = new EeResponseRepository(testConnectionGenerator);
    EeSummaryEndpoint testEndpoint = new EeSummaryEndpoint(testRepository);

    GetEESummaryRequest xmlRequest = GetEESummaryRequest.builder().key("1000003").build();

    ObjectFactory objectFactory = new ObjectFactory();

    JAXBElement<GetEESummaryRequest> request = objectFactory.createGetEESummaryRequest(xmlRequest);

    assertThat(testEndpoint.getEeSummaryRequest(request).getValue().getSummary()).isNull();
  }
}
