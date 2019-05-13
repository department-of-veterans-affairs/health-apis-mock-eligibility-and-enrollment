package gov.va.api.med.mockee;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;

@Component
public class EeResponseRepository {

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

  private String mockEeUsername = "labMockEEUsername";

  private String mockEePassword = "labMockEEPassword";

  private Log log = LogFactory.getLog(getClass());

  /** Get EE Response for corresponding ICN. */
  public String findEeResponse(String icn, String requestName) {
    Assert.notNull(icn, "The icn must not be null");
    String summary = queryDatabase(icn, requestName);
    return summary;
  }

  String queryDatabase(String icn, String eeRequestName) {
    ResultSet resultSet;
    String resultString = "";
    String connectionString =
        "jdbc:sqlserver://"
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
    try (Connection connection = DriverManager.getConnection(connectionString)) {
      PreparedStatement statement =
          connection.prepareStatement(
              "Select * from [OIT_Lighthouse].[synthea].[ee_summaries] where ICN = ? and "
                  + "eeUsername = ? and eePassword = ? and eeRequestName  = ?");
      statement.setString(1, icn);
      statement.setString(2, mockEeUsername);
      statement.setString(3, mockEePassword);
      statement.setString(4, eeRequestName);
      resultSet = statement.executeQuery();
      // always need to do at least one next to get to the data. This should only ever have one
      // response.
      resultSet.next();
      resultString = resultSet.getString("payload");
      resultSet.close();
      statement.close();
      if (!resultString.isEmpty() && resultString.equals("")) {
        resultString = "No entries found.";
      }
    } catch (SQLException e) {
      log.error(e.getMessage());
      resultString = e.getMessage();
    }
    return resultString;
  }
}
