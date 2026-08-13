CodeSystem: RegistriFlagsSnomedCS
Id: registri-flags-snomed-cs
Title: "Registri Flags SNOMED CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for registri flag concepts used in Uzbekistan."

* insert SupplementCodeSystemDraft(
    registri-flags-snomed-cs,
    $sct,
    2026.1.0
)

* #129707006 "At increased risk for other-directed violence (finding)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Социальная опасность"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ijtimoiy xavflilik"

* #303163003 "Treatments administered under the provisions of the law"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Амбулаторное принудительное лечение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Majburiy ambulatoriya sharoitida davolanish"

* #1193838006 "Legal guardian status"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Под опекой"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Vasiylik ostida"

* #21134002 "Disability (finding)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инвалидность"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Nogironlik"