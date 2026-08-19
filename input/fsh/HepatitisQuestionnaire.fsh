Profile: HepatitisQuestionnaire
Parent: UZCoreQuestionnaire
Id: hepatitis-questionnaire
Title: "Hepatitis Questionnaire"
Description: "Questionnaire for hepatitis C and hepatitis B history and treatment information"

* ^status = #active
* ^experimental = true


* identifier 0..* MS
  * system = $hep-id-sys
  * system ^short = "Hepatitis questionnaire identifier system"
  * value ^short = "Unique identifier for the questionnaire: UUID"
* identifier.type 0..1 MS 
* identifier.type from $identifier-type-vs (required) 

* quest

* item.answerOption.valueCoding from HepatitisTrimesterVS (required)


Instance: example-hcv-questionnaire
InstanceOf: HepatitisQuestionnaire
Description: "Example of Hepatitis C and B patient history questionnaire"
Usage: #example

* language = #en
* status = #active
* url = "https://dhp.uz/fhir/Questionnaire/hepatitis-questionnaire"
* identifier
  * system = $hep-id-sys 
  * value = "HQ-2026-0813"
  * type.coding
    * system = $v2-0203
    * code = #PHC
    * display = "Public Health Case Identifier"
  * use = #official

* title = "HEPATITIS QUESTIONNAIRE"
* subjectType = #Patient
* description = "Clinical Structured Form"

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

