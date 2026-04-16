ValueSet: HepatitisConditionOutcomeCodesVS
Id: hep-condition-outcome-codes-vs
Title: "Hepatitis condition outcome codes valueset"
Description: "ValueSet for hepatitis condition outcome codes"
* ^experimental = true
* ^status = #active

* include $sct#1137679005 "Dori-darmonlar yaxshi ta'sir etdi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хороший ответ на лечение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Good response to medication"

* include $sct#405786003 "Dori-darmonlar ta'sir etmadi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плохой ответ на лечение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Poor response to treatment"
