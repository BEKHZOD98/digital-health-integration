ValueSet: FlagStatusVS
Id: flag-status-vs
Title: "Flag Status value set"
Description: "Allowed group for Flag Status in Uzbekistan's health information exchange."

* ^url = "https://dhp.uz/fhir/integrations/ValueSet/flag-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(FlagStatusCS)

* include codes from system $flag-status-cs