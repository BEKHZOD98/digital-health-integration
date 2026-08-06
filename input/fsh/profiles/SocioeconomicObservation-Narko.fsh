Profile: SocioeconomicObservationNarko
Parent: UZCoreSocioeconomicObservation
Id: socioeconomic-observation-narko
Title: "Narko Socioeconomic Observation"
Description: "Uzbekistan Core Narko Socioeconomic Observation profile, used to define the patient's socioeconomic status"
* ^experimental = true
* ^status = #active
* ^date = "2026-07-27"
* ^publisher = "Uzinfocom"

Instance: example-narko
InstanceOf: SocioeconomicObservationNarko
Title: "Narko Socioeconomic Observation Example"
Description: "Example benefits observation for Salim"
Usage: #example
* status = #final
* code.coding[socioeconomicType] = $sct#82996008 "Social status"
* subject = Reference(example-salim)
* valueCodeableConcept = $social-status#regis0010.00003 "Employed"
* effectiveDateTime = "2026-03-10"
* performer = Reference(example-practitioner)