# health-apis-mock-eligibility-and-enrollment

A [Spring Boot](https://spring.io/projects/spring-boot) microservice
that emulates the Eligibility and Enrollment (E&E) service.
This can be used to provide synthetic E&E data outside the VA Intranet.

To invoke, post to the `/v0/ws` path. Example request:

```
<SOAP-ENV:Envelope
 xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/"
 xmlns:sch="http://jaxws.webservices.esr.med.va.gov/schemas"
 xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"
 xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">
  <SOAP-ENV:Header>
    <wsse:Security SOAP-ENV:mustUnderstand="1">
      <wsse:UsernameToken wsu:Id="XWSSGID-1281117217796-43574433">
        <wsse:Username>MockEEUsername</wsse:Username>
        <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">MockEEPassword</wsse:Password>
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

Mock data is stored in XML files within the repository that are loaded into an embedded H2 database upon startup.
These application properties must be configured:

```
ee.header.password=MockEEPassword
ee.header.username=MockEEUsername
```
