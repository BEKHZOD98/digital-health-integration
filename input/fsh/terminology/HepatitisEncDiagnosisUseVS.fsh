ValueSet: HepatitisEncDiagnosisUseVs
Id: hep-enc-diag-use-vs
Title: "Hepatitis enc diagnosis use valueset"
Description: "Hepatitis enc diagnosis use valueset"
* ^url = "https://dhp.uz/fhir/integrations/ValueSet/hep-enc-diag-use-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(HepatitisEncDiagnosisUseCS)

* include codes from system $hep-enc-diag-use
