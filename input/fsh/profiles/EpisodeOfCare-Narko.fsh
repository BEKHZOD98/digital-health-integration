Profile: UZCoreNarkoEpisodeOfCare
Parent: UZCoreEpisodeOfCare
Id: episode-of-care-narko
Title: "Narko Episode Of Care"
Description: "Uzbekistan Core Narko Socioeconomic Observation profile, used to define patient treatment groups"
* ^experimental = true
* ^status = #active
* ^date = "2026-07-27"
* ^publisher = "Uzinfocom"

* type.extension contains EpisodeOfCareTypeGroup named group 1..1 MS

Instance: narko-episodeofcare-example
InstanceOf: UZCoreNarkoEpisodeOfCare
Title: "Narko EpisodeOfCare Example"
Description: "Test example of narko episode of care for the UZCoreEpisodeOfCare profile."
Usage: #example

* identifier[0].system = "https://dhp.uz/fhir/core/sid/reg/uz/narko"
* identifier[0].value = "EOC-2025-001"

* status = #active

* type[serviceType] =  $episode-of-care-type#mserv-0001-00004 "Treatment services"

* type[0].extension[EpisodeOfCareTypeGroup].valueCodeableConcept = narko-and-psix-episode-of-care-group-cs#narcr0001-00001 "Preventive group"

* diagnosis[0].condition = Reference(example-headache)
* diagnosis[0].use = $encounter-diagnosis-use-cs#working "Working"

* patient = Reference(example-salim)

* managingOrganization = Reference(organization-123)

* period.start = "2026-02-12"

* careManager = Reference(example-practitioner)

