package gov.va.api.health.mockee;

import static com.google.common.base.Preconditions.checkState;
import static java.util.stream.Collectors.joining;

import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryRequest;
import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryResponse;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.transform.stream.StreamSource;
import lombok.AllArgsConstructor;
import lombok.SneakyThrows;
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

/** EeSummaryEndpoint. */
@AllArgsConstructor(onConstructor = @__({@Autowired}))
@Endpoint
public class EeSummaryEndpoint {
  private static final String NAMESPACE_URI = "http://jaxws.webservices.esr.med.va.gov/schemas";

  @PersistenceContext private EntityManager entityManager;

  /** Get EE Summary Response. */
  @PayloadRoot(namespace = NAMESPACE_URI, localPart = "getEESummaryRequest")
  @ResponsePayload
  @SneakyThrows
  public JAXBElement<GetEESummaryResponse> getEeSummaryRequest(
      @RequestPayload JAXBElement<GetEESummaryRequest> request) {
    final String icn = request.getValue().getKey();
    EeResponseEntity responseEntity = entityManager.find(EeResponseEntity.class, icn);
    if (responseEntity == null) {
      throw new UnknownPatientIcnException();
    }
    String payload = responseEntity.payload();
    return JAXBContext.newInstance(GetEESummaryResponse.class)
        .createUnmarshaller()
        .unmarshal(new StreamSource(new StringReader(payload)), GetEESummaryResponse.class);
  }

  /** Persist EeResponseEntity for each data file. */
  @SneakyThrows
  @Transactional
  @EventListener(ApplicationStartedEvent.class)
  public void initData() {
    Resource[] resources =
        new PathMatchingResourcePatternResolver().getResources("classpath*:data/*.xml");
    for (Resource resource : resources) {
      String filename = resource.getFilename();
      checkState(filename != null);
      String icn = filename.substring(0, filename.indexOf("."));
      try (InputStream inputStream = resource.getInputStream();
          BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"))) {
        String xml = reader.lines().collect(joining("\n"));
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
