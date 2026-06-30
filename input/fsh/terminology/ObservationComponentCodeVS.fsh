ValueSet: ObservationComponentCodeVS
Id: observation-component-code-vs
Title: "DHIS Observation Component Code ValueSet"
Description: "Value set of tuberculosis observation component codes. Plain drug-name DST agents use their LOINC [Susceptibility] code directly; concentration-bearing agents and non-drug component codes use local codes from the DHIS observation component code system."
* ^url = "https://terminology.dhp.uz/ValueSet/observation-component-code-vs"
* ^experimental = true
* ^language = #uz

* include codes from system observation-component-code-cs

* include $loinc#18974-6
* include $loinc#20629-2
* include $loinc#18860-7
* include $loinc#18935-7
