CodeSystem: ProcessingOperationCS
Id: processing-operation-cs
Title: "Blood component processing operations"
Description: "Local DHP operations selected when requesting secondary processing of a blood component."
* insert OriginalCodeSystemDraft(processing-operation-cs)

* #bcproc-0001-00001 "Yuvish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Обмывание"
  * ^designation[+].language = #en
  * ^designation[=].value = "Washing"
* #bcproc-0001-00002 "Nurlantirish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Облучение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Irradiation"
* #bcproc-0001-00003 "Muzlatish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Заморозка"
  * ^designation[+].language = #en
  * ^designation[=].value = "Freezing"
* #bcproc-0001-00004 "Eritish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Разморозка"
  * ^designation[+].language = #en
  * ^designation[=].value = "Thawing"
