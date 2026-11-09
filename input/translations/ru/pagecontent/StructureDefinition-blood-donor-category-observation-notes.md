> Машинный перевод; требуется проверка специалистом.

### Быстрый старт {#quick-start}

Для запросов нужен JWT. `[base]` обозначает базовый URL FHIR-сервера; разделитель `|` кодируется как `%7C`.

```http
GET [base]/Observation/[id]
GET [base]/Observation?patient=Patient/[id]&code=http://snomed.info/sct%7C105470007
GET [base]/Observation?encounter=Encounter/[id]

POST [base]/Observation
Content-Type: application/fhir+json

PUT [base]/Observation/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Для POST и PUT используйте полный JSON из вводной части как тело запроса. Перед обновлением прочитайте ресурс и подставьте его meta.versionId в If-Match.

### Связанные материалы

- [DHP CapabilityStatement](https://dhp.uz/fhir/core/en/CapabilityStatement-DHPCapabilityStatement.html)
- [UZ Core Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html)
- [Example](Observation-example-blood-donor-category-observation.html)
