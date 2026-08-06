CodeSystem: RegistriFlagsSnomedCS
Id: registri-flags-snomed-cs
Title: "Registri Flags SNOMED CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for registri flag concepts used in Uzbekistan."

* insert SupplementCodeSystemDraft(
    registri-flags-snomed-cs,
    $sct,
    2026.1.0
)

* #389315000 "At risk of harming others"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Социальная опасность"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ijtimoiy xavflilik"

* #52748007 "Involuntary hospital admission"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Принудительное лечение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Majburiy davolanish"

* #14866005 "Hospital-based outpatient mental health clinic (environment)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Амбулаторное принудительное лечение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Majburiy ambulatoriya sharoitida davolanish"

* #286794000 "Detained in hospital under the Mental Health Act 1983"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Стационарное принудительное лечение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Majburiy statsionar davolanish"

* #58626002 "Legal guardian (person)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Под опекой"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Vasiylik ostida"

* #21134002 "Disability (finding)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инвалидность"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Nogironlik"