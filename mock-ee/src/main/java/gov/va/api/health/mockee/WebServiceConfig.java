package gov.va.api.health.mockee;

import static com.google.common.base.Preconditions.checkState;

import java.io.StringWriter;
import java.util.List;
import java.util.Properties;
import javax.xml.XMLConstants;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import lombok.SneakyThrows;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.InputStreamResource;
import org.springframework.ws.config.annotation.EnableWs;
import org.springframework.ws.config.annotation.WsConfigurerAdapter;
import org.springframework.ws.server.EndpointInterceptor;
import org.springframework.ws.soap.security.wss4j2.Wss4jSecurityInterceptor;
import org.springframework.ws.soap.security.wss4j2.callback.SimplePasswordValidationCallbackHandler;
import org.springframework.ws.transport.http.MessageDispatcherServlet;
import org.springframework.ws.wsdl.wsdl11.DefaultWsdl11Definition;
import org.springframework.xml.xsd.SimpleXsdSchema;
import org.springframework.xml.xsd.XsdSchema;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

@EnableWs
@Configuration
public class WebServiceConfig extends WsConfigurerAdapter {
  public static final String MOCK_EE_VERSION = "/v0";

  @Value("${ee.header.username}")
  private String eeHeaderUsername;

  @Value("${ee.header.password}")
  private String eeHeaderPassword;

  @Override
  public void addInterceptors(List<EndpointInterceptor> interceptors) {
    interceptors.add(securityInterceptor());
  }

  /** Default WSDL. */
  @Bean(name = "eeSummary")
  public DefaultWsdl11Definition defaultWsdl11Definition(XsdSchema eeSchema) {
    DefaultWsdl11Definition wsdl11Definition = new DefaultWsdl11Definition();
    wsdl11Definition.setPortTypeName("eeSummaryPort");
    wsdl11Definition.setLocationUri(MOCK_EE_VERSION + "/ws");
    wsdl11Definition.setTargetNamespace("http://jaxws.webservices.esr.med.va.gov/schemas");
    wsdl11Definition.setSchema(eeSchema);
    return wsdl11Definition;
  }

  /** Extract XSD schema from WSDL. */
  @Bean
  @SneakyThrows
  public XsdSchema eeSchema() {
    DocumentBuilderFactory dbFac = DocumentBuilderFactory.newInstance();
    dbFac.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true);
    dbFac.setFeature("http://xml.org/sax/features/external-general-entities", false);
    dbFac.setFeature("http://xml.org/sax/features/external-parameter-entities", false);

    Document wsdlDoc =
        dbFac
            .newDocumentBuilder()
            .parse(new ClassPathResource("META-INF/wsdl/eeSummary.wsdl").getInputStream());

    NodeList schemaNodes = wsdlDoc.getDocumentElement().getElementsByTagName("xs:schema");
    checkState(schemaNodes.getLength() == 1);
    Node schemaNode = schemaNodes.item(0);
    TransformerFactory transFac = TransformerFactory.newInstance();
    transFac.setAttribute(XMLConstants.ACCESS_EXTERNAL_DTD, "");
    transFac.setAttribute(XMLConstants.ACCESS_EXTERNAL_STYLESHEET, "");
    transFac.setFeature(XMLConstants.FEATURE_SECURE_PROCESSING, true);
    Transformer transformer = transFac.newTransformer();
    try (StringWriter writer = new StringWriter()) {
      StreamResult result = new StreamResult(writer);
      transformer.transform(new DOMSource(schemaNode), result);
      String xsd = writer.toString();
      return new SimpleXsdSchema(new InputStreamResource(IOUtils.toInputStream(xsd, "UTF-8")));
    }
  }

  /** Set up servlet. */
  @Bean
  public ServletRegistrationBean<MessageDispatcherServlet> messageDispatcherServlet(
      ApplicationContext applicationContext) {
    MessageDispatcherServlet servlet = new MessageDispatcherServlet();
    servlet.setApplicationContext(applicationContext);
    servlet.setTransformWsdlLocations(true);
    return new ServletRegistrationBean<MessageDispatcherServlet>(
        servlet, MOCK_EE_VERSION + "/ws/*");
  }

  /** Validation for user/password. */
  @Bean
  public SimplePasswordValidationCallbackHandler securityCallbackHandler() {
    SimplePasswordValidationCallbackHandler callbackHandler =
        new SimplePasswordValidationCallbackHandler();
    Properties users = new Properties();
    users.setProperty(eeHeaderUsername, eeHeaderPassword);
    callbackHandler.setUsers(users);
    return callbackHandler;
  }

  /** Security interceptor. */
  @Bean
  public Wss4jSecurityInterceptor securityInterceptor() {
    Wss4jSecurityInterceptor securityInterceptor = new Wss4jSecurityInterceptor();
    securityInterceptor.setValidationActions("UsernameToken");
    securityInterceptor.setValidationCallbackHandler(securityCallbackHandler());
    return securityInterceptor;
  }
}
