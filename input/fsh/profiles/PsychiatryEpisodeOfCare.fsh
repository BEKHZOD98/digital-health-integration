Profile: PsychiatryEpisodeOfCare
Parent: UZCoreEpisodeOfCare
Id: psychiatry-episode-of-care
Title: "Psix Episode of Care Profile"
Description: "Episode of care profile for the Psix system."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* type contains group 1..1 MS
* type[group] from NarcologyPsychiatryEpisodeOfCareTypeGroupVS (required)
* type[group].coding.system = Canonical(NarcologyPsychiatryEpisodeOfCareTypeGroupCS)



Instance: example-psychiatry-episode-of-care
InstanceOf: PsychiatryEpisodeOfCare
Title: "Psix Episode of Care Profile Instance"
Description: "Example episode of care representing a patient's compulsory inpatient treatment episode in the Psix system."
Usage: #example

* status = $episode-of-care-status#active "Active"

* type[serviceType] = $episode-of-care-type#mserv-0001-00004 "Treatment services"
* type[group] = narcology-psychiatry-episode-of-care-type-group-cs#narcr0001-00001 "Preventive group"

* diagnosis[0].condition.concept = $icd-10#F10.2 "Mental and behavioural disorders due to use of alcohol : Dependence syndrome"
* diagnosis[0].use = $encounter-diagnosis-use-cs#working "Working"
* patient = Reference(Patient/example-patient-john)
* managingOrganization = Reference(example-psychiatry-center)
* period.start = "2026-08-15"
* careManager = Reference(example-commission-psychiatrist-role)