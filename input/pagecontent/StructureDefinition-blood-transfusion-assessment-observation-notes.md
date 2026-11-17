### Quick Start {#quick-start}

Common API interactions for this profile. It is built on Observation, so use the Observation endpoint. Requests require a JWT access token - see [Security and authentication](https://dhp.uz/fhir/core/en/api-access.html#security). `[base]` is the [FHIR server base URL](https://dhp.uz/fhir/core/en/api-access.html#endpoints); `|` separates a system from its value and must be URL-encoded as `%7C`.

Read by id or search by recipient and assessment code:

```http
GET [base]/Observation/[id]
GET [base]/Observation?subject=Patient/example-transfusion-assessment-recipient
GET [base]/Observation?code=http://snomed.info/sct%7C252314007
```

Create using the complete example. To correct results, update the existing resource, retain the actual assessment time and use an appropriate status such as amended. Supply the current ETag to protect against concurrent changes.

```http
POST [base]/Observation
Content-Type: application/fhir+json
```

```http
PUT [base]/Observation/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Confirm supported operations and search parameters in the [UZ Core CapabilityStatement](https://dhp.uz/fhir/core/en/CapabilityStatement-DHPCapabilityStatement.html). These examples use standard FHIR R5 search parameters.

### Related

- [Blood transfusion assessment component](ValueSet-blood-transfusion-assessment-vs.html)
- [Blood transfusion compatibility result](ValueSet-blood-transfusion-value-vs.html)
- [Blood transfusion history category](ValueSet-blood-transfusion-history-vs.html)
- [Obstetric history category](ValueSet-obstetric-history-vs.html)
- [Biological transfusion test result](ValueSet-specimen-res-vs.html)
- [Blood Service](blood-service.html) &middot; [Blood service forms](forms-volume-08-blood-service.html)
- [UZ Core Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html)
- [Must Support](https://dhp.uz/fhir/core/en/must-support.html) &middot; [General guidance](https://dhp.uz/fhir/core/en/general-guidance.html)
