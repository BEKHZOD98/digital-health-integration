CodeSystem: DischargeCardSlotCS
Id: discharge-card-slot
Title: "Discharge Statistical Card Form Slot Code System"
Description: "Form-specific field slots for the discharge statistical card family (Forms 066 and 066-1), used to identify fields that share the same clinical code and would otherwise be told apart only by position or free text - for example the opening and closing dates of the temporary disability certificate (uz/ru/en)."
* insert OriginalCodeSystemDraft(discharge-card-slot)

* #disability-period-start "Ochilgan sana"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дата открытия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Disability period start date"

* #disability-period-end "Berkitilgan sana"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дата закрытия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Disability period end date"
