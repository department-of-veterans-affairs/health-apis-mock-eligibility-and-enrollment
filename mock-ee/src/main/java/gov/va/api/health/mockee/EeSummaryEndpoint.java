package gov.va.api.health.mockee;

import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryRequest;
import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryResponse;

import java.io.*;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.transform.stream.StreamSource;
import lombok.AllArgsConstructor;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import net.bytebuddy.dynamic.scaffold.MethodGraph;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.io.support.ResourcePatternUtils;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ws.server.endpoint.annotation.Endpoint;
import org.springframework.ws.server.endpoint.annotation.PayloadRoot;
import org.springframework.ws.server.endpoint.annotation.RequestPayload;
import org.springframework.ws.server.endpoint.annotation.ResponsePayload;

@AllArgsConstructor(onConstructor = @__({@Autowired}))
@Endpoint
@Transactional
@Slf4j
public class EeSummaryEndpoint {

  private static final String NAMESPACE_URI = "http://jaxws.webservices.esr.med.va.gov/schemas";

  @PersistenceContext private EntityManager entityManager;

  @Autowired
  ResourceLoader resourceLoader;

  public Resource[] loadResources(String pattern) throws IOException {
    return ResourcePatternUtils.getResourcePatternResolver(resourceLoader).getResources(pattern);
  }

  public List<EeResponseEntity> setEntityManager() throws IOException {
    List<EeResponseEntity> eeResponseEntities = new LinkedList<>();
    Resource[] resources = loadResources("classpath*:data/*.xml");
    for (Resource resource : resources) {
      String icn = resource.getFilename().substring(0,resource.getFilename().length()-4);
      InputStream inputStream = new ClassPathResource("data/" + resource.getFilename()).getInputStream();
      BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));
      String xml = reader.lines().collect(Collectors.joining("\n"));
      eeResponseEntities.add(EeResponseEntity.builder().icn(icn).payload(xml).build());
    }
    return eeResponseEntities;
  }

  /** Find the EeResponseEntity mapped to the icn.* */
  public EeResponseEntity findEeResponseEntity(String icn) {
    EeResponseEntity entity = entityManager.find(EeResponseEntity.class, icn);
    if (entity == null) {
      throw new Exceptions.UnknownPatientIcnException(icn);
    }
    return entity;
  }

  public void entityManager() {
    entityManager.persist(EeResponseEntity.builder().icn("9").payload("<getEESummaryResponse xmlns=\"http://jaxws.webservices.esr.med.va.gov/schemas\">\n" +
            "  <summary>\n" +
            "  </summary>\n" +
            "  <eesVersion>5.6.0.01001</eesVersion>\n" +
            "  <invocationDate>2019-05-01T07:56:02</invocationDate>\n" +
            "</getEESummaryResponse>").build());
  }

  /** Get EE Summary Response. */
  @PayloadRoot(namespace = NAMESPACE_URI, localPart = "getEESummaryRequest")
  @ResponsePayload
  @SneakyThrows
  public JAXBElement<GetEESummaryResponse> getEeSummaryRequest(
      @RequestPayload JAXBElement<GetEESummaryRequest> request) {
    setEntityManager();
    entityManager();
    final String icn = request.getValue().getKey();
    EeResponseEntity responseEntity = findEeResponseEntity(icn);
    String payload = responseEntity.payload();
    return JAXBContext.newInstance(GetEESummaryResponse.class)
        .createUnmarshaller()
        .unmarshal(new StreamSource(new StringReader(payload)), GetEESummaryResponse.class);
  }


}
