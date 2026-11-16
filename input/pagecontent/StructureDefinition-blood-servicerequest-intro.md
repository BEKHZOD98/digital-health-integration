Blood ServiceRequest orders one donor laboratory test or panel, or one blood component processing operation. It builds on [UZ Core ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html). Create separate requests for separate services; group requests for the same donation using `requisition`.

### Mandatory and Must Support elements

Each request requires `status`, `intent` = `order`, `subject` and exactly one coding in `code.concept`. Bind the requested service to [BloodLabCodesVS](ValueSet-blood-lab-codes-vs.html). Laboratory codes are candidates pending confirmation of methods and specimens.

For laboratory testing, `subject` references UZ Core Patient; use `category` for the laboratory, `encounter` for the donation visit and `specimen` for the samples. For stock processing, `subject` references UZ Core Location and `focus` identifies the UZ Core BiologicallyDerivedProduct. The performer and service location remain in `performer` and `location`.

Optional `identifier[orderNumber]` uses the fixed system `https://dhp.uz/fhir/core/sid/doc/uz/blood-service-request` and requires a value. Its [NamingSystem](NamingSystem-blood-service-request-number-system.html) defines the namespace; `assigner` identifies the issuing organization. Optional `requisition` uses the existing UZ Core donation number system `https://dhp.uz/fhir/core/sid/prd/uz/blood/donation` and requires a value. Reuse that donation number for related tests and component processing requests.

Support the inherited Must Support elements, including status, category, priority, code, subject, encounter, timing, requester, performer, location, reason, specimens and supporting information, together with this profile's identifier slice, focus and note.

### Laboratory and processing examples

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"
    ]
  },
  "status": "active",
  "intent": "order",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/blood-service-request",
      "value": "XON-SR-2026-0001",
      "assigner": {
        "reference": "Organization/xonobod-medical-association"
      }
    }
  ],
  "requisition": {
    "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation",
    "value": "DON-2025-0088231"
  },
  "code": {
    "concept": {
      "coding": [
        {
          "system": "http://loinc.org",
          "code": "1975-2"
        }
      ]
    }
  },
  "subject": {
    "reference": "Patient/example-salim"
  },
  "specimen": [
    {
      "reference": "Specimen/example-blood-whole-blood-specimen"
    }
  ]
}
```

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"
    ]
  },
  "status": "active",
  "intent": "order",
  "requisition": {
    "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation",
    "value": "DON-2025-0088231"
  },
  "code": {
    "concept": {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "58059003",
          "display": "Washing RBC for transfusion"
        }
      ]
    }
  },
  "subject": {
    "reference": "Location/example-blood-service-laboratory"
  },
  "focus": [
    {
      "reference": "BiologicallyDerivedProduct/example-blood-component-product"
    }
  ]
}
```

The bilirubin and ALT tests are separate requests with the same donation number. Washing, freezing and thawing use SNOMED CT `58059003`, `71643009` and `35382002`. Irradiation uses `bcproc-0001-00002` from [BloodComponentProcessingCS](CodeSystem-blood-component-processing-cs.html). Create a separate request for each operation and mark it completed when that operation is confirmed.

[Laboratory example](ServiceRequest-example-blood-laboratory-order.html) · [Irradiation example](ServiceRequest-example-blood-component-irradiation-order.html) · [Blood Management](blood-management.html)
