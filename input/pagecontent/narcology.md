<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

# Narcology Registry Resources

## Overview

This page documents how information related to a patient's social status, dynamic observation group, medical encounters, medical-consultation commission decisions, clinical conditions, and registry flags is represented as FHIR resources for the Narcology Registry.

The information is represented using individual FHIR resources. The resources are linked to the patient and, where applicable, to the relevant episode of care, encounter, organization, and practitioner role.

The main resources described in this section are:

- `Observation` — records the patient's social status.
- `EpisodeOfCare` — represents the patient's narcology registration and dynamic observation group.
- `Encounter` — records information about the patient's medical visit.
- `Observation` — records the decision or conclusion of the medical-consultation commission.
- `Condition` — records the patient's narcology-related clinical conditions and diagnoses.
- `Flag` — records important narcology registry information that should be communicated to healthcare providers, such as social danger or compulsory treatment.

---

## Recording the patient's social status (Observation)

The patient's social status is represented as an `Observation` resource.

The observation identifies the social-status observation using the fixed SNOMED CT concept `82996008`. The patient's actual social status is recorded in `valueCodeableConcept` using the `SocialStatusVS` value set.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Observation status | ObservationStatus | `final` | `status` |
| Observation type | SocioeconomicObservationCodesVS (0.4.0) | `SNOMED CT#82996008` | `code` |
| Social status | SocialStatusVS (0.4.0) | `regis0010.00001` (Учащийся) | `valueCodeableConcept` |
| Patient | - | reference to `UZCorePatient` | `subject` |
| Observation date | - | `2026-03-10` | `effectiveDateTime` |

The observation status is required and uses the `ObservationStatus` value set.

The observation code is fixed to SNOMED CT `82996008`.

The social status is selected from `SocialStatusVS`.

| Code | Description |
| :--- | :--- |
| `regis0010.00001` | Учащийся |
| `regis0010.00003` | Работающий |
| `regis0010.00004` | Неработающий |
| `regis0010.00006` | Пенсионер |

The `subject` references the patient whose social status is being recorded.

---

## Registering the patient in a dynamic observation group (EpisodeOfCare)

The `EpisodeOfCare` resource represents the patient's narcology registration and the group of dynamic observation to which the patient belongs.

The episode records the patient's identifier, registration status, dynamic observation group, diagnoses associated with the episode, patient, managing organization, registration period, and responsible practitioner role.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Identifier | - | `https://dhp.uz/fhir/core/sid/reg/uz/narko` | `identifier` |
| Registration status | EpisodeOfCareStatusVS (0.4.0) | `active` | `status` |
| Dynamic observation group | Group | `narcr0001-00002` (Dispanser guruhi) | `type.extension[group]` |
| Diagnosis | ICD-10 / UZ Core Condition | reference to `UZCoreCondition` | `diagnosis.condition` |
| Diagnosis use | Encounter Diagnosis Use | - | `diagnosis.use` |
| Patient | - | reference to `UZCorePatient` | `patient` |
| Managing organization | - | reference to `UZCoreOrganization` | `managingOrganization` |
| Registration date | - | `2026-02-12` | `period` |
| Care manager | - | reference to `PractitionerRole` | `careManager` |

When the patient is registered in the Narcology Registry, the episode status becomes `active`.

When the patient is removed from registration, the status should become `finished`.

The dynamic observation group is represented using the `group` extension on `EpisodeOfCare.type`.

The defined group codes are:

| Code | SNOMED CT code | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- |
| `narcr0001-00001` | `302805002` | Профилактическая группа | Profilaktik guruh | Preventive group |
| `narcr0001-00002` | `25861000087109` | Диспансерная группа | Dispanser guruhi | Dispensary group |

The episode may contain multiple diagnoses. Each diagnosis references a `Condition` associated with the patient's narcology episode of care.

---

## Recording a medical encounter (Encounter)

The `Encounter` resource contains information about the patient's medical visit within the Narcology Registry.

The encounter represents the medical visit recorded by the physician and may be associated with the patient's `EpisodeOfCare`.

The encounter may contain multiple diagnoses identified or managed during the visit.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Encounter identifier | - | - | `identifier` |
| Encounter status | Encounter Status translations | `completed` | `status` |
| Patient | - | reference to `UZCorePatient` | `subject` |
| Episode of care | - | reference to `EpisodeOfCare` | `episodeOfCare` |
| Actual encounter period | - | `2026-02-12` | `actualPeriod` |
| Participant type | Participant Type | `ATND` | `participant.type` |
| Encounter practitioner | - | reference to `UZCorePractitionerRole` | `participant.actor` |
| Diagnosis | - | reference to `Condition` | `diagnosis.condition` |
| Diagnosis use | Encounter Diagnosis Use | `final` | `diagnosis.use` |

The encounter status may be:

- `in-progress`
- `on-hold`
- `completed`
- `cancelled`
- `entered-in-error`

The `episodeOfCare` reference associates the encounter with the patient's narcology registration episode.

An encounter may contain multiple diagnoses. Each diagnosis references a `Condition` resource and may have an associated diagnosis-use value.

---

## Recording the medical-consultation commission decision (Observation)

The medical-consultation commission's decision is represented as an `Observation` resource.

The observation records the commission decision, the patient, the related encounter, the date of the decision, the commission members, the responsible practitioner role, and additional notes.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Identifier | - | `https://dhp.uz/fhir/core/sid/reg/uz/narko` | `identifier` |
| Observation status | Observation Status | `final` | `status` |
| Commission decision type | type-resource | `narcr0002-0001` | `code` |
| Patient | - | reference to `Patient` | `subject` |
| Encounter | - | reference to `Encounter` | `encounter` |
| Commission decision date | - | `2026-03-10` | `effectiveDateTime` |
| Commission members | - | `Тошматов Тошмат Тошматович` | `valueString` |
| Performer | - | reference to `PractitionerRole` | `performer` |
| Commission note | - | `Пациент нарко больной` | `note` |

The observation code identifies the resource as a medical-consultation commission decision.

The defined terminology mapping is:

| Code | SNOMED CT code | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- |
| `narcr0002-0001` | `365923008` | Решение комиссии | Komissiya qarori | The commission's decision |

The `subject` identifies the patient.

The `encounter` links the commission decision to the related medical encounter.

The `performer` references the practitioner role responsible for the commission decision.

Additional information about the commission may be recorded in `note`.

---

## Recording a patient's clinical condition (Condition)

The `Condition` resource represents a clinical condition associated with a patient registered in the Narcology Registry.

It may be used to record narcology-related diagnoses and other clinically relevant conditions.

The condition records the clinical status, severity where applicable, diagnosis code, patient, related encounter, registration date, and organization providing information about the patient.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Identifier | - | `https://dhp.uz/fhir/core/sid/reg/uz/narco` | `identifier` |
| Clinical status | Condition Clinical Status Codes | `active` | `clinicalStatus` |
| Disability severity | DisabilityVS | - | `severity` |
| Diagnosis (ICD-10) | ConditionCodeVS (preferred) | `F15.1` | `code` |
| Patient | - | reference to `UZCorePatient` | `subject` |
| Encounter | - | reference to `UZCoreEncounter` | `encounter` |
| Registration date | - | `2026-03-10` | `recordedDate` |
| Information provider | - | reference to `UZCoreOrganization` | `participant.actor` |

The clinical status is required.

When the patient is registered, the condition status becomes `active`.

When the patient is removed from registration, the condition status should become `resolved`.

The diagnosis uses `ConditionCodeVS` with a preferred binding and represents the patient's narcology-related ICD-10 diagnosis.

### Disability

The following rules apply to disability:

1. `severity` should only be populated when the presence of disability has been selected.
2. When disability is present, a separate `Condition` should be created.
3. The separate disability condition uses SNOMED CT code `21134002` (`Disability`).

### HIV and tuberculosis

If the narcology system indicates that the patient has HIV or tuberculosis, a separate `Condition` should be created for each applicable condition.

The specified additional ICD-10 mappings are:

- HIV: ICD-10 code `B23`
- Tuberculosis: ICD-10 code `A15.7`

If HIV or tuberculosis is not selected in the Narcology Registry, the corresponding additional `Condition` should not be created.

Each condition is associated with the patient through `subject`.

When the condition is identified during a specific medical encounter, the `encounter` reference may be populated.

---

## Recording social danger and compulsory treatment (Flag)

The `Flag` resource records important information that should be communicated to healthcare providers.

In the Narcology Registry, it is used to record registry flags such as social danger and compulsory treatment.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Flag status | Flag Status | `active` | `status` |
| Registry flag | Registri-flags | `registri0001-00002` (Принудительное лечение) | `code` |
| Patient | - | reference to `Patient` | `subject` |
| Validity period | - | `2026-03-12` | `period` |
| Encounter | - | reference to `Encounter` | `encounter` |
| Author | - | reference to `UZCorePractitionerRole` | `author` |

The flag status is required and may be:

- `active`
- `inactive`
- `entered-in-error`

The registry flag codes are:

| Code | SNOMED CT code | SNOMED name | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `registri0001-00001` | `389315000` | At risk of harming others | Социальная опасность | Ijtimoiy xavflilik | Social danger / Social risk |
| `registri0001-00002` | `52748007` | Involuntary hospital admission | Принудительное лечение | Majburiy davolanish | Compulsory treatment |

The `subject` identifies the patient to whom the registry flag applies.

The `encounter` may be used to associate the flag with a specific medical encounter.

The `author` references the practitioner role responsible for recording the flag.

---

## Terminology summary

The terminology used by the Narcology Registry resources is summarized below.

| Terminology | Resource / Element | Purpose |
| :--- | :--- | :--- |
| `SocialStatusVS` | `Observation.valueCodeableConcept` | Patient's social status |
| `Group` | `EpisodeOfCare.type.extension[group]` | Dynamic observation group |
| `EpisodeOfCareStatusVS` | `EpisodeOfCare.status` | Narcology registration lifecycle |
| `type-resource` | `Observation.code` | Medical-consultation commission decision |
| `ConditionCodeVS` | `Condition.code` | Narcology diagnosis |
| `DisabilityVS` | `Condition.severity` | Disability-related severity |
| `Registri-flags` | `Flag.code` | Narcology registry flags |

---

## Resource relationships

A typical Narcology Registry record may connect the resources as follows:

- `Patient` is the central subject.
- `EpisodeOfCare` represents the patient's narcology registration and dynamic observation group.
- `Encounter` records a medical visit and may reference the relevant `EpisodeOfCare`.
- `Condition` records diagnoses associated with the patient, encounter, or episode of care.
- `Observation` records the patient's social status.
- A second `Observation` records the medical-consultation commission decision and may reference the related `Encounter`.
- `Flag` records important narcology registry information, such as social danger or compulsory treatment.

This structure allows the patient's narcology registration status, clinical diagnoses, social status, medical encounters, commission decisions, and important registry flags to be represented as linked FHIR resources.