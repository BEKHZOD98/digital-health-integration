Instance: narko-and-psix-episode-of-care-conceptmap
InstanceOf: ConceptMap
Usage: #definition
Title: "Narko and Psix Episode Of Care Type Group to SNOMED CT ConceptMap"
Description: "Mapping of Narko and Psix Episode Of Care Type Group to SNOMED CT."

* name = "NarkoAndPsixEpisodeOfCareToSNOMEDCM"
* url = "https://dhp.uz/fhir/integrations/ConceptMap/narko-and-psix-episode-of-care-conceptmap"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* sourceScopeCanonical = Canonical(NarkoAndPsixEpisodeOfCareTypeGroupVS)

* group[+].source = Canonical(NarkoAndPsixEpisodeOfCareTypeGroupCS)
* group[=].target = Canonical(NarkoAndPsixEpisodeOfCareTypeGroupSnomedCS)

* group[=].element[+].code = #narcr0001-00001
* group[=].element[=].display = "Profilaktik guruh"
* group[=].element[=].target.code = #302805002
* group[=].element[=].target.display = "Preventive monitoring (regime/therapy)"
* group[=].element[=].target.relationship = #equivalent

* group[=].element[+].code = #narcr0001-00002
* group[=].element[=].display = "Dispanser guruhi"
* group[=].element[=].target.code = #225419007
* group[=].element[=].target.display = "Surveillance"
* group[=].element[=].target.relationship = #equivalent

* group[=].element[+].code = #psycr0001-00001
* group[=].element[=].display = "Majburiy statsionar davolanish"
* group[=].element[=].target.code = #52748007
* group[=].element[=].target.display = "Involuntary hospital admission (procedure)"
* group[=].element[=].target.relationship = #equivalent