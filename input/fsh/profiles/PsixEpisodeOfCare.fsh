Profile: PsixEpisodeOfCare
Parent: UZCoreEpisodeOfCare
Id: psix-episode-of-care
Title: "Psix Episode of Care Profile"
Description: "Episode of care profile for the Psix system."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"


* type.extension contains EpisodeOfCareTypeGroup named group 1..1 MS


Instance: example-psix-episode-of-care
InstanceOf: PsixEpisodeOfCare
Description: "Example episode of care representing a patient's compulsory inpatient treatment episode in the Psix system."
Usage: #example

* status = $episode-of-care-status#active "Active"

* type[0].coding.system = "https://terminology.dhp.uz/fhir/core/CodeSystem/episode-of-care-type-cs"
* type[0].coding.code = #mserv-0001-00004
* type[0].text = "Treatment services"

* type[0].extension[EpisodeOfCareTypeGroup].valueCodeableConcept =
    psix-episode-of-care-type-group-cs#psycr0001-00001 "Compulsory inpatient treatment"

* diagnosis[0].condition.concept = $icd-10#F10.2 "Mental and behavioural disorders due to use of alcohol : Dependence syndrome"
* diagnosis[0].use = $encounter-diagnosis-use-cs#working "Working"
* patient = Reference(Patient/example-patient-john)
* managingOrganization = Reference(Organization/example-organization)
* period.start = "2026-02-12"
* careManager = Reference(PractitionerRole/practitionerrole-001)