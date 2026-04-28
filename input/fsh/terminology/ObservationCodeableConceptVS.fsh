ValueSet: ObservationCodeableConceptVS
Id: observation-codeable-concept-vs
Title: "Observation codeable concept ValueSet"
Description: "Collection of information on the place of birth of citizens born in the territory of the Republic of Uzbekistan"
* ^experimental = true
* ^url = "https://terminology.dhp.uz/ValueSet/observation-codeable-concept-vs"

* include codes from system observation-codeable-concept-cs
* include codes from system http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation

* include $observation-interpretation#S
* include $observation-interpretation#R
* include $observation-interpretation#IND
* include $observation-interpretation#DET
* include $observation-interpretation#ND
* include $observation-interpretation#POS
* include $observation-interpretation#NEG
