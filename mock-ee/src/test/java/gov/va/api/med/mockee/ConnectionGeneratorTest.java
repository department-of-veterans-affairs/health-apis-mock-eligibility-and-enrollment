package gov.va.api.med.mockee;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Test;

public class ConnectionGeneratorTest {

  @Test
  public void verifyGenerateConnectionString() {
    ConnectionGenerator testConnectionGenerator = new ConnectionGenerator();
    assertThat(testConnectionGenerator.generateConnectionString()).isNotNull();
  }
}
