package gov.va.api.med.mockee;

import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryRequest;
import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryResponse;
import gov.va.med.esr.webservices.jaxws.schemas.ObjectFactory;
import java.io.StringReader;
import java.sql.SQLException;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.JAXBException;
import javax.xml.transform.stream.StreamSource;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;

@AllArgsConstructor(onConstructor = @__({@Autowired}))
@Endpoint
public class EeSummaryEndpoint {

  private static final String NAMESPACE_URI = "http://jaxws.webservices.esr.med.va.gov/schemas";

  private EeResponseRepository repository;

  /**
   * Get EE Summary Response.
   *
   * @throws SQLException when there's an issue accessing the database
   */
  @PayloadRoot(namespace = NAMESPACE_URI, localPart = "getEESummaryRequest")
  @ResponsePayload
  public JAXBElement<GetEESummaryResponse> getEeSummaryRequest(
      @RequestPayload JAXBElement<GetEESummaryRequest> request) throws JAXBException, SQLException {
    final String icn = request.getValue().getKey();
    String payload = repository.findEeResponse(icn);

    if (payload.isEmpty()) {
      ObjectFactory objectFactory = new ObjectFactory();
      return objectFactory.createGetEESummaryResponse(new GetEESummaryResponse());
    }

    return JAXBContext.newInstance(GetEESummaryResponse.class)
        .createUnmarshaller()
        .unmarshal(new StreamSource(new StringReader(payload)), GetEESummaryResponse.class);
  }
}
