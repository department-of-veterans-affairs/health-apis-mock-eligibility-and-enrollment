package gov.va.api.med.mockee;

import lombok.experimental.UtilityClass;

@UtilityClass
final class Exceptions {

  static final class UnknownPatientIcnException extends RuntimeException {
    UnknownPatientIcnException(String patientIcn) {
      super("Unknown patient ICN: " + patientIcn);
    }
  }
}
