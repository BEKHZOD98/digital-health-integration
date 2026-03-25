CodeSystem: HepatitisEpisodeOfCareStatusCS
Id: hep-episode-of-care-status-cs 
Title: "Hepatitis episode of care status codesystem"
Description: "Description of episode of care status"

* insert OriginalCodeSystemDraft(hep-episode-of-care-status-cs)

* #planned "Rejalashtirilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В процессе планирования"
  * ^designation[0].language = #en
  * ^designation[=].value = "Planned "

* #waitlist "Kutish ro'yxati"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В списке ожидания"
  * ^designation[0].language = #en
  * ^designation[=].value = "Waitlist"

* #active "Faol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Активно"
  * ^designation[0].language = #en
  * ^designation[=].value = "Active"

* #onhold "Kutishda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В режиме ожидания"
  * ^designation[0].language = #en
  * ^designation[=].value = "On Hold "

* #finished "Tugallangan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Завершено"
  * ^designation[0].language = #en
  * ^designation[=].value = "Finished "

* #cancelled "Bekor qilingan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отменено"
  * ^designation[0].language = #en
  * ^designation[=].value = "Cancelled"

* #entered-in-error "Xatolik bilan kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Введено по ошибке"
  * ^designation[0].language = #en
  * ^designation[=].value = "Entered in Error"