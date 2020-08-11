package gov.va.api.health.mockee;

import gov.va.med.esr.webservices.jaxws.schemas.GetEESummaryResponse;
import java.io.StringReader;
import java.io.StringWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.List;
import java.util.stream.Collectors;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.Marshaller;
import javax.xml.transform.stream.StreamSource;
import lombok.SneakyThrows;

final class Formatter {
  @SneakyThrows
  public static void main(String[] args) {
    JAXBContext jaxbContext = JAXBContext.newInstance(GetEESummaryResponse.class);

    List<Path> paths =
        Files.find(Paths.get("src/main/resources/data"), 1, (p, a) -> true)
            .filter(p -> p.toFile().getName().endsWith("xml"))
            .collect(Collectors.toList());

    for (Path path : paths) {
      String payload = Files.readString(path);
      JAXBElement<GetEESummaryResponse> elem =
          jaxbContext
              .createUnmarshaller()
              .unmarshal(new StreamSource(new StringReader(payload)), GetEESummaryResponse.class);

      StringWriter newPayloadWriter = new StringWriter();
      Marshaller marshaller = jaxbContext.createMarshaller();
      marshaller.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, Boolean.TRUE);
      marshaller.marshal(elem, newPayloadWriter);

      String newPayload = newPayloadWriter.toString();
      Files.writeString(path, newPayload, StandardOpenOption.TRUNCATE_EXISTING);
    }
  }
}
