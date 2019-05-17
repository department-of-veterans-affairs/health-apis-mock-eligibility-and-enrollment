# health-apis-mock-eligibility-and-enrollment

A [Spring Boot](https://spring.io/projects/spring-boot) microservice
that emulates the Eligibility and Enrollment (E&E) service.
This is intended to provide synthetic E&E data outside the VA Intranet.

Mock data is stored in a test environment database.
These application properties must be configured:

```
ee.db-host=blah.lab.gov
ee.db-port=123
ee.db-password=password
ee.db-user=username
ee.database=Awesome_Database
```
