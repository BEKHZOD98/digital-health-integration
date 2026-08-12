Profile: HepatitisQuestionnaire
Parent: UZCoreQuestionnaire
Id: hepatitis-questionnaire
Title: "Hepatitis Questionnaire"
Description: "Questionnaire for hepatitis C and hepatitis B history and treatment information"

* ^status = #active
* ^experimental = true


* identifier 0..*
  * system = $hep-id-sys
  * system ^short = "Hepatitis questionnaire identifier system"
  * value ^short = "Unique identifier for the questionnaire: UUID"
* title = "HEPATITIS QUESTIONNAIRE"
  * ^short = "Questionnaire title"
* description = "Clinical Structured Form"
  * ^short = "Natural language description of the questionnaire"

* item.answerOption.valueCoding from http://hl7.org/fhir/ValueSet/prepare-patient-prior-specimen-collection (required)


Instance: HepatitisQuestionnaireExample
InstanceOf: HepatitisQuestionnaire
Usage: #example

* identifier.value = "hepatitis-questionnaire-example"
* title = "HEPATITIS QUESTIONNAIRE"
* subjectType = #Patient
* description = "Clinical Structured Form"
* status = #active

* item.linkId = "grp-1"
* item.text = "GENERAL INFORMATION"
* item.type = #group

* item.item[0].linkId = "hx-tx-hcv-hbv"
* item.item[0].text = "Have you previously received treatment for HCV/HBV?"
* item.item[0].type = #boolean

* item.item[1].linkId = "hx-tx-hcv-hbv-meds"
* item.item[1].text = "What medications were taken for HCV/HBV?"
* item.item[1].type = #string

* item.item[1].enableWhen.question = "hx-tx-hcv-hbv"
* item.item[1].enableWhen.operator = #=
* item.item[1].enableWhen.answerBoolean = true