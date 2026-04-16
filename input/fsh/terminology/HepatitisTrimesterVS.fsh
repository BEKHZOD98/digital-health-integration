ValueSet: HepatitisTrimesterVS
Id: hepatitis-trimester-vs
Title: "Hepatitis trimester ValueSet"
Description: "ValueSet for hepatitis trimester"

* ^experimental = true

* include $sct#307159006 "Pregnancy time period" 
  * ^designation[0].language = #ru
  * ^designation[=].value = "Срок беременности"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Homiladorlik davri"
