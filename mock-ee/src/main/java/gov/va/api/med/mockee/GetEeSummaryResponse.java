package gov.va.api.med.mockee;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlSchemaType;
import javax.xml.bind.annotation.XmlType;
import javax.xml.datatype.XMLGregorianCalendar;

/**
 * Java class for getEESummaryResponse complex type.
 *
 * <p>The following schema fragment specifies the expected content contained within this class.
 *
 * <pre>
 * &lt;complexType name="getEESummaryResponse">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;all>
 *         &lt;element name="summary" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="eesVersion" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="invocationDate" type="{http://www.w3.org/2001/XMLSchema}dateTime" minOccurs="0"/>
 *         &lt;element name="noDataMessage" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/all>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(
  name = "getEESummaryResponse",
  propOrder = {}
)
public class GetEeSummaryResponse {

  protected String summary;

  protected String eesVersion;

  @XmlSchemaType(name = "dateTime")
  protected XMLGregorianCalendar invocationDate;

  protected String noDataMessage;

  /**
   * Gets the value of the eesVersion property.
   *
   * @return possible object is {@link String }
   */
  public String getEesVersion() {
    return eesVersion;
  }

  /**
   * Sets the value of the eesVersion property.
   *
   * @param value allowed object is {@link String }
   */
  public void setEesVersion(String value) {
    this.eesVersion = value;
  }

  /**
   * Gets the value of the invocationDate property.
   *
   * @return possible object is {@link XMLGregorianCalendar }
   */
  public XMLGregorianCalendar getInvocationDate() {
    return invocationDate;
  }

  /**
   * Sets the value of the invocationDate property.
   *
   * @param value allowed object is {@link XMLGregorianCalendar }
   */
  public void setInvocationDate(XMLGregorianCalendar value) {
    this.invocationDate = value;
  }

  /**
   * Gets the value of the noDataMessage property.
   *
   * @return possible object is {@link String }
   */
  public String getNoDataMessage() {
    return noDataMessage;
  }

  /**
   * Sets the value of the noDataMessage property.
   *
   * @param value allowed object is {@link String }
   */
  public void setNoDataMessage(String value) {
    this.noDataMessage = value;
  }

  /**
   * Gets the value of the summary property.
   *
   * @return possible object is {@link String }
   */
  public String getSummary() {
    return summary;
  }

  /**
   * Sets the value of the summary property.
   *
   * @param value allowed object is {@link String }
   */
  public void setSummary(String value) {
    this.summary = value;
  }
}
