CodeSystem: QuantityComparatorCS
Id: quantity-comparator-cs
Title: "Quantity comparator CodeSystem"
Description: "CodeSystem for quantity comparator in Uzbek, Russian and English languages"

* insert SupplementCodeSystemDraft(quantity-comparator-cs, http://hl7.org/fhir/quantity-comparator, 5.0.0)

* #<
  * ^designation[0].language = #ru
  * ^designation[=].value = "Меньше чем"
  * ^designation[+].language = #uz
  * ^designation[=].value = "dan kichik"

* #<=
  * ^designation[0].language = #ru
  * ^designation[=].value = "Меньше или равно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "dan kichik yoki teng"

* #>=
  * ^designation[0].language = #ru
  * ^designation[=].value = "Больше или равно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "dan katta yoki teng"  

* #>
  * ^designation[0].language = #ru
  * ^designation[=].value = "Больше чем"
  * ^designation[+].language = #uz
  * ^designation[=].value = "dan katta" 

* #ad
  * ^designation[0].language = #ru
  * ^designation[=].value = "Достаточно для достижения этого общего количества"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ushbu jami miqdorni yaxshi qilish uchun yetarli"
