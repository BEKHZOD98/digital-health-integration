Instance: example-narko
InstanceOf: UZCoreSocioeconomicObservation
Title: "Narko Socioeconomic Observation Example"
Description: "Example benefits observation for Salim"
Usage: #example
* status = #final
* code.coding[socioeconomicType] = $sct#82996008 "Social status"
* subject = Reference(example-salim)
* valueCodeableConcept = $social-status#regis0010.00003 "Employed"
* effectiveDateTime = "2026-03-12"
* performer = Reference(example-psychiatrist-narcologist)