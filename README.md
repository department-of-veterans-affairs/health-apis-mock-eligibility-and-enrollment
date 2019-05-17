# health-apis-mock-eligibility-and-enrollment

A [Spring Boot](https://spring.io/projects/spring-boot) microservice
that emulates the Eligibility and Enrollment (E&E) service.
This can be used to provide synthetic E&E data outside the VA Intranet.

To invoke, post to the `/ws` path. Example request:

```
<SOAP-ENV:Envelope
 xmlns:SOAP-ENV="http://schemas.xmlsoap.org/soap/envelope/"
 xlns:sch="http://jaxws.webservices.esr.med.va.gov/schemas"
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

Mock data is stored in a test environment database.
These application properties must be configured:

```
ee.db-host=blah.lab.gov
ee.db-port=123
ee.db-password=password
ee.db-user=username
ee.database=Awesome_Database
```
