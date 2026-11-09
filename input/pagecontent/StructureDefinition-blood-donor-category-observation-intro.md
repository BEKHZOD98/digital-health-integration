Blood Donor Category Observation records a donor's category at a specific time and can link it to a donation encounter. It derives from [UZ Core Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html). The subject currently uses UZCorePatient; a separate BloodDonorPatient profile is not defined in this guide.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available. Systems must populate inherited Must Support elements when available and process them on receipt. The formal views below give the exact cardinalities, types and bindings.

#### Each Blood Donor Category Observation Must Have

A status, the donor-category observation code, a patient reference and the date and time the category was established.

#### Each Blood Donor Category Observation Must Support

- Donor category (staff or reserve) and compensation (paid or unpaid), when known.
- The donation encounter, performer, identifiers and notes, when available.
- Additional donor data as unsliced components: donation type, ABO blood group and Rh factor.
- The other Must Support elements inherited from UZ Core Observation.

### Building the JSON, step by step

1. A minimal observation:

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation"
    ]
  },
  "language": "uz",
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "105470007"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-salim"
  },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00"
}
```

2. Add the category and compensation:

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation"
    ]
  },
  "language": "uz",
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "105470007"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-salim"
  },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-category-cs",
          "code": "bdcat-0001-00001"
        }
      ]
    }
  ],
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donation-compensation-cs",
        "code": "bdcomp-0001-00001"
      }
    ]
  }
}
```

3. Add component values from their corresponding value sets:

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation"
    ]
  },
  "language": "uz",
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "105470007"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-salim"
  },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-category-cs",
          "code": "bdcat-0001-00001"
        }
      ]
    }
  ],
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donation-compensation-cs",
        "code": "bdcomp-0001-00001"
      }
    ]
  },
  "performer": [
    {
      "reference": "PractitionerRole/example-practitionerrole"
    }
  ],
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs",
            "code": "bdobs-0001-00001"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donation-type-cs",
            "code": "bdtype-0001-00002"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs",
            "code": "bdobs-0001-00002"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "112144000"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs",
            "code": "bdobs-0001-00003"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "165747007"
          }
        ]
      }
    }
  ]
}
```

The observation code comes from BloodPatientTypeVS; these donor examples use SNOMED CT 105470007. Component codes bdobs-0001-00001, bdobs-0001-00002 and bdobs-0001-00003 identify donation type, blood group and Rh factor respectively. Blood group and Rh values reuse UZ Core and contain SNOMED CT codes. Components and their values remain optional; present values must match the component code.

Diagnosis components use LOINC 29308-4 with an ICD-10 value. The same conditional validation applies when a diagnosis value is provided.

[Source specification](https://docs.google.com/spreadsheets/d/1pNl4a2vlB-8aigBSalFRDu3xPH-BKtMsKgzITcZ-Yy8/edit#gid=1302421877).

See the [complete example](Observation-example-blood-donor-category-observation.html) and [Quick Start](#quick-start).

### Identifier slices {#identifier-slices}

| Slice | Cardinality | system |
|---|---|---|
| bloodId | 0..1 | https://dhp.uz/fhir/core/sid/prd/uz/blood |

