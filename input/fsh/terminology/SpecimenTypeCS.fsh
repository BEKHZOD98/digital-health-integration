CodeSystem: SpecimenTypeCS
Id: specimen-type-cs
Title: "DHIS Specimen Type CodeSystem"
Description: "Local code system of specimen types collected for tuberculosis testing, retained only for concepts that have no 1:1 SNOMED CT equivalent (site groupings, culture media and processing states). Specimen types with an exact SNOMED CT match are represented directly by their SNOMED CT code; the broader/related mappings of the codes below are documented in the DHIS Specimen Type to SNOMED CT ConceptMap."

* insert OriginalCodeSystemDraft(specimen-type-cs)

* #Spec001-0001 "O'pka"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Легочный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pulmonary"

* #Spec001-0006 "Ekstrapulmoner"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внелегочный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Extrapulmonary"

* #Spec001-0023 "Qattiq muhit LY"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Твердая среда ЛЙ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Solid medium LY"

* #Spec001-0024 "Suyuq muhit MGIT"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Жидкая среда MGIT"
  * ^designation[+].language = #en
  * ^designation[=].value = "Liquid medium MGIT"

* #Spec001-0025 "Birlamchi namuna"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Первичный образец"
  * ^designation[+].language = #en
  * ^designation[=].value = "Primary sample"

* #Spec001-0026 "Chokin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Осадок"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sediment"

* #Spec001-0027 "Makrota namunasi cho'kindisi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Осадок образца макроты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Macrota sample sediment"

* #Spec001-0028 "Kultura izolati"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Изолят культуры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Culture isolate"
