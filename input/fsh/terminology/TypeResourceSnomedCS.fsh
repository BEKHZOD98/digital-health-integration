CodeSystem: TypeResourceSnomedCS
Id: type-resource-snomed-cs
Title: "Type Resource Snomed CodeSystem"
Description: "Type Resource Snomed CodeSystem used in Uzbekistan healthcare system."

* insert SupplementCodeSystemDraft(
    type-resource-snomed-cs,
    $sct,
    2026.1.0
)

* #444804000 "Multidisciplinary care conference report (record artifact)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Решение комиссии"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Komissiya qarori"