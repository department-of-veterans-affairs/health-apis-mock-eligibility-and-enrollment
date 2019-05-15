package gov.va.api.med.mockee;

import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryRequest;
import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryResponse;
import java.io.StringReader;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.JAXBException;
import javax.xml.transform.stream.StreamSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;

@Endpoint
public class EeSummaryEndpoint {

  private static final String NAMESPACE_URI = "http://jaxws.webservices.esr.med.va.gov/schemas";

  private EeResponseRepository repository = new EeResponseRepository();

  @Autowired
  public EeSummaryEndpoint(EeResponseRepository repository) {
    this.repository = repository;
  }

  /** Get EE Summary Response. */
  @PayloadRoot(namespace = NAMESPACE_URI, localPart = "getEESummaryRequest")
  @ResponsePayload
  public JAXBElement<GetEESummaryResponse> getEeSummaryRequest(
      @RequestPayload JAXBElement<GetEESummaryRequest> request) throws JAXBException {
    final String icn = request.getValue().getKey();
    final String payload = repository.findEeResponse(icn);

    return JAXBContext.newInstance(GetEESummaryResponse.class)
        .createUnmarshaller()
        .unmarshal(new StreamSource(new StringReader(payload)), GetEESummaryResponse.class);
  }
}
