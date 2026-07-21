Profile: UZCoreNarkoSocioeconomicObservation
Parent: UZCoreSocioeconomicObservation
Id: uz-core-narko-socioeconomic-observation
Title: "UZ Core Narko Socioeconomic Observation"
Description: "Uzbekistan Core Narko Socioeconomic Observation profile, used to define the patient's socioeconomic status"
* ^experimental = true
* ^status = #active
* ^date = "2025-06-08"
* ^publisher = "Uzinfocom"

Instance: example-narko
InstanceOf: UZCoreNarkoSocioeconomicObservation
Description: "Example benefits observation for Salim"
Usage: #example
* language = #uz
* status = #final
* code.coding[socioeconomicType] = $sct#82996008 "Social status"
* subject = Reference(example-salim)
* valueCodeableConcept = $sct#14679004 "Occupation"
* effectiveDateTime = "2026-03-10"