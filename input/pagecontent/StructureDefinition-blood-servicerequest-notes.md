### Quick Start

Search by the order number, donation number or requested service. Encode the system/value separator as `%7C`. Authentication and supported parameters follow [UZ Core API guidance](https://dhp.uz/fhir/core/en/api-access.html).

```http
GET [base]/ServiceRequest/[id]
GET [base]/ServiceRequest?identifier=https://dhp.uz/fhir/core/sid/doc/uz/blood-service-request%7CXON-SR-2026-0001
GET [base]/ServiceRequest?requisition=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation%7CDON-2025-0088231
GET [base]/ServiceRequest?code-concept=http://loinc.org%7C1975-2
GET [base]/ServiceRequest?subject=Location/example-blood-service-laboratory
```

The bilirubin and ALT tests are separate requests with the same donation number. Washing, freezing and thawing use SNOMED CT `58059003`, `71643009` and `35382002`. Irradiation uses `bcproc-0001-00002` from [BloodComponentProcessingCS](CodeSystem-blood-component-processing-cs.html). Create a separate request for each operation and mark it completed when that operation is confirmed.
