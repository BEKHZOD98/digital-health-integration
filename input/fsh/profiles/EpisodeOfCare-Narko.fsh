Profile: UZCoreNarkoEpisodeOfCare
Parent: UZCoreEpisodeOfCare
Id: episode-of-care-narko
Title: "Narko Episode Of Care"
Description: "Uzbekistan Core Narko Socioeconomic Observation profile, used to define patient treatment groups"
* ^experimental = true
* ^status = #active
* ^date = "2025-06-08"
* ^publisher = "Uzinfocom"

* type contains groupType 1..1 MS
* type[groupType] from NarkoEpisodeOfCareGroupVS (required)
  * ^short = "National service-type classification of the episode of care"
  * coding.system = Canonical(NarkoEpisodeOfCareGroupCS)

Instance: narko-episodeofcare-example
InstanceOf: UZCoreNarkoEpisodeOfCare
Title: "Example for NarkoEpisodeOfCare"
Description: "Test example of narko episode of care for the UZCoreEpisodeOfCare profile."
Usage: #example

* identifier[0].system = "https://dhp.uz/fhir/core/sid/reg/uz/narko"
* identifier[0].value = "EOC-2025-001"

* status = #active

* type[groupType] = narko-episode-of-care-group-cs#narcr0001-00001 "Preventive group"

* type[serviceType] = https://terminology.dhp.uz/fhir/core/CodeSystem/episode-of-care-type-cs#mserv-0001-00004 "Treatment services"

* diagnosis[0].condition = Reference(example-headache)
* diagnosis[0].use.coding[0].system = "http://terminology.hl7.org/CodeSystem/diagnosis-role"
* diagnosis[0].use.coding[0].code = #DD
* diagnosis[0].use.text = "Primary diagnosis"

* patient = Reference(example-salim)

* managingOrganization = Reference(example-organization)

* period.start = "2026-02-12"

* careManager = Reference(example-practitioner)

