<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td {
  overflow-wrap: anywhere;
  word-break: break-word;
  vertical-align: top;
}
</style>

### Recording the patient's social status (Observation)

The patient's social status is represented using the [UZ Core Socioeconomic Observation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) profile — the same core profile used by the Narcology Registry, applied unchanged to the Psix system.

**Examples:** [`example-psychiatry-socio-economic-observation`](Observation-example-psychiatry-socio-economic-observation.html)

The observation identifies the social-status observation using SNOMED CT concept `82996008`. The patient's actual social status is recorded in `valueCodeableConcept` using [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs).

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Observation status | ObservationStatus | `final` | `status` |
| Observation type | [SocioeconomicObservationCodesVS](https://dhp.uz/fhir/core/ValueSet/socioeconomic-observation-codes-vs) | `SNOMED CT#82996008` | `code` |
| Social status | [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | `regis0010.00003` (Работающий / Employed) | `valueCodeableConcept` |
| Patient | - | reference to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Observation date | - | `2026-08-15` | `effectiveDateTime` |
| Performer | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `performer` |

The `subject` references the patient whose social status is being recorded.

---

### Registering the patient in a dynamic observation group (EpisodeOfCare)

The patient's psychiatry registration and dynamic observation group are represented using the **Psix Episode of Care** profile (`PsychiatryEpisodeOfCare`), which constrains [UZCoreEpisodeOfCare](https://dhp.uz/fhir/core/StructureDefinition/uz-core-episode-of-care).

**Examples:** [`example-psychiatry-episode-of-care`](EpisodeOfCare-example-psychiatry-episode-of-care.html)

The episode records the patient's registration status, service type, dynamic observation group, diagnosis, patient, managing organization, registration period, and responsible practitioner role.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Registration status | [EpisodeOfCareStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs) | `active` | `status` |
| Service type | Episode Of Care Type | `mserv-0001-00004` (Treatment services) | `type[serviceType]` |
| Dynamic observation group | [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) | `narcr0001-00001` (Preventive group) | `type[group]` |
| Diagnosis | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | ICD-10 `F10.2` (Dependence syndrome due to use of alcohol) | `diagnosis.condition` |
| Diagnosis use | Encounter Diagnosis Use | `working` | `diagnosis.use` |
| Patient | - | reference to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `patient` |
| Managing organization | - | reference to [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) | `managingOrganization` |
| Registration date | - | `2026-08-15` | `period.start` |
| Care manager | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `careManager` |

The `type[group]` element is required (`1..1`) on `PsychiatryEpisodeOfCare` and is bound to [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) — the same shared group value set used by the Narcology Registry, since a dynamic observation group can apply across both registries.

The defined narcology and psychiatry episode-of-care group codes remain the shared set:

| Code | SNOMED CT code | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- |
| `narcr0001-00001` | `302805002` | Профилактическая группа | Profilaktik guruh | Preventive group |
| `narcr0001-00002` | `225419007` | Диспансерная группа | Dispanser guruhi | Dispensary group |
| `psycr0001-00001` | `52748007` | Стационарное принудительное лечение | Majburiy statsionar davolanish | Compulsory inpatient treatment |

When the patient is registered in the Psychiatry Registry, the episode status is `active`. When the patient is removed from registration, the episode status should be `finished`, following the same lifecycle semantics used by the Narcology Registry.

---

### Recording a medical encounter (Encounter)

A patient's medical visit within the Psychiatry Registry is represented using the [UZ Core Encounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) profile directly — Psix does not define a separate encounter profile.

**Examples:** [`example-psychiatry-encounter`](Encounter-example-psychiatry-encounter.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Encounter status | Encounter Status | `completed` | `status` |
| Patient | - | reference to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Actual encounter period | - | starts `2026-08-15` | `actualPeriod` |
| Encounter type | - | `mserv-0001-00004` (Treatment services) | `type` |
| Participant type | v3 Participation Type | `ATND` (attender) | `participant.type` |
| Encounter practitioner | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `participant.actor` |
| Diagnosis | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | reference to `Condition/example-psychiatry-condition` | `diagnosis.condition` |
| Diagnosis use | Encounter Diagnosis Use | `final` | `diagnosis.use` |

Unlike the Narcology Registry's encounter, the Psix example encounter does not carry an `episodeOfCare` reference in the sample instance; where the relationship is relevant, implementers may still populate `episodeOfCare` to associate the encounter with the patient's `PsychiatryEpisodeOfCare`.

---

### Recording the medical-consultation commission decision (Observation)

The medical-consultation commission's decision is represented using the **Psix Observation Commission** profile (`PsychiatryObservationCommision`), which constrains [UZCoreObservation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation).

**Examples:** [`example-psychiatry-observation-commision`](Observation-example-psychiatry-observation-commision.html)

Compared to the Narcology Registry's commission observation, the Psix profile adds an optional `identifier` and a `protocolNumber` component slice for recording the court protocol number or court name behind a compulsory-treatment decision.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Identifier | - | (optional) | `identifier` |
| Observation status | Observation Status | `final` | `status` |
| Commission decision type | [PsychiatryCommissionTypeVS](ValueSet-psychiatry-commission-type-vs.html) | `type-res-0002-0001` (The commission's decision) | `code` |
| Patient | - | reference to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Encounter | - | reference to `Encounter/example-psychiatry-encounter` | `encounter` |
| Commission decision date | - | `2026-08-15` | `effectiveDateTime` |
| Commission result | - | `Commission concluded compulsory inpatient treatment is required` | `valueString` |
| Performer | - | reference to [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `performer` |
| Free-text note | - | e.g. clinical summary supporting the decision | `note` |
| Protocol number / court name | - | `Protocol No. 123, Tashkent City Civil Court` | `component[protocolNumber].valueString` |

The `code` element is bound (required) to [PsychiatryCommissionTypeVS](ValueSet-psychiatry-commission-type-vs.html), which includes all codes from the `type-resource-cs` code system — the same underlying code system used by the Narcology Registry's commission decision type, so the `type-res-0002-0001` code is reused unchanged.

The `protocolNumber` component is an open slice on `component`, discriminated by `code`, and is bound to `type-resource-cs#type-res-0002-0002` ("Protocol number/court name"). It is used specifically to capture the legal basis (protocol number or court) for a compulsory-treatment decision, and has no equivalent in the Narcology Registry's commission observation.

`valueString` remains required, carrying the free-text decision result, and each commission member continues to be recorded as a separate `performer` reference.

---

### Recording a patient's clinical condition (Condition)

A psychiatry-related clinical condition is represented using the **Psix Condition** profile (`PsychiatryCondition`), which constrains [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition).

**Examples:** [`example-psychiatry-condition`](Condition-example-psychiatry-condition.html)

Compared to the Narcology Registry's condition, the Psix profile additionally requires `identifier` and `onsetDateTime`, and constrains `participant.actor` to reference [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) only.

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Identifier | - | (required) | `identifier` |
| Clinical status | Condition Clinical Status Codes | `active` | `clinicalStatus` |
| Verification status | Condition Verification Status | `confirmed` | `verificationStatus` |
| Diagnosis | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | ICD-10 `F15.1` (Harmful use of other stimulants, including caffeine) | `code` |
| Patient | - | reference to [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Encounter | - | reference to `Encounter/example-psychiatry-encounter` | `encounter` |
| Onset date | - | `2026-08-15` | `onsetDateTime` |
| Registration date | - | `2026-08-15` | `recordedDate` |
| Information provider | - | reference to [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) | `participant.actor` |

Clinical status remains required, and the same active/resolved lifecycle semantics used by the Narcology Registry's `Condition` apply here.

#### Diagnosis codes

Implementers should use the applicable diagnosis code from [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs). The Psix examples illustrate two diagnoses in different contexts: `F15.1` (harmful use of other stimulants) is recorded on the `Condition`, while `F10.2` (dependence syndrome due to use of alcohol) appears as the diagnosis on the patient's `EpisodeOfCare` — both drawn from the same value set.

Each condition is associated with the patient through `subject`, and where the condition is identified or managed during a specific medical encounter, the `encounter` reference may be populated.

---

### Terminology summary

The terminology used by the Psychiatry Registry resources is summarized below.

| Terminology | Resource / Element | Purpose |
| :--- | :--- | :--- |
| [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | `Observation.valueCodeableConcept` | Patient's social status |
| [SocioeconomicObservationCodesVS](https://dhp.uz/fhir/core/ValueSet/socioeconomic-observation-codes-vs) | `Observation.code` | Identifies the social-status observation |
| [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) | `EpisodeOfCare.type[group]` | Dynamic observation group (shared with Narcology) |
| [EpisodeOfCareStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs) | `EpisodeOfCare.status` | Psychiatry registration lifecycle |
| [PsychiatryCommissionTypeVS](ValueSet-psychiatry-commission-type-vs.html) | `Observation.code` | Medical-consultation commission decision |
| [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `Condition.code`, `EpisodeOfCare.diagnosis.condition` | Psychiatry diagnosis |

---

### Resource relationships

A typical Psychiatry Registry record may connect the resources as follows:

- `Patient` is the central subject.
- [PsychiatryEpisodeOfCare](StructureDefinition-psychiatry-episode-of-care.html) represents the patient's psychiatry registration and dynamic observation group.
- [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) records a medical visit within the registry.
- [PsychiatryCondition](StructureDefinition-psychiatry-condition.html) records diagnoses associated with the patient and encounter.
- [UZ Core Socioeconomic Observation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) records the patient's social status.
- [PsychiatryObservationCommision](StructureDefinition-psychiatry-observation-commision.html) records the medical-consultation commission decision, including the legal protocol or court behind a compulsory-treatment order, and references the related `Encounter`.

These resources are linked through patient, encounter, organization, and practitioner-role references to represent the patient's psychiatry registration, clinical diagnoses, social status, medical encounters, and commission decisions.