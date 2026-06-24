Extension: HepatitisConditionOutcome
Id: hepatitis-condition-outcome
Title: "Hepatitis condition outcome extension"
Description: "Represents the effectiveness of treatment at the time of removal from the A, B, C, D, E registry follow-up."
Context: Condition
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/hepatitis-condition-outcome"
* ^status = #active
* ^experimental = true

* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from HepatitisConditionOutcomeCodesVS (required)


Extension: AdmissionOrigin
Id: admission-origin
Title: "Admission Origin"
Description: "Extension to represent the origin from which the patient came before admission."
Context: Encounter.admission.origin
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from EncounterAdmissionOriginVS (required)

