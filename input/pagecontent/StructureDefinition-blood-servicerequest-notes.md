### Quick Start {#quick-start}

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](https://dhp.uz/fhir/core/api-access.html#security). `[base]` is the [FHIR server base URL](https://dhp.uz/fhir/core/api-access.html#endpoints); `|` separates an identifier system from its value and must be URL-encoded as `%7C`.

Read a request:

```http
GET [base]/ServiceRequest/[id]
```

Search by identifier, overall service code or donor:

```http
GET [base]/ServiceRequest?identifier=[system]%7C[value]
GET [base]/ServiceRequest?code-concept=http://snomed.info/sct%7C108252007
GET [base]/ServiceRequest?subject=Patient/example-blood-donor
```

Create a request using one of the examples:

```http
POST [base]/ServiceRequest
Content-Type: application/fhir+json
```

Update using the current version to prevent concurrent changes:

```http
PUT [base]/ServiceRequest/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

See the [CapabilityStatement](https://dhp.uz/fhir/core/CapabilityStatement-DHPCapabilityStatement.html#ServiceRequest1-13) for the full list of supported search parameters.

### Related

- [Blood service forms](forms-volume-08-blood-service.html)
- [Laboratory tests and processing operations](ValueSet-bld-lab-codes-vs.html)
- [Local processing operations](CodeSystem-processing-operation-cs.html)
