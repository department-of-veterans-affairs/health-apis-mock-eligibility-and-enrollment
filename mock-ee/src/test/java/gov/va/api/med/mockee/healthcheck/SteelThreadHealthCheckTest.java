package gov.va.api.med.mockee.healthcheck;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import gov.va.api.med.mockee.EeResponseEntity;
import gov.va.api.med.mockee.EeSummaryEndpoint;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.springframework.boot.actuate.health.Health;
import org.springframework.boot.actuate.health.Status;
import org.springframework.web.client.ResourceAccessException;

public class SteelThreadHealthCheckTest {

  private final int failureThresholdForTests = 5;

  @Mock EeSummaryEndpoint endpoint;

  @Mock SteelThreadSystemCheckLedger ledger;

  @Before
  public void _init() {
    MockitoAnnotations.initMocks(this);
  }

  @Test
  public void healthCheckHappyPath() {
    SteelThreadSystemCheck test =
        new SteelThreadSystemCheck(endpoint, ledger, "123", failureThresholdForTests);
    // We'll return exactly the threshold to check the boundary case.
    when(ledger.getConsecutiveFailureCount()).thenReturn(failureThresholdForTests - 1);
    assertThat(test.health().getStatus()).isEqualTo(Status.UP);
  }

  @Test
  public void healthCheckSadPathWhenFailureThresholdExceeded() {
    SteelThreadSystemCheck test =
        new SteelThreadSystemCheck(endpoint, ledger, "123", failureThresholdForTests);
    when(ledger.getConsecutiveFailureCount()).thenReturn(failureThresholdForTests);
    assertThat(test.health().getStatus()).isEqualTo(Status.DOWN);
  }

  @Test
  public void healthCheckSkip() {
    SteelThreadSystemCheck test =
        new SteelThreadSystemCheck(endpoint, ledger, "skip", failureThresholdForTests);
    // Exceed threshold to make sure we're actually skipping.
    when(ledger.getConsecutiveFailureCount()).thenReturn(failureThresholdForTests + 100);
    assertThat(test.health().getStatus()).isEqualTo(Status.UP);
  }

  /** Make sure that when the search fails, the failure event is getting kicked in ledger. */
  @Test
  public void runSteelThreadGenericExceptionPath() {
    SteelThreadSystemCheck test =
        new SteelThreadSystemCheck(endpoint, ledger, "123", failureThresholdForTests);
    // Just need to thrown any unchecked exception to make sure that we hit the failure reporting.
    when(endpoint.findEeResponseEntity(Mockito.any()))
        .thenThrow(new IllegalArgumentException("foo"));
    when(ledger.recordFailure()).thenReturn(failureThresholdForTests);
    try {
      test.runSteelThreadCheckAsynchronously();
    } catch (Exception e) {
      // Do nothing. Want to make sure that the failure is recorded and we'll check that below.
    }
    verify(ledger, times(1)).recordFailure();
  }

  /** Make sure that when the search succeeds, the happy event is getting kicked in ledger. */
  @Test
  public void runSteelThreadHappyPath() {
    String expectedEeSummaryResponse =
        "<getEESummaryResponse xmlns=\"http://jaxws.webservices.esr.med.va.gov/schemas\">\\n"
            + "            <eesVersion>5.6.0.01001</eesVersion>\\n"
            + "            <summary>\\n"
            + "                <communityCareEligibilityInfo>\\n"
            + "                    <eligibilities>\\n"
            + "                        <eligibility>\\n"
            + "                            <vceDescription>Ineligible</vceDescription>\\n"
            + "                             <vceEffectiveDate>1946-08-23T16:01:01.745-04:00</vceEffectiveDate>\\n"
            + "                            <vceCode>X</vceCode>\\n"
            + "                        </eligibility>\\n"
            + "                    </eligibilities>\\n"
            + "                </communityCareEligibilityInfo>\\n"
            + "            </summary>\\n"
            + "            <invocationDate>2019-05-01T07:56:02</invocationDate>\\n"
            + "        </getEESummaryResponse>";
    SteelThreadSystemCheck test =
        new SteelThreadSystemCheck(endpoint, ledger, "123", failureThresholdForTests);
    when(endpoint.findEeResponseEntity(Mockito.any()))
        .thenReturn(EeResponseEntity.builder().payload(expectedEeSummaryResponse).build());
    test.runSteelThreadCheckAsynchronously();
    verify(ledger, times(1)).recordSuccess();
  }

  @Test
  public void runSteelThreadSkipPath() {
    SteelThreadSystemCheck test =
        new SteelThreadSystemCheck(endpoint, ledger, "skip", failureThresholdForTests);
    assertThat(test.runSteelThreadCheckAsynchronously())
        .isEqualTo(Health.up().withDetail("skipped", true).build());
  }

  @Test
  public void runSteelThreadSpecificExceptionPath() {
    SteelThreadSystemCheck test =
        new SteelThreadSystemCheck(endpoint, ledger, "123", failureThresholdForTests);
    when(endpoint.findEeResponseEntity(Mockito.any()))
        .thenThrow(new ResourceAccessException("foo"));
    when(ledger.recordFailure()).thenReturn(failureThresholdForTests);
    try {
      test.runSteelThreadCheckAsynchronously();
    } catch (ResourceAccessException rae) {
      // Do nothing. Want to make sure that the failure is recorded and we'll check that below.
    }
    verify(ledger, times(1)).recordFailure();
  }
}
