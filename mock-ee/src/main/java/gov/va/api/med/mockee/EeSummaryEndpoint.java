package gov.va.api.med.mockee;

import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryRequest;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.JAXBException;
import javax.xml.namespace.QName;
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
  public JAXBElement<GetEeSummaryResponse> getEeSummaryRequest(
      @RequestPayload JAXBElement<GetEESummaryRequest> request) throws JAXBException {

    final String icn = request.getValue().getKey();
    final String requestName = request.getValue().getRequestName();
    final String payload = repository.findEeResponse(icn, requestName);

    GetEeSummaryResponse summaryResponse = new GetEeSummaryResponse();
    summaryResponse.setSummary(payload);

    JAXBElement<GetEeSummaryResponse> response =
        new JAXBElement<GetEeSummaryResponse>(
            new QName(GetEeSummaryResponse.class.getSimpleName()),
            GetEeSummaryResponse.class,
            summaryResponse);

    return response;
  }
}
