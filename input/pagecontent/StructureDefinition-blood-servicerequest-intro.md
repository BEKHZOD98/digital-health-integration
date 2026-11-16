Blood ServiceRequest is a request from the blood service for a donor's laboratory tests or for secondary processing of a blood component (washing, irradiation, freezing or thawing). It builds on [UZ Core ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html) and records the request only, not what was done. A laboratory order names the donor [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html), the donation [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html) and the donor [Specimens](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-specimen.html) to test; a processing request points to the blood component's [BiologicallyDerivedProduct](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-biologically-derived-product.html). The selected tests or operations are listed in `orderDetail`, so one request carries every selection for one laboratory or one component. [Blood Management](blood-management.html) shows where these requests fit in the blood service, and [Blood service forms](forms-volume-08-blood-service.html) describes the source forms.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](https://dhp.uz/fhir/core/en/must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each Blood ServiceRequest Must Have

Each request must have a `status`, the intent `order` and the donor (`subject`). Each order detail parameter must have the selected test or operation in `code` and `valueBoolean` set to `true`. The base resource also requires `code` whenever `orderDetail` is present.

#### Each Blood ServiceRequest Must Support

- the order or processing request number (`identifier`), and a shared number that groups the laboratory orders of one donation (`requisition`), each with its `system`;
- the status of the request (draft / active / on-hold / revoked / completed / entered-in-error / unknown);
- the receiving laboratory (`category`), such as haematology, biochemistry or immunology;
- the urgency (`priority`: routine / urgent / asap / stat) and whether the service must not be done (`doNotPerform`);
- the overall service requested (`code`), such as a laboratory procedure or blood unit processing;
- the donor (`subject`) and the donation visit (`encounter`);
- when the service should happen (`occurrence[x]`) and when the request was issued (`authoredOn`);
- who issued it (`requester`), who should perform it (`performer`) and where (`location`);
- why the service is needed (`reason`), how it is paid for (the payment type extension) and the insurance coverage (`insurance`);
- the donor specimens to test (`specimen`) and the blood component to process (`focus`);
- other information that supports the request (`supportingInfo`), comments (`note`) and instructions for the donor (`patientInstruction`);
- the selected laboratory tests or processing operations (`orderDetail.parameter.code`, each with `valueBoolean` `true`).

### Building the JSON, step by step

The examples below go from the smallest valid request to a component processing request. Each one validates against this profile. The complete reference instances are the [biochemistry](ServiceRequest-example-blood-laboratory-order.html), [immunology](ServiceRequest-example-blood-immunology-laboratory-order.html), [transfusion-transmissible infections](ServiceRequest-example-blood-transfusion-infections-laboratory-order.html), [bacteriology](ServiceRequest-example-blood-bacteriology-laboratory-order.html) and [haematology](ServiceRequest-example-blood-hematology-laboratory-order.html) laboratory orders and the [component processing](ServiceRequest-example-blood-component-processing-order.html) order.

#### The smallest Blood ServiceRequest

The base resource requires `status`, `intent` and `subject`, and every resource names its profile in `meta.profile`. This much passes validation:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"] },
  "status": "active",
  "intent": "order",
  "subject": { "reference": "Patient/example-salim" }
}
```

The profile fixes `intent` to `order` and limits `subject` to a [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html): the donor. A request is only useful once it says what to do, so the next examples add the selected tests or operations.

#### A donor laboratory order

A donor physician orders bilirubin and ALT tests from the biochemistry laboratory on the donor's whole blood sample during the donation visit:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"] },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-categories-cs",
          "code": "lab-category-04",
          "display": "Biokimyo"
        }
      ]
    }
  ],
  "code": {
    "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "108252007" } ] }
  },
  "subject": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-blood-donation-encounter" },
  "authoredOn": "2026-11-10T09:05:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "specimen": [ { "reference": "Specimen/example-blood-whole-blood-specimen" } ],
  "orderDetail": [
    {
      "parameter": [
        {
          "code": { "coding": [ { "system": "http://loinc.org", "code": "1975-2" } ] },
          "valueBoolean": true
        },
        {
          "code": { "coding": [ { "system": "http://loinc.org", "code": "1742-6" } ] },
          "valueBoolean": true
        }
      ]
    }
  ]
}
```

Create one request for each receiving laboratory: four for a reserve donor and five for a regular donor. `category` names the laboratory with a code from the national laboratory sections, which have Uzbek displays, so the resource sets `language` to `uz`. `code` is a `CodeableReference`, so the coding sits under `concept`; SNOMED CT `108252007` Laboratory procedure is the overall service. Each selected test is one `orderDetail.parameter` with a code from the [laboratory tests and processing operations](ValueSet-bld-lab-codes-vs.html) and `valueBoolean` `true`; leave unselected tests out. The laboratory codes are candidates until the assay and specimen are confirmed. When the laboratory receives several of the donor's tubes, list each in `specimen`. `identifier` and `requisition` are optional, but when sent each must carry a `system`.

#### A component processing request

Blood service staff ask for a red cell component to be washed and irradiated:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"] },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "code": {
    "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "64108007" } ] }
  },
  "subject": { "reference": "Patient/example-salim" },
  "authoredOn": "2026-11-10T10:00:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "focus": [ { "reference": "BiologicallyDerivedProduct/example-blood-component-product" } ],
  "note": [ { "text": "Ehtiyotkorlik bilan qayta ishlang." } ],
  "orderDetail": [
    {
      "parameter": [
        {
          "code": {
            "coding": [
              {
                "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/processing-operation-cs",
                "code": "bld-operation-0001",
                "display": "Yuvish"
              }
            ]
          },
          "valueBoolean": true
        },
        {
          "code": {
            "coding": [
              {
                "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/processing-operation-cs",
                "code": "bld-operation-0002",
                "display": "Nurlantirish"
              }
            ]
          },
          "valueBoolean": true
        }
      ]
    }
  ]
}
```

Create one request per component with all selected operations from the [processing operations](CodeSystem-processing-operation-cs.html), and point `focus` to the component's [BiologicallyDerivedProduct](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-biologically-derived-product.html); do not repeat it in `supportingInfo`. Leave `category` out. SNOMED CT `64108007` Blood unit processing is a provisional overall service code. Keep the request `active` until every operation is confirmed, then set it to `completed`.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
