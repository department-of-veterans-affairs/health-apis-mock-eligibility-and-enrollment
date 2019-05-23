package gov.va.api.med.mockee;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.Test;

public class EeResponseEntityTest {

  @Test
  public void bothIcnsAreNull() {
    EeResponseEntity nullQueriedResponse =
        EeResponseEntity.builder().payload("queryPayload").build();
    EeResponseEntity nullTestResponse = EeResponseEntity.builder().payload("testPayload").build();
    assertThat(nullQueriedResponse.equals(nullTestResponse)).isTrue();
  }

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
    int expectedHashcode = 1509473;
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
  public void nullIcnHashcodeCalculatesCorrectly() {
    EeResponseEntity testResponse = EeResponseEntity.builder().payload("testPayload").build();
    int expectedHashcode = 31;
    assertThat(testResponse.hashCode()).isEqualTo(expectedHashcode);
  }

  @Test
  public void nullIcnReturnsFalse() {
    EeResponseEntity nullQueriedResponse = new EeResponseEntity();
    EeResponseEntity testResponse =
        EeResponseEntity.builder().icn("1234").payload("expectedPayload").build();
    assertThat(nullQueriedResponse.equals(testResponse)).isFalse();
  }

  @Test
  public void nullResponseReturnsFalse() {
    EeResponseEntity queriedResponse =
        EeResponseEntity.builder().icn("1234").payload("testPayload").build();
    EeResponseEntity testResponse = null;
    assertThat(queriedResponse.equals(testResponse)).isFalse();
  }

  @Test
  public void objsAreTheSameReturnsTrue() {
    EeResponseEntity queriedResponse =
        EeResponseEntity.builder().icn("1234").payload("testPayload").build();
    EeResponseEntity testResponse = queriedResponse;
    assertThat(queriedResponse.equals(testResponse)).isTrue();
  }

  @Test
  public void uneequalIcnsReturnsFalse() {
    EeResponseEntity queriedResponse =
        EeResponseEntity.builder().icn("1234").payload("expectedPayload").build();
    EeResponseEntity unequalResponse =
        EeResponseEntity.builder().icn("4321").payload("unexpectedPayload").build();
    assertThat(queriedResponse.equals(unequalResponse)).isFalse();
  }

  @Test
  public void unequalClassReturnsFalse() {
    EeResponseEntity queriedResponse =
        EeResponseEntity.builder().icn("1234").payload("testPayload").build();
    String testResponse = "testString";
    assertThat(queriedResponse.equals(testResponse)).isFalse();
  }
}
