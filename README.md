# health-apis-mock-eligibility-and-enrollment

A [Spring Boot](https://spring.io/projects/spring-boot) microservice
that emulates the Eligibility and Enrollment (E&E) service.
This can be used to provide synthetic E&E data outside the VA Intranet.

Mock data is managed [here](mock-ee/src/main/resources/data).

## Local Development
Refer to [health-apis-parent](https://github.com/department-of-veterans-affairs/health-apis-parent)
for basic environment setup. (Java, Maven, Docker, etc.)
Execute `mvn clean install` to build all of the modules.

Run locally:

```
java -jar mock-ee/target/mock-ee-${VERSION}.jar
```

View WSDL: 

```
curl http://localhost:9090/v0/ws/eeSummary.wsdl
```

Sample request:

```
curl -X POST -H "Content-Type: text/xml" -d @request.xml http://localhost:9090/v0/ws

request.xml:
<SOAP-ENV:Envelope
 xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/"
 xmlns:sch="http://jaxws.webservices.esr.med.va.gov/schemas"
 xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"
 xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">
  <SOAP-ENV:Header>
    <wsse:Security SOAP-ENV:mustUnderstand="1">
      <wsse:UsernameToken wsu:Id="XWSSGID-1281117217796-43574433">
        <wsse:Username>username</wsse:Username>
        <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">password</wsse:Password>
      </wsse:UsernameToken>
    </wsse:Security>
  </SOAP-ENV:Header>
  <SOAP-ENV:Body>
    <sch:getEESummaryRequest>
      <sch:key>12345V67890</sch:key>
      <sch:requestName>CommunityCareInfo</sch:requestName>
    </sch:getEESummaryRequest>
  </SOAP-ENV:Body>
</SOAP-ENV:Envelope>
```
