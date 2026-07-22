CodeSystem: TypeResourceCS
Id: type-resource-cs
Title: "Type Resource CodeSystem"
Description: "Type Resource CodeSystem used in Uzbekistan healthcare system."

* insert OriginalCodeSystemDraft(type-resource-cs)

* #type-res-0002-0001 "Komissiya qarori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Решение комиссии"
  * ^designation[+].language = #en
  * ^designation[=].value = "The commission's decision"

// this codesystem will be used in psix so it is added and not called in NarkoTypeResourceVS
* #type-res-0002-0002 "Bayonnoma raqami/sud nomi"
  * ^designation[0].language = #ru
  * ^designation[0].value = "Номер протокола/название суда"
  * ^designation[+].language = #en
  * ^designation[=].value = "Protocol number/court name"