ValueSet: ObservationCodeableConceptVS
Id: observation-codeable-concept-vs
Title: "DHIS Observation Result ValueSet"
Description: "Value set of coded tuberculosis test results for use in Observation.valueCodeableConcept. Identified mycobacterial species and standard result qualifiers are expressed as SNOMED CT codes; smear/culture grades, processing states and resistance-band outcomes that have no 1:1 standard equivalent use local codes; HL7 observation interpretation codes complete the set."
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

* include $sct#113858008
* include $sct#110379001
* include $sct#63069005
* include $sct#83723009
* include $sct#73337005
* include $sct#113838007
* include $sct#24871004
* include $sct#83841006
* include $sct#20141004
* include $sct#113851002
* include $sct#1507005
* include $sct#73576007
* include $sct#58869008
* include $sct#113859000
* include $sct#58663006
* include $sct#243368001
* include $sct#260405006
