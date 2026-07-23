CodeSystem: DHISBodySiteCS
Id: dhis-body-site-cs
Title: "DHIS Body Site CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for body site codes used in DHIS."

* insert SupplementCodeSystemDraft(
    dhis-body-site-cs,
    $sct,
    2026.1.0
)

* #154283005 "Pulmonary tuberculosis"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O‘pka sili"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лёгочное ТБ"

* #423997002 "Tuberculosis, extrapulmonary"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O‘pkadan tashqari sil"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Внелёгочное ТБ"

* #182159002 "Disseminated tuberculosis"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tarqalgan sil"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Генерализованный ТБ"