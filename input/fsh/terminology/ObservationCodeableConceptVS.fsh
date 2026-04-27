ValueSet: ObservationCodeableConceptVS
Id: observation-codeable-concept-vs
Title: "Observation codeable concept ValueSet"
Description: "Collection of information on the place of birth of citizens born in the territory of the Republic of Uzbekistan"
* ^experimental = true
* ^url = "https://terminology.dhp.uz/ValueSet/observation-codeable-concept-vs"

* include codes from system observation-codeable-concept-cs
* include codes from system http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
//* include codes from valueset  https://terminology.dhp.uz/fhir/core/ValueSet/observation-interpretation-vs $observation-interpretation
/*
* include observation-interpretation-cs#S
* include observation-interpretation-cs#R
* include observation-interpretation-cs#IND
* include observation-interpretation-cs#DET
* include observation-interpretation-cs#ND
* include observation-interpretation-cs#POS
* include observation-interpretation-cs#NEG

*/
* include $observation-interpretation#S
* include $observation-interpretation#R
* include $observation-interpretation#IND
* include $observation-interpretation#DET
* include $observation-interpretation#ND
* include $observation-interpretation#POS
* include $observation-interpretation#NEG
