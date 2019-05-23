package gov.va.api.med.mockee;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@Entity
@Builder
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Table(name = "synthea.ee_summaries")
@NoArgsConstructor
@AllArgsConstructor
public class EeResponseEntity {

  @EqualsAndHashCode.Include @Id private String icn;

  private String payload;
}
