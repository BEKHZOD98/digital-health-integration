ValueSet: BldAboGroupVS
Id: bld-abo-group-vs
Title: "Blood abo group"
Description: "Blood ABO blood groups"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/bld-abo-group-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = $blood-group-cs

* include $sct#58460004 "I guruh (O)"
* include $sct#112144000 "II guruh (A)"
* include $sct#112149005 "Группа III (B)"
* include $sct#165743006 "Группа IV (AB)"

