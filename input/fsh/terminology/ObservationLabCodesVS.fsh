ValueSet: ObservationLabCodesVS
Id: lab-observation-pan-vs
Title: "Laboratory Observation Panel"
Description: "Defines Laboratory Observation Panel in Uzbek and Russian"
<<<<<<< HEAD
* ^experimental = true

* include codes from system lab-observation-pan-cs
=======
* ^url = "https://terminology.dhp.uz/fhir/integration/ValueSet/lab-observation-pan-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(LaboratoryObservationPanelCS)

* include codes from system lab-observation-pan-cs
>>>>>>> 6a3f730 (initial commit)
