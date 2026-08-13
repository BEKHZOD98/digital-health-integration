Profile: ObservationNarko
Parent: UZCoreObservation
Id: observation-narko
Title: "Narko Observation"
Description: "Uzbekistan Core Narko Observation profile, used to contain notes, findings, and recommendations issued by the Medical Advisory Commission"
* ^experimental = true
* ^status = #active
* ^date = "2026-07-27"
* ^publisher = "Uzinfocom"

* code 1..1 MS
* code from NarkoTypeResourceVS

Instance: example-narko-observation
InstanceOf: ObservationNarko
Usage: #example
Title: "Narko Observation Example"
Description: "Example of a body height vital sign  observation"
* status = #final
* code = type-resource-cs#type-res-0002-0001 "The commission's decision"
* subject = Reference(example-salim)
* encounter = Reference(example-narko-encounter)
* performer = Reference(PractitionerRole/example-psychiatrist-narcologist)
* effectiveDateTime = "2026-03-12"
* valueString = "Toshmatov Toshmat Toshmatovich"
* note[0].authorString = "Medical Consultation Commission"
* note[0].text = "Medical commission decision recorded for a patient with harmful stimulant use."