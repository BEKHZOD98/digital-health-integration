### Quick Start {#quick-start}

Common API interactions for this profile. It is built on Observation, so use the Observation endpoint. Requests require a JWT access token - see [Security and authentication](https://dhp.uz/fhir/core/en/api-access.html#security). `[base]` is the [FHIR server base URL](https://dhp.uz/fhir/core/en/api-access.html#endpoints); `|` separates a system from its value and must be URL-encoded as `%7C`.

Read by id, search by donor or by deferral type:

```http
GET [base]/Observation/[id]
GET [base]/Observation?patient=Patient/[id]
GET [base]/Observation?code=https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-type-cs%7Ctmpdf-0001-00001
```

Create using one of the examples; update with the current ETag to protect against concurrent changes:

```http
POST [base]/Observation
Content-Type: application/fhir+json
```

```http
PUT [base]/Observation/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Confirm supported operations and search parameters in the [UZ Core CapabilityStatement](https://dhp.uz/fhir/core/en/CapabilityStatement-DHPCapabilityStatement.html#Observation1-9). The examples use standard FHIR R5 search parameters.

### Related

- [Deferral reasons](ValueSet-donor-deferral-reason-vs.html)
- [Deferral types](ValueSet-donor-deferral-type-vs.html)
- [UZ Core Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html)
- [Must Support](https://dhp.uz/fhir/core/en/must-support.html) &middot; [General guidance](https://dhp.uz/fhir/core/en/general-guidance.html)
