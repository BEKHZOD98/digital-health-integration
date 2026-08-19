Profile: HepatitisQuestionnaireResponse
Parent: UZCoreQuestionnaireResponse
Id: hepatitis-questionnaire-response
Title: "Hepatitis questionnaire Response"
Description: "Profile for representing responses to a hepatitis-related questionnaire in the context of a digital health integration project. This profile extends the base QuestionnaireResponse resource to include specific elements and extensions relevant to hepatitis patient assessments, such as treatment history, clinical status, and pregnancy-related information."
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier MS 
  * system = $hep-id-sys
  * system ^short = "Hepatitis QuestionnaireResponse identifier system"
  * value ^short = "Unique identifier for the QuestionnaireResponse: UUID"
* partOf ^short = "Patient's occupation-related observation this response is part of"
* partOf only Reference(UZCoreSocioeconomicObservation) 

* questionnaire ^short = "Name/canonical of the questionnaire this response is based on"
* questionnaire only Canonical(Questionnaire)


* subject ^short = "The patient this response belongs to"
* subject only Reference(UZCorePatient) 

* encounter ^short = "Encounter during which this questionnaire response was created"

* author ^short = "The person who added this information"
* author only Reference(UZCorePractitionerRole)

* source ^short = "Person completing the form on behalf of the patient (e.g. parent for a child)"
* source only Reference(UZCoreRelatedPerson)

* item MS
  * ^short = "Defines the encounter during which the treatment plan was created"
  * linkId 1..1 MS
    * ^short = "Corresponding identifier for this item"
  * text 1..1 MS
    * ^short = "Question text"
  * answer 0..* MS
    * ^short = "Answers to the question"
    * value[x] 1..1 MS
      * ^short = "Type of answer (boolean | string | Coding)"  
    * value[x] only boolean or string or Coding
    * valueBoolean MS
      * ^short = "Yes/No type answer"
    * valueString MS
      * ^short = "Free-text answer"
    * valueCoding MS
      * ^short = "Gestational age (Homiladorlik muddati)"
    * valueCoding from HepatitisTrimesterVS (example) 
    * item 0..* MS
      * ^short = "Additional sub-answers"
      * linkId 1..1 MS
        * ^short = "Unique identifier of the item within the questionnaire. Note: if this item is linked to another question, they must share this linkId."
      * text 0..1 MS
        * ^short = "Text of the nested question"
      * answer 0..* MS
        * ^short = "Answers to the nested question"
        * value[x] 1..1 MS
          * ^short = "Unambiguous answer to the question"
        * value[x] only boolean or string
        * valueString MS
          * ^short = "Free-text answer"
        * valueBoolean MS
          * ^short = "Yes/No type answer"

// Instance Example 
Instance: example-hcv-response
InstanceOf: HepatitisQuestionnaireResponse
Description: "Example of anamnesis responses completed by the patient for hepatitis B and C treatment questionnaire"
Usage: #example

* status = #completed
* questionnaire = "https://dhp.uz/fhir/Questionnaire/hepatitis-questionnaire"
* subject = Reference(example-salim)
* authored = "2026-03-19T12:00:00Z"
* author = Reference(muratova-gulshoda-role)

* item[0].linkId = "grp-1"
* item[0].text = "GENERAL INFORMATION"

* item[0].item[0].linkId = "hx-tx-hcv-hbv"
* item[0].item[0].text = "Have you previously received treatment for HCV/HBV?"
* item[0].item[0].answer[0].valueBoolean = true

* item[0].item[1].linkId = "hx-tx-hcv-hbv-meds"
* item[0].item[1].text = "What medications were taken for HCV/HBV?"
* item[0].item[1].answer[0].valueString = "Sofosbuvir + Declatasvir"

