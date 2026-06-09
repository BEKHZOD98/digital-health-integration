CodeSystem: RequestStatusCS
Id: request-status-cs
Title: "Request Status"
Description: "Codesystem for service request status codes with Uzbek and Russian translations"
* insert SupplementCodeSystemDraft(request-status-cs, $request-status, 5.0.0 )
* #draft
  * ^designation[0].language = #uz
  * ^designation[=].value = "qoralama"
  * ^designation[+].language = #ru
  * ^designation[=].value = "черновик"

* #active
  * ^designation[0].language = #uz
  * ^designation[=].value = "faol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "активен"

* #on-hold
  * ^designation[0].language = #uz
  * ^designation[=].value = "vaqtincha to'xtatilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "приостановлен"

* #revoked
  * ^designation[0].language = #uz
  * ^designation[=].value = "bekor qilingan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "отменён"

* #completed
  * ^designation[0].language = #uz
  * ^designation[=].value = "bajarilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "выполнен"

* #entered-in-error
  * ^designation[0].language = #uz
  * ^designation[=].value = "xato bilan kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "введён по ошибке"

* #unknown
  * ^designation[0].language = #uz
  * ^designation[=].value = "noma'lum"
  * ^designation[+].language = #ru
  * ^designation[=].value = "неизвестен"
