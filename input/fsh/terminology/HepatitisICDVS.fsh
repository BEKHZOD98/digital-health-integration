ValueSet: HepatitisICDVS
Id: hep-icd-vs
Title: "Hepatitis ICD-10 codes valueset"
Description: "ValueSet for hepatitis ICD-10 codes"

* ^url = "https://dhp.uz/fhir/integrations/ValueSet/hep-icd-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(HepatitisICDCS)

* include codes from system $icd-10 where concept is-a #B15
* include codes from system $icd-10 where concept is-a #B16
* include codes from system $icd-10 where concept is-a #B17
* include codes from system $icd-10 where concept is-a #B18
* include codes from system $icd-10 where concept is-a #B19

* include $icd-10#K74.0
* include $icd-10#K74.6



