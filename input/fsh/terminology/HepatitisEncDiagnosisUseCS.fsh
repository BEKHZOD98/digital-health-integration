CodeSystem: HepatitisEncDiagnosisUseCS
Id: hep-enc-diag-use-cs
Title: "Hepatitis enc diagnosis use codesystem"
Description: "Description of hepatitis enc diagnosis use codesystem"
* ^experimental = true
* ^content = #supplement
* ^supplements = $hep-enc-diag-use
* ^version = "5.0.0"
* ^language = #en

* #working
  * ^designation[+].language = #ru
  * ^designation[=].value = "Работающий"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ishlamoqda"

* #final
  * ^designation[+].language = #ru
  * ^designation[=].value = "Финал"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yakuniy"
