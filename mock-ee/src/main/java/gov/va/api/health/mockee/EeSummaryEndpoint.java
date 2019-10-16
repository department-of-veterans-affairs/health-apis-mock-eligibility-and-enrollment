package gov.va.api.health.mockee;

import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryRequest;
import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryResponse;
import java.io.InputStream;
import java.io.StringReader;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.transform.stream.StreamSource;
import lombok.AllArgsConstructor;
import lombok.SneakyThrows;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.event.ApplicationStartedEvent;
import org.springframework.context.event.EventListener;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;

@AllArgsConstructor(onConstructor = @__({@Autowired}))
@Endpoint
public class EeSummaryEndpoint {
  private static final String NAMESPACE_URI = "http://jaxws.webservices.esr.med.va.gov/schemas";

  @PersistenceContext private EntityManager entityManager;

  /** Find the EeResponseEntity mapped to the icn.* */
  public EeResponseEntity findEeResponseEntity(String icn) {
    EeResponseEntity entity = entityManager.find(EeResponseEntity.class, icn);
    if (entity == null) {
      throw new UnknownPatientIcnException();
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

  /** Create EeResponseEntity for each data file, persist EntityManager. */
  @SneakyThrows
  @Transactional
  @EventListener(ApplicationStartedEvent.class)
  public void initData() {
    Resource[] resources =
        new PathMatchingResourcePatternResolver().getResources("classpath*:data/*.xml");
    for (Resource resource : resources) {
      String filename = resource.getFilename();
      if (filename == null) {
        throw new IllegalStateException("Invalid filename for resource " + resource);
      }
      String icn = filename.substring(0, filename.indexOf("."));
      try (InputStream inputStream = resource.getInputStream()) {
        String xml = IOUtils.toString(inputStream, "UTF-8");
        entityManager.persist(EeResponseEntity.builder().icn(icn).payload(xml).build());
      }
    }
  }

  static final class UnknownPatientIcnException extends RuntimeException {
    UnknownPatientIcnException() {
      super("PERSON_NOT_FOUND");
    }
  }
}
