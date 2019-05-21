package gov.va.api.med.mockee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import lombok.AllArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;

@AllArgsConstructor(onConstructor = @__({@Autowired}))
@Component
public class EeResponseRepository {

  private ConnectionGenerator connectionGenerator;

  /**
   * Get EE Response for corresponding ICN.
   *
   * @throws SQLException when there's an problem accessing the database
   */
  @SneakyThrows
  public String findEeResponse(String icn) {
    Assert.notNull(icn, "The icn must not be null");
    String summary = queryDatabase(icn);
    return summary;
  }

  @SneakyThrows
  String queryDatabase(String icn) {
    try (Connection connection = connectionGenerator.generateConnection()) {
      try (PreparedStatement statement =
          connection.prepareStatement(
              "Select * from [OIT_Lighthouse].[synthea].[ee_summaries] where ICN = ?")) {
        statement.setString(1, icn);
        try (ResultSet resultSet = statement.executeQuery()) {
          // always need to do at least one next to get to the data. This should only ever have one
          // response.
          resultSet.next();
          return (resultSet.getString("payload"));
        }
      }
    }
  }
}
