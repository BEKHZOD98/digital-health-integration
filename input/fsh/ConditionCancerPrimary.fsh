Profile: ConditionCancerPrimary
Parent: UZCoreCondition
Id: condition-cancer-primary
Title: "Condition Cancer Primary"
Description: "Primary cancer diagnosis condition used for oncology registration, staging, morphology, topography, and related cancer-specific characteristics."

* ^experimental = true
* ^status = #active

* extension contains
    LateralityQualifier named lateralityQualifier 0..1 MS and
    Topography named topography 0..1 MS and
    Morphology named morphology 0..1 MS and
    GradeDifferentiation named gradeDifferentiation 0..1 MS and
    TumorBehavior named tumorBehavior 0..1 MS and
    DetectionCircumstance named detectionCircumstance 0..1 MS and
    ICCC3Group named iccc3Group 0..* MS

// * extension[diagnosisType].valueCodeableConcept from DiagnosisTypeVS (required)

* code 1..1 MS

* extension[lateralityQualifier].valueCodeableConcept from LateralityQualifierVS (required)

* extension[topography].valueCodeableConcept 0..1 MS
* extension[topography].valueCodeableConcept from ICD3TopographyVS (required)

* extension[morphology].valueCodeableConcept 0..1 MS
* extension[morphology].valueCodeableConcept from ICD3MorphologyVS (required)

* extension[gradeDifferentiation].valueCodeableConcept 0..1 MS
* extension[gradeDifferentiation].valueCodeableConcept from DegreeOfTumorDifferentiationVS (required)

* extension[tumorBehavior].valueCodeableConcept 0..1 MS
* extension[tumorBehavior].valueCodeableConcept from TumorBehaviorVS (required)

* extension[detectionCircumstance].valueCodeableConcept 0..1 MS
* extension[detectionCircumstance].valueCodeableConcept from DetectionCircumstanceVS (required)

* extension[iccc3Group].valueCodeableConcept from ICCC3VS (required)

* onsetDateTime MS

* onsetAge MS

* abatementDateTime MS

* recordedDate 1..1 MS

* participant.actor 1..1
* participant.actor only Reference(UZCorePractitioner or UZCorePractitionerRole)

* stage MS
* stage.summary from TNMStageCancerVS (required)
* stage.assessment only Reference(ObservationTNMstagegroup)
* stage.type from ResearchMethodVS (required)


Instance: condition-cancer-primary-example
InstanceOf: ConditionCancerPrimary
Usage: #example
Description: "Example primary cancer diagnosis."

* clinicalStatus = $condition-clinical#resolved "Resolved"


* category = $condition-category#problem-list-item "Problem List Item"

* code = $icd-10#C02 "Malignant neoplasm of other and unspecified parts of tongue"

// this will be comment out after some codes will added to IG
// * extension[diagnosisType].valueCodeableConcept = https://terminology.dhp.uz/fhir/core/CodeSystem/diagnosis-type-cs#gencl-0001-00016 "Notification from the outpatient clinic of the branch of the Republican Center for Oncology and Radiology"

* extension[lateralityQualifier].valueCodeableConcept = laterality-qualifier-cs#cancr0016.00002 "Left"

* extension[topography].valueCodeableConcept = icd3-topography-cs#C020 "dorsal surface of tongue NOS"

* extension[morphology].valueCodeableConcept = ICD3MorphologyCS#8001 "Tumor cells malignant"

* extension[gradeDifferentiation].valueCodeableConcept = degree-of-tumor-differentiation-cs#cancr0013.00002 "G2 (Moderately differentiated)"

* extension[tumorBehavior].valueCodeableConcept = tumor-behavior-cs#cancr0012.00006 "9 - Malignant, unspecified site"

* extension[detectionCircumstance].valueCodeableConcept = detection-circumstance-cs#cancr0017.00001 "Identified in the Onconazorat office"

* extension[iccc3Group][0].valueCodeableConcept = codesystem-iccc-3#III "CNS and miscellaneous intracranial and intraspinal neoplasms"

* subject = Reference(example-patient)

* encounter = Reference(encounter-cancer-example)

* onsetDateTime = "2020-02-10"

* abatementDateTime = "2020-10-10"

* recordedDate = "2020-02-10"

* participant.actor = Reference(example-practitioner-role)
* participant.function = $provenance-participant-type#author "Author"

* stage.summary = tnm-stage-cancer-cs#cancr0019.00004 "Ia"
* stage.assessment = Reference(observation-tnm-stage-group-example)
* stage.type = research-method-cs#cancr0003.00007 "Union for International Cancer Control Stage"

* note.text = "Primary malignant neoplasm of the tongue."