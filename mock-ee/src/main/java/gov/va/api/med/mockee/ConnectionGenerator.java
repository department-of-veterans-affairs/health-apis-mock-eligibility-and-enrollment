package gov.va.api.med.mockee;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class ConnectionGenerator {

  @Value("${ee.db-host}")
  private String dbHost;

  @Value("${ee.db-port}")
  private String dbPort;

  @Value("${ee.db-password}")
  private String dbPassword;

  @Value("${ee.db-user}")
  private String dbUser;

  @Value("${ee.database}")
  private String database;

  Connection generateConnection() throws SQLException {
    return DriverManager.getConnection(generateConnectionString());
  }

  final String generateConnectionString() {
    return "jdbc:sqlserver://"
        + dbHost
        + ":"
        + dbPort
        + ";"
        + "database="
        + database
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
