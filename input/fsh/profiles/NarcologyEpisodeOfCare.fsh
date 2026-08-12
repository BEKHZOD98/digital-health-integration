Profile: NarkoEpisodeOfCare
Parent: UZCoreEpisodeOfCare
Id: episode-of-care-narko
Title: "Narko Episode Of Care"
Description: "Uzbekistan Core Narko Socioeconomic Observation profile, used to define patient treatment groups"
* ^experimental = true
* ^status = #active
* ^date = "2026-07-27"
* ^publisher = "Uzinfocom"

* type MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "coding.system"
  * ^slicing.rules = #open
* type contains group 1..1 MS
* type[group] from NarkoAndPsixEpisodeOfCareTypeGroupVS (required)
* type[group].coding.system = Canonical(NarkoAndPsixEpisodeOfCareTypeGroupCS)

Instance: narko-episodeofcare-example
InstanceOf: NarkoEpisodeOfCare
Title: "Narko EpisodeOfCare Example"
Description: "Test example of narko episode of care for the UZCoreEpisodeOfCare profile."
Usage: #example

* identifier[0].system = "https://dhp.uz/fhir/core/sid/reg/uz/narco"
* identifier[0].value = "EOC-2026-002"

* status = #active

* type[serviceType] =  $episode-of-care-type#mserv-0001-00004 "Treatment services"
* type[group] = narko-and-psix-episode-of-care-group-cs#narcr0001-00001 "Preventive group"


* diagnosis[0].condition = Reference(Condition/example-narko-condition)
* diagnosis[0].use = $encounter-diagnosis-use-cs#working "Working"

* patient = Reference(example-salim)

* managingOrganization = Reference(organization-123)

* period.start = "2026-03-10"

* careManager = Reference(example-psychiatrist-narcologist)

