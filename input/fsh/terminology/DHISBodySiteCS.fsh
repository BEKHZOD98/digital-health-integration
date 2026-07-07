CodeSystem: DHISBodySiteCS
Id: dhis-body-site-cs
Title: "DHIS Body Site CodeSystem"
Description: "Local code system for body sites used by the DHIS information system, with Russian and English designations."

* insert OriginalCodeSystemDraft(dhis-body-site-cs)

* #Tub007-0001 "O'pka sili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Легочное ТБ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pulmonary TB"

* #Tub007-0002 "O'pkadan tashqari sil"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внелёгочное ТБ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Extrapulmonary TB"

* #Tub007-0003 "Tarqalgan sil"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Генерализованный ТБ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Disseminated TB"
