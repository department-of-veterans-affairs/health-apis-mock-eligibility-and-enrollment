package gov.va.api.med.mockee;

import java.sql.Connection;
import java.sql.DriverManager;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NoArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Builder
@Component
@AllArgsConstructor
@NoArgsConstructor
public class ConnectionGenerator {

  @Value("${ee.db-host}")
  private String dbHost;

  @Value("${ee.db-port}")
  private String dbPort;

  @Value("${ee.db-password}")
  private String dbPassword;

  @Value("${ee.db-user}")
  private String dbUser;

  @SneakyThrows
  Connection generateConnection() {
    return DriverManager.getConnection(generateConnectionString());
  }

  String generateConnectionString() {
    return "jdbc:sqlserver://"
        + dbHost
        + ":"
        + dbPort
        + ";"
        + "database=OIT_Lighthouse"
        + ";"
        + "user="
        + dbUser
        + ";"
        + "password="
        + dbPassword
        + ";"
        + "encrypt=true;"
        + "trustServerCertificate=true;"
        + "loginTimeout=30";
  }
}
