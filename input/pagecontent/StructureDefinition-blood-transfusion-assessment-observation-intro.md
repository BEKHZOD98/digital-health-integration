Blood Transfusion Assessment Observation records the checks made on a recipient for a blood transfusion: ABO and Rh-Hr compatibility, the transfusion and obstetric history, the preliminary ABO group and the result of the biological compatibility test. One Observation holds one transfusion protocol, with each check in its own component. It is built on [UZ Core Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html), so it is read and searched through the Observation endpoint. The subject is the recipient, a [UZ Core Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html), and the record can link to the [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html) in which the assessment was made and to the practitioner who made it. See [Blood Service](blood-service.html) for how it fits with the UZ Core profiles across the blood service, from donor registration to transfusion.

### Mandatory and Must Support data elements

The elements below must always be present (mandatory) or must be supported when the data is available ([Must Support](https://dhp.uz/fhir/core/en/must-support.html)) - not all are required, but your system must populate each Must Support element when it has the data and process it on receipt. This is the human-readable summary; the [formal views](#profile) below give the exact cardinalities, types, and terminology bindings.

#### Each Blood Transfusion Assessment Observation Must Have

Every Blood Transfusion Assessment Observation must carry a status, a code - always SNOMED CT `252314007` *Blood transfusion test*, as its only coding - and a subject - the recipient [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) (1..1). An identifier, when sent, must have a `system`. The assessment results go in components, and each component carries its fixed code.

#### Each Blood Transfusion Assessment Observation Must Support

- the business identifier of the assessment;
- the encounter in which the assessment was made and the performer - the practitioner, practitioner role or organization responsible for it;
- when the assessment was made (`effective[x]`) and when the result was issued (`issued`);
- the ABO compatibility and Rh-Hr compatibility results, each in its own component;
- the transfusion history and the obstetric history, each in its own component;
- the preliminary ABO group and the result of the biological compatibility test, each in its own component;
- the other Must Support elements inherited from UZ Core Observation.

### Building the JSON, step by step

The examples below go from the smallest instance the server will accept to a complete assessment. Copy one and adapt it - every value shown validates against this profile. The complete reference instance is the [assessment of a recipient](Observation-example-blood-transfusion-assessment.html).

#### The smallest observation you should send

Three elements are required: the `status`, the `code` saying this is a blood transfusion test, and the `subject` (the recipient [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html)). Add the `effectiveDateTime` of the assessment as well, since a result without a time cannot be placed against the transfusion:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-transfusion-assessment-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "252314007", "display": "Blood transfusion test" } ]
  },
  "subject": { "reference": "Patient/example-transfusion-assessment-recipient" },
  "effectiveDateTime": "2026-11-11T10:30:00+05:00"
}
```

The `subject` is a plain `Reference`, so the target sits directly under `reference`.

#### A complete assessment

Each check goes in its own `component` slice. Every slice is optional and occurs at most once; the `code` selects the slice, and the `valueCodeableConcept` must come from that slice's value set:

| Slice | `code` | `valueCodeableConcept` from |
|---|---|---|
| `aboCompatibility` | `bldcomp-0001-00001` | [Compatibility result](ValueSet-blood-transfusion-value-vs.html) |
| `rhHrCompatibility` | `bldcomp-0001-00002` | [Compatibility result](ValueSet-blood-transfusion-value-vs.html) |
| `transfusionHistory` | `bldcomp-0001-00003` | [Transfusion history category](ValueSet-blood-transfusion-history-vs.html) |
| `obstetricHistory` | `bldcomp-0001-00004` | [Obstetric history category](ValueSet-obstetric-history-vs.html) |
| `preliminaryAboGroup` | `bldcomp-0001-00005` | [ABO blood group](https://dhp.uz/fhir/core/en/ValueSet-blood-group-vs.html) (SNOMED CT) |
| `biologicalSpecimen` | `bldcomp-0001-00006` | [Biological test result](ValueSet-specimen-res-vs.html) (SNOMED CT) |

The `bldcomp-0001` codes are in `https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs`. The local codes have Uzbek displays, so the resource sets `language` to `uz`:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-transfusion-assessment-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "252314007", "display": "Blood transfusion test" } ]
  },
  "subject": { "reference": "Patient/example-transfusion-assessment-recipient" },
  "encounter": { "reference": "Encounter/example-transfusion-assessment-encounter" },
  "effectiveDateTime": "2026-11-11T10:30:00+05:00",
  "issued": "2026-11-11T10:35:00+05:00",
  "performer": [ { "reference": "Practitioner/example-transfusion-assessment-practitioner" } ],
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs",
            "code": "bldcomp-0001-00001",
            "display": "ABO bo‘yicha moslik"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-value-cs",
            "code": "bldcomp-0002-00001",
            "display": "Mos"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs",
            "code": "bldcomp-0001-00002",
            "display": "Rh-Hr bo‘yicha moslik"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-value-cs",
            "code": "bldcomp-0002-00001",
            "display": "Mos"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs",
            "code": "bldcomp-0001-00003",
            "display": "Transfuzion anamnez"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-history-cs",
            "code": "bldcomp-0003-00001",
            "display": "Avval qon quyilmagan"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs",
            "code": "bldcomp-0001-00004",
            "display": "Akusherlik anamnezi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/obstetric-history-cs",
            "code": "bldcomp-0004-00002",
            "display": "Homiladorlik yoki tug‘ruq bo‘lmagan"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs",
            "code": "bldcomp-0001-00005",
            "display": "Dastlabki ABO qon guruhi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "112144000", "display": "Blood group A" } ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs",
            "code": "bldcomp-0001-00006",
            "display": "Biologik namuna"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "260385009", "display": "Negative" } ]
      }
    }
  ]
}
```

Send only the components the protocol recorded: leave out a check that was not done rather than sending it empty. The obstetric history takes *Not applicable* (`bldcomp-0004-00001`) for a recipient it does not apply to, and the transfusion history takes *Data absent* (`bldcomp-0003-00004`) when it could not be established.

For example API calls, see the [Quick Start](#quick-start) at the bottom of this page.
