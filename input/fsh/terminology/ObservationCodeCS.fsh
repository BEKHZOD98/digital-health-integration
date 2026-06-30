CodeSystem: ObservationCodeCS
Id: observation-dhis-code-cs
Title: "DHIS Observation Code CodeSystem"
Description: "Local code system of tuberculosis diagnostic tests and investigations used by the DHIS information system, retained only for tests that have no 1:1 LOINC equivalent (culture medium and assay variants that share a single LOINC code). Tests with an exact LOINC match are represented directly by their LOINC code; the broader/related mappings of the codes below are documented in the DHIS Observation Code to LOINC ConceptMap."

* insert OriginalCodeSystemDraft(observation-dhis-code-cs)

* #Tub002-0004 "Xpert MTB/XDR"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Xpert MTB/XDR"
  * ^designation[+].language = #en
  * ^designation[=].value = "Xpert MTB/XDR"

* #Tub002-0005 "LJ muhitida ekish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Культура на среде Левенштейна–Йенсена"
  * ^designation[+].language = #en
  * ^designation[=].value = "Culture on Löwenstein–Jensen medium"

* #Tub002-0006 "MGIT muhitida ekish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Культура на среде MGIT BACTEC"
  * ^designation[+].language = #en
  * ^designation[=].value = "MGIT BACTEC culture"

* #Tub002-0007 "MGITda fenotipik TLU"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фенотипический ТЛЧ на среде MGIT"
  * ^designation[+].language = #en
  * ^designation[=].value = "Phenotypic DST on MGIT"

* #Tub002-0009 "LPA MTBDR SL"
  * ^designation[0].language = #ru
  * ^designation[=].value = "LPA MTBDR SL (Fql/SLI)"
  * ^designation[+].language = #en
  * ^designation[=].value = "LPA MTBDRsl"
