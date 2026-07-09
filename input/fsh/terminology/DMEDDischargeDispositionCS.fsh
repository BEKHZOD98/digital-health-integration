CodeSystem: DMEDDischargeDispositionCS
Id: dmed-discharge-disposition-cs
Title: "DMED Discharge Disposition CodeSystem"
Description: "DMED discharge disposition codes for Encounter 066."
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"

* #enc-discharge-disposition-0001-00001	"Homiladorlikning 28-haftasidan keyin vafot etdi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Скончалась после 28й недели беременности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Deceased after 28 weeks of pregnancy"

* #enc-discharge-disposition-0001-00002	"Tug'ruqdan keyin vafot etdi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Скончалась после родов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Deceased after childbirth"

* #enc-discharge-disposition-0001-00003	"Homiladorlikning 28-haftasigacha vafot etdi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Скончалась до 28й недели беременности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Deceased before 28 weeks of pregnancy"

* #enc-discharge-disposition-0001-00004	"Tug'ruqqacha vafot etdi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Скончалась до родов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Deceased before childbirth"

* #enc-discharge-disposition-0001-00005	"Qabul bo'limida vafot etdi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Скончался(ась) в приемном покое"
  * ^designation[+].language = #en
  * ^designation[=].value = "Deceased in the emergency department"

* #enc-discharge-disposition-0001-00006	"Shifoxonadan sog'lom holatda chiqarildi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Выписан из больницы: здоров"
  * ^designation[+].language = #en
  * ^designation[=].value = "Discharged from hospital: healthy"

* #enc-discharge-disposition-0001-00007	"Shifoxonadan o'zgarishsiz chiqarildi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Выписан из больницы: без изменений"
  * ^designation[+].language = #en
  * ^designation[=].value = "Discharged from hospital: no change"

* #enc-discharge-disposition-0001-00008	"Shifoxonadan biroz yaxshilanish bilan chiqarildi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Выписан из больницы: незначительное улучшение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Discharged from hospital: slight improvement"
