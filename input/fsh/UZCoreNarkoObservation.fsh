Profile: UZCoreNarkoObservation
Parent: UZCoreObservation
Id: uz-core-narko-observation
Title: "UZ Core Narko Observation"
Description: "Uzbekistan Core Narko Observation profile, used to contain notes, findings, and recommendations issued by the Medical Advisory Commission"
* ^experimental = true
* ^status = #active
* ^date = "2025-06-08"
* ^publisher = "Uzinfocom"

* code 1..1 MS
* code from NarkoObservationVS 

Instance: example-narko-observation
InstanceOf: UZCoreNarkoObservation
Usage: #example
Description: "Example of a body height vital sign  observation"
* status = #final
* code = narko-observation-cs#narcr0002-0001 "The commission's decision"
* subject = Reference(example-salim)
* encounter = Reference(example-encounter)
* effectiveDateTime = "1999-07-02"
* performer = Reference(example-practitioner)
