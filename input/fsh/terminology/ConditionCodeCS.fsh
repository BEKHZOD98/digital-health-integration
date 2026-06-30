CodeSystem: ConditionCodeCS
Id: condition-code-cs
Title: "DHIS Condition Code CodeSystem"
Description: "Local code system of tuberculosis diagnoses and comorbidities used by the DHIS information system, retained only for concepts that have no 1:1 SNOMED CT equivalent. Concepts with an exact SNOMED CT match are represented directly by their SNOMED CT code; the broader/related mappings of the codes below are documented in the DHIS Condition Code to SNOMED CT ConceptMap."

* insert OriginalCodeSystemDraft(condition-code-cs)

* #tub001-0009 "Fibroz-kavernoz o‘pka sili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фиброзно-кавернозный туберкулёз"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fibro-cavitary pulmonary tuberculosis"

* #tub001-0025 "Surunkali nonspesifik o'pka kasalliklari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хронические неспецифические заболевания легких"
  * ^designation[+].language = #en
  * ^designation[=].value = "Chronic obstructive lung disease"

* #tub001-0027 "Ruhiy kasallik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Психическое заболевание"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mental illness"

* #tub001-0028 "Onkologiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Онкология"
  * ^designation[+].language = #en
  * ^designation[=].value = "Oncology"
