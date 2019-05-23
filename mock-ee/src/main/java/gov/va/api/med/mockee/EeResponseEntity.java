package gov.va.api.med.mockee;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

@Data
@Entity
@Builder
@Table(name = "synthea.ee_summaries")
@NoArgsConstructor
@AllArgsConstructor
@Component
public class EeResponseEntity {

  @Id private String icn;

  private String payload;

  @Override
  public boolean equals(Object obj) {
    if (this == obj) {
      return true;
    }
    if (obj == null) {
      return false;
    }
    if (getClass() != obj.getClass()) {
      return false;
    }
    EeResponseEntity other = (EeResponseEntity) obj;
    if (icn == null) {
      if (other.icn != null) {
        return false;
      }
    } else if (!icn.equals(other.icn)) {
      return false;
    }
    return true;
  }

  @Override
  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + ((icn == null) ? 0 : icn.hashCode());
    return result;
  }
}
