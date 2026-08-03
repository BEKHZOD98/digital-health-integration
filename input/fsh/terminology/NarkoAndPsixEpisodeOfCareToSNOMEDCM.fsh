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
* group[=].element[=].target.code = #25861000087109
* group[=].element[=].target.display = "Mental health and addiction center (environment)"
* group[=].element[=].target.relationship = #equivalent

* group[=].element[+].code = #psycr0001-00001
* group[=].element[=].display = "Majburiy statsionar davolanish"
* group[=].element[=].target.code = #286794000
* group[=].element[=].target.display = "Detained in hospital under the Mental Health Act 1983"
* group[=].element[=].target.relationship = #equivalent