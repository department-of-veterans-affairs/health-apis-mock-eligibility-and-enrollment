package gov.va.api.med.mockee;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

import org.junit.Test;

public class ConnectionGeneratorTest {

  @Test
  public void verifyGenerateConnectionString() {

    ConnectionGenerator testConnectionGenerator =
        ConnectionGenerator.builder()
            .dbHost("testHost")
            .dbPort("testPort")
            .dbUser("testUser")
            .dbPassword("testPassword")
            .build();

    String expectedConnectionString =
        "jdbc:sqlserver://"
            + "testHost"
            + ":"
            + "testPort"
            + ";"
            + "database="
            + "OIT_Lighthouse"
            + ";"
            + "user="
            + "testUser"
            + ";"
            + "password="
            + "testPassword"
            + ";"
            + "encrypt=true;"
            + "trustServerCertificate=true;"
            + "loginTimeout=30";

    ConnectionGenerator mockConnectionGenerator = mock(ConnectionGenerator.class);
    when(mockConnectionGenerator.generateConnectionString()).thenReturn(expectedConnectionString);

    assertThat(testConnectionGenerator.generateConnectionString())
        .isEqualTo(mockConnectionGenerator.generateConnectionString());
  }
}
