package gov.va.api.med.mockee;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Test;

public class EeResponseEntityTest {

  @Test
  public void equalIcnsReturnsTrue() {
    EeResponseEntity queriedResponse =
        EeResponseEntity.builder().icn("1234").payload("expectedPayload").build();
    EeResponseEntity equalResponse =
        EeResponseEntity.builder().icn("1234").payload("expectedPayload").build();
    assertThat(queriedResponse.equals(equalResponse)).isTrue();
  }

  @Test
  public void hashcodeCalculatesCorrectly() {
    EeResponseEntity testResponse =
        EeResponseEntity.builder().icn("1234").payload("testPayload").build();
    int expectedHashcode = 1509501;
    assertThat(testResponse.hashCode()).isEqualTo(expectedHashcode);
  }

  @Test
  public void icnGetterAndSetterTest() {
    EeResponseEntity testResponse = new EeResponseEntity();
    testResponse.icn("1234");
    testResponse.payload("testPayload");
    assertThat(testResponse.icn()).isEqualTo("1234");
    assertThat(testResponse.payload()).isEqualTo("testPayload");
  }

  @Test
  public void nullIcnReturnsFalse() {
    EeResponseEntity nullQueriedResponse = new EeResponseEntity();
    EeResponseEntity testResponse =
        EeResponseEntity.builder().icn("1234").payload("expectedPayload").build();
    assertThat(nullQueriedResponse.equals(testResponse)).isFalse();
  }

  @Test
  public void uneequalIcnsReturnsFalse() {
    EeResponseEntity queriedResponse =
        EeResponseEntity.builder().icn("1234").payload("expectedPayload").build();
    EeResponseEntity unequalResponse =
        EeResponseEntity.builder().icn("4321").payload("unexpectedPayload").build();
    assertThat(queriedResponse.equals(unequalResponse)).isFalse();
  }
}
