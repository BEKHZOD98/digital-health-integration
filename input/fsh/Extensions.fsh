Extension: LateralityQualifier
Id: laterality-qualifier
Title: "Laterality Qualifier"
Description: "Cancer laterality qualifier."
Context: Condition

* ^status = #active
* ^experimental = true

* value[x] only CodeableConcept
* valueCodeableConcept from LateralityQualifierVS (required)

Extension: Topography
Id: topography
Title: "Topography"
Description: "ICD-O-3 topography."
Context: Condition

* ^status = #active
* ^experimental = true

* value[x] only CodeableConcept
* valueCodeableConcept from ICD3TopographyVS (required)

Extension: Morphology
Id: morphology
Title: "Morphology"
Description: "ICD-O-3 morphology."
Context: Condition

* ^status = #active
* ^experimental = true

* value[x] only CodeableConcept
* valueCodeableConcept from ICD3MorphologyVS (required)

Extension: GradeDifferentiation
Id: grade-differentiation
Title: "Grade Differentiation"
Description: "Degree of tumor differentiation."
Context: Condition

* ^status = #active
* ^experimental = true

* value[x] only CodeableConcept
* valueCodeableConcept from DegreeOfTumorDifferentiationVS (required)

Extension: TumorBehavior
Id: tumor-behavior
Title: "Tumor Behavior"
Description: "Tumor behavior classification."
Context: Condition

* ^status = #active
* ^experimental = true

* value[x] only CodeableConcept
* valueCodeableConcept from TumorBehaviorVS (required)

Extension: DetectionCircumstance
Id: detection-circumstance
Title: "Detection Circumstance"
Description: "Circumstance of cancer detection."
Context: Condition

* ^status = #active
* ^experimental = true

* value[x] only CodeableConcept
* valueCodeableConcept from DetectionCircumstanceVS (required)

Extension: ICCC3Group
Id: iccc3-group
Title: "ICCC-3 Group"
Description: "International Classification of Childhood Cancer group."
Context: Condition

* ^status = #active
* ^experimental = true

* value[x] only CodeableConcept
* valueCodeableConcept from ICCC3VS (required)

Extension: RelatedCondition
Id: related-condition
Title: "Related Condition"
Description: "Reference to a related condition."
Context: Condition

* ^status = #active
* ^experimental = true

* value[x] only Reference(ConditionCancerPrimary)

Extension: SpecialTreatment
Id: special-treatment
Title: "Special Treatment Extension"
Description: "Special treatment provided to a cancer patient."
Context: EpisodeOfCare

* ^status = #active
* ^experimental = true

* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from SpecialTreatmentVS (required)

Extension: CharacterTreatment
Id: character-treatment
Title: "Character Treatment Extension"
Description: "Character of treatment provided to a cancer patient."
Context: EpisodeOfCare

* ^status = #active
* ^experimental = true

* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from CharacterTreatmentVS (required)

Extension: ProcedureMethod
Id: procedure-method
Title: "Procedure Method"
Description: "Method used to perform the surgical procedure."
Context: Procedure

* ^status = #active
* ^experimental = true

* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from ProcedureMethodVS (required)

Extension: AdditionalProcedure
Id: additional-procedure
Title: "Additional Procedure"
Description: "Additional procedure performed during the surgical intervention."
Context: Procedure

* ^status = #active
* ^experimental = true

* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from NameOperationsVS (required)

Extension: RadiotherapySingleDose
Id: radiotherapy-single-dose
Title: "Radiotherapy Single Dose"
Description: "Single radiation dose."
Context: Procedure

* ^status = #draft
* ^experimental = true

* value[x] only Quantity
* valueQuantity 0..1 MS

Extension: RadiotherapyTotalDose
Id: radiotherapy-total-dose
Title: "Radiotherapy Total Dose"
Description: "Total radiation dose."
Context: Procedure

* ^status = #draft
* ^experimental = true

* value[x] only Quantity
* valueQuantity 0..1 MS

Extension: RadiotherapyEquivalentDose
Id: radiotherapy-equivalent-dose
Title: "Radiotherapy Equivalent Dose"
Description: "Equivalent radiation dose."
Context: Procedure

* ^status = #draft
* ^experimental = true

* value[x] only Quantity
* valueQuantity 0..1 MS

Extension: RadiotherapyZone
Id: radiotherapy-zone
Title: "Radiotherapy Zone"
Description: "Radiotherapy treatment zone."
Context: Procedure

* ^status = #active
* ^experimental = true

* value[x] only CodeableConcept
* valueCodeableConcept 0..1 MS
* valueCodeableConcept from ImpactZoneVS (required)

Extension: RadiotherapyModifiers
Id: radiotherapy-modifiers
Title: "Radiotherapy Modifiers"
Description: "Radiotherapy modifiers."
Context: Procedure

* ^status = #active
* ^experimental = true

* value[x] only CodeableConcept
* valueCodeableConcept 0..1 MS
* valueCodeableConcept from ModifiersVS (required)
Extension: AdmissionOrigin
Id: admission-origin
Title: "Admission Origin"
Description: "Extension to represent the origin from which the patient came before admission."
Context: Encounter.admission.origin
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from EncounterAdmissionOriginVS (required)


// screening
Extension: BreastQuadrantExtension
Id: breast-quadrant
Title: "Breast Quadrant Extension"
Description: "Breast quadrant used to localize findings."
* ^status = #active
* ^experimental = true
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/breast-quadrant"
* ^context.type = #element
* ^context.expression = "Observation.bodySite"
* value[x] only CodeableConcept
* valueCodeableConcept from ScreeningBreastQuadrantVS (required)

