package gov.va.api.med.mockee.healthcheck;

import gov.va.api.med.mockee.EeSummaryEndpoint;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.actuate.health.Health;
import org.springframework.boot.actuate.health.HealthIndicator;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.HttpServerErrorException;
import org.springframework.web.client.ResourceAccessException;

@Service
@Slf4j
public class SteelThreadSystemCheck implements HealthIndicator {

  private final EeSummaryEndpoint endpoint;

  private final SteelThreadSystemCheckLedger ledger;

  private final String icn;

  private final int consecutiveFailureThreshold;

  /**
   * 'By hand' all args constructor is required to inject non-string values from our properties.
   *
   * @param consecutiveFailureThreshold - once consecutive failures meets or exceeds, report
   *     failures.
   */
  public SteelThreadSystemCheck(
      @Autowired EeSummaryEndpoint endpoint,
      @Autowired SteelThreadSystemCheckLedger ledger,
      @Value("${health-check.test-icn}") String icn,
      @Value("${health-check.consecutive-failure-threshold}") int consecutiveFailureThreshold) {
    this.endpoint = endpoint;
    this.ledger = ledger;
    this.icn = icn;
    this.consecutiveFailureThreshold = consecutiveFailureThreshold;
  }

  @Override
  @SneakyThrows
  public Health health() {
    if ("skip".equals(icn)) {
      return Health.up().withDetail("skipped", true).build();
    }

    // The count is read and stored for consistency because there is another thread writing it.
    int consecutiveFails = ledger.getConsecutiveFailureCount();

    if (consecutiveFails < consecutiveFailureThreshold) {
      return Health.up().build();
    }

    return Health.down()
        .withDetail(
            "failures",
            String.format(
                "Error threshold of %d hit with %d consecutive failure(s).",
                consecutiveFailureThreshold, consecutiveFails))
        .build();
  }

  /**
   * Asynchronously perform the steel thread read and save the results for health check to use.
   * Frequency is configurable via properties.
   */
  @Scheduled(
    fixedDelayString = "${health-check.frequency-ms}",
    initialDelayString = "${health-check.frequency-ms}"
  )
  @SneakyThrows
  public Health runSteelThreadCheckAsynchronously() {

    if ("skip".equals(icn)) {
      return Health.up().withDetail("skipped", true).build();
    }

    log.info("Performing health check.");
    try {
      endpoint.findEeResponseEntity(icn);
      ledger.recordSuccess();
    } catch (HttpServerErrorException | HttpClientErrorException | ResourceAccessException e) {
      int consecutiveFailures = ledger.recordFailure();
      log.error("Failed to complete health check. Failure count is " + consecutiveFailures);
    } catch (Exception e) {
      int consecutiveFailures = ledger.recordFailure();
      log.error("Failed to complete health check. Failure count is " + consecutiveFailures, e);
      throw e;
    }
    return Health.up().build();
  }
}
