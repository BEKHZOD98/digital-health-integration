/*
Profile: HepatitisQuestionnaire
Parent: Questionnaire
Id: hepatitis-questionnaire
Title: "Hepatitis questionnaire profile"
Description: "Profile for representing a questionnaire related to hepatitis patients in the context of a digital health integration project. This profile extends the base Questionnaire resource to include specific elements and extensions relevant to hepatitis patient assessments, such as treatment history, clinical status, and pregnancy-related information."
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 1..* MS

* title 1..1 MS
* title ^short = "HEPATITIS QUESTIONNAIRE"
* title.extension contains $translation-extension named translation 0..* MS // Structure definitionga translation definition qoshish kk
* description 0..1 MS
* description.extension contains $translation-extension named translation 0..* MS

* subjectType MS 
* subjectType from $fhir-types
* status from $publication-status (required)
* status = #active

* item 0..* MS
  * linkId 1..1 MS
  * text 0..1 MS
  * type from $item-type (required)

  * item 0..* MS
    * linkId 1..1 MS
    * text 0..1 MS
    * type from $item-type (required)

    * enableWhen 0..* MS
      * question 1..1 MS
      * operator from $questionnaire-enable-operator (required)
      * answer[x] 1..1 MS

    * answerOption 0..* MS
      * value[x] only string or Coding
      * valueCoding from $sct (example)


// Instance Example
Instance: example-hepatitis-questionnaire
InstanceOf: HepatitisQuestionnaire
Description: "Hepatitis B and C treatment questionnaire"
Usage: #example
* status = #active
* title = "HEPATITIS QUESTIONNAIRE"
* identifier.value = "HCV-HBV-QS-2026"

* item[0]
  * linkId = "grp-1"
  * text = "MAIN INFORMATION"
  * type = #group 

  * item[0]
    * linkId = "hx-tx-hcv-hbv"
    * text = "Has treatment for HCV/HBV been conducted in the past (in the patient's history)?"
    * type = #boolean

  * item[1]
    * linkId = "hx-tx-hcv-hbv-meds"
    * text = "What medications were taken against HCV/HBV?"
    * type = #string
    * enableWhen[0]
      * question = "hx-tx-hcv-hbv"
      * operator = #=
      * answerBoolean = true

* item[1]
  * linkId = "grp-pregnancy"
  * text = "Gynecological treatment / Pregnancy"
  * type = #group

  * item[0]
    * linkId = "pregnancy-trimester"
    * text = "Pregnancy duration (Homiladorlik muddati)"
    * type = #coding
    * answerOption[0].valueCoding = $sct#707723000 "Twenty four hours after peritoneal dialysis"
*/
