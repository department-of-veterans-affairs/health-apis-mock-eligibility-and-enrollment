package gov.va.api.health.mockee;

import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryRequest;
import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryResponse;
import java.io.StringReader;
import javax.persistence.EntityManager;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.transform.stream.StreamSource;
import lombok.AllArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;

@AllArgsConstructor(onConstructor = @__({@Autowired}))
@Endpoint
public class EeSummaryEndpoint {

  private static final String NAMESPACE_URI = "http://jaxws.webservices.esr.med.va.gov/schemas";

  private EntityManager entityManager;

  /** Find the EeResponseEntity mapped to the icn.* */
  public EeResponseEntity findEeResponseEntity(String icn) {
    EeResponseEntity entity = entityManager.find(EeResponseEntity.class, icn);
    if (entity == null) {
      throw new Exceptions.UnknownPatientIcnException(icn);
    }
    return entity;
  }

  /** Get EE Summary Response. */
  @PayloadRoot(namespace = NAMESPACE_URI, localPart = "getEESummaryRequest")
  @ResponsePayload
  @SneakyThrows
  public JAXBElement<GetEESummaryResponse> getEeSummaryRequest(
      @RequestPayload JAXBElement<GetEESummaryRequest> request) {
    final String icn = request.getValue().getKey();
    EeResponseEntity responseEntity = findEeResponseEntity(icn);
    String payload = responseEntity.payload();
    return JAXBContext.newInstance(GetEESummaryResponse.class)
        .createUnmarshaller()
        .unmarshal(new StreamSource(new StringReader(payload)), GetEESummaryResponse.class);
  }
}
