ValueSet: SpecimenResVS
Id: specimen-res-vs
Title: "Biological transfusion test result"
Description: "Biological transfusion test results"
* insert IntegrationsValueSet(specimen-res-vs)
* ^status = #draft
* ^experimental = true
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111SnomedSupplementCS)
* include $sct#260385009 "Negative"
* include $sct#10828004 "Positive"
