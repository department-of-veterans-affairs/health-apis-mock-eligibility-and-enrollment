package gov.va.api.med.mockee;

import static org.assertj.core.api.Assertions.assertThat;

import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryRequest;
import gov.va.med.esr.webservices.jaxws.schemas.ObjectFactory;
import javax.xml.bind.JAXBElement;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@DataJpaTest
public class JpaTest {
  @Autowired private TestEntityManager entityManager;

  @Test
  public void verifyJpa() {
    EeResponseEntity entity = EeResponseEntity.builder().icn("1234").payload("testPayload").build();
    entityManager.persistAndFlush(entity);

    JAXBElement<GetEESummaryRequest> request =
        new ObjectFactory()
            .createGetEESummaryRequest(GetEESummaryRequest.builder().key("1234").build());

    assertThat(entityManager.find(EeResponseEntity.class, request.getValue().getKey()).payload())
        .isEqualTo(entity.payload());
  }
}
