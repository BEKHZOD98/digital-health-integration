### Quick Start {#quick-start}

Requests require a JWT access token. `[base]` is the FHIR server base URL; encode the token separator `|` as `%7C`.

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

For POST and PUT, use the complete example JSON from the introduction as the request body. Read the current resource before updating and use its meta.versionId in If-Match.

### Related

- [DHP CapabilityStatement](https://dhp.uz/fhir/core/en/CapabilityStatement-DHPCapabilityStatement.html)
- [UZ Core Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html)
- [Example](Observation-example-blood-donor-category-observation.html)
