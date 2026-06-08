CodeSystem: HepatitisEncDiagnosisUseCS
Id: hep-enc-diag-use-cs
Title: "Hepatitis enc diagnosis use codesystem"
Description: "Description of hepatitis enc diagnosis use codesystem"

* insert SupplementCodeSystemDraft(hep-enc-diag-use-cs,$hep-enc-diag-use, 5.0.0)

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
