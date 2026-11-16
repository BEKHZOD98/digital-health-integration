### Quick Start

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](https://dhp.uz/fhir/core/en/api-access.html#security). `[base]` is the [FHIR server base URL](https://dhp.uz/fhir/core/en/api-access.html#endpoints); `|` separates a code system from its value and must be URL-encoded as `%7C`.

**Read a request by server id, and its earlier versions**

```
GET [base]/ServiceRequest/[id]
GET [base]/ServiceRequest/[id]/_history
```

**Search**

```
GET [base]/ServiceRequest?identifier=[system]%7C[value]
GET [base]/ServiceRequest?requisition=[system]%7C[value]
GET [base]/ServiceRequest?code-concept=http://snomed.info/sct%7C108252007&patient=Patient/[id]
GET [base]/ServiceRequest?code-concept=http://snomed.info/sct%7C64108007&status=active
GET [base]/ServiceRequest?encounter=Encounter/[id]
GET [base]/ServiceRequest?patient=Patient/[id]&status=active
GET [base]/ServiceRequest?specimen=Specimen/[id]
```

**Fetch a laboratory order with its results**

```
GET [base]/ServiceRequest?_id=[id]&_revinclude=DiagnosticReport:based-on
```

**Create a request**

```
POST [base]/ServiceRequest
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest" ] },
  "status": "active",
  "intent": "order",
  "code": { "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "108252007" } ] } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "authoredOn": "2026-11-10T09:05:00+05:00",
  "orderDetail": [ { "parameter": [ { "code": { "coding": [ ... ] }, "valueBoolean": true } ] } ],
  ...
}
```

**Update an existing request** (e.g. set `status` to `completed` once every processing operation is confirmed)

```
PUT [base]/ServiceRequest/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "ServiceRequest",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest" ] },
  "status": "completed",
  ...
}
```

See the [CapabilityStatement](https://dhp.uz/fhir/core/en/CapabilityStatement-DHPCapabilityStatement.html#ServiceRequest1-13) for the full list of supported search parameters.

### Related

- [UZ Core ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core Specimen](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-specimen.html) &middot; [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-biologically-derived-product.html)
- [Blood Management](blood-management.html) &middot; [Blood service forms](forms-volume-08-blood-service.html) &middot; [Laboratory tests and processing operations](ValueSet-bld-lab-codes-vs.html) &middot; [Processing operations](CodeSystem-processing-operation-cs.html)
- [Laboratory workflow](https://dhp.uz/fhir/core/en/workflow-lab.html) &middot; [Must Support](https://dhp.uz/fhir/core/en/must-support.html) &middot; [General guidance](https://dhp.uz/fhir/core/en/general-guidance.html)
