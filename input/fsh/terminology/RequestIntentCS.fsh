CodeSystem: RequestIntentCS
Id: request-intent-cs
Title: "Request Intent Supplement"
Description: "Codes indicating the degree of authority/intentionality associated with a request."
* insert SupplementCodeSystemDraft(request-intent-cs, $request-intent, 5.0.0)

* #proposal
  * ^designation[0].language = #uz
  * ^designation[=].value = "taklif"
  * ^designation[+].language = #ru
  * ^designation[=].value = "предложение"

* #plan
  * ^designation[0].language = #uz
  * ^designation[=].value = "reja"
  * ^designation[+].language = #ru
  * ^designation[=].value = "план"

* #directive
  * ^designation[0].language = #uz
  * ^designation[=].value = "ko'rsatma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "распоряжение"

* #order
  * ^designation[0].language = #uz
  * ^designation[=].value = "tayinlash"
  * ^designation[+].language = #ru
  * ^designation[=].value = "назначение"

* #original-order
  * ^designation[0].language = #uz
  * ^designation[=].value = "birlamchi tayinlash"
  * ^designation[+].language = #ru
  * ^designation[=].value = "первичное назначение"

* #reflex-order
  * ^designation[0].language = #uz
  * ^designation[=].value = "refleks tayinlash"
  * ^designation[+].language = #ru
  * ^designation[=].value = "рефлексное назначение"

* #filler-order
  * ^designation[0].language = #uz
  * ^designation[=].value = "ijrochi tayinlashi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "назначение исполнителя"

* #instance-order
  * ^designation[0].language = #uz
  * ^designation[=].value = "aniq tayinlash"
  * ^designation[+].language = #ru
  * ^designation[=].value = "конкретное назначение"

* #option
  * ^designation[0].language = #uz
  * ^designation[=].value = "variant"
  * ^designation[+].language = #ru
  * ^designation[=].value = "вариант"

