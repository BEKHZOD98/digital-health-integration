CodeSystem: SpecimenFeatureTypeCS
Id: specimen-feature-type-cs
Title: "DHIS Specimen Feature Type CodeSystem"
Description: "Local code system describing the processing state of a tuberculosis specimen (primary sample, sediment) used in the DHIS information system, retained only for states that have no 1:1 SNOMED CT equivalent. A culture isolate is represented directly by its SNOMED CT code."

* insert OriginalCodeSystemDraft(specimen-feature-type-cs)

* #Spec002-0001 "Birlamchi namuna"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Первичный образец"
  * ^designation[+].language = #en
  * ^designation[=].value = "Primary sample"

* #Spec002-0002 "Chokin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Осадок"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sediment"

* #Spec002-0003 "Makrota namunasi cho'kindisi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Осадок образца макроты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Macrota sample sediment"
