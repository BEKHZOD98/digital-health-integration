Instance: registri-flags-conceptmap
InstanceOf: ConceptMap
Usage: #definition
Title: "Registry Flags to SNOMED CT ConceptMap"
Description: "Mapping of Registry Flags to SNOMED CT."

* name = "RegistryFlagsToSNOMEDCM"
* url = "https://dhp.uz/fhir/integrations/ConceptMap/registri-flags-conceptmap"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* sourceScopeCanonical = Canonical(RegistriFlagVS)

* group[+].source = Canonical(RegistriFlagsCS)
* group[=].target = Canonical(RegistryFlagsSnomedCS)

* group[=].element[+].code = #registri0001-00001
* group[=].element[=].display = "Ijtimoiy xavflilik"
* group[=].element[=].target.code = #389315000
* group[=].element[=].target.display = "At risk of harming others"
* group[=].element[=].target.relationship = #equivalent

* group[=].element[+].code = #registri0001-00002
* group[=].element[=].display = "Majburiy davolanish"
* group[=].element[=].target.code = #52748007
* group[=].element[=].target.display = "Involuntary hospital admission"
* group[=].element[=].target.relationship = #equivalent

* group[=].element[+].code = #registri0001-00003
* group[=].element[=].display = "Majburiy ambulatoriya sharoitida davolanish"
* group[=].element[=].target.code = #14866005
* group[=].element[=].target.display = "Hospital-based outpatient mental health clinic (environment)"
* group[=].element[=].target.relationship = #equivalent

* group[=].element[+].code = #registri0001-00004
* group[=].element[=].display = "Majburiy statsionar davolanish"
* group[=].element[=].target.code = #286794000
* group[=].element[=].target.display = "Detained in hospital under the Mental Health Act 1983"
* group[=].element[=].target.relationship = #equivalent

* group[=].element[+].code = #registri0001-00005
* group[=].element[=].display = "Vasiylik ostida"
* group[=].element[=].target.code = #58626002
* group[=].element[=].target.display = "Legal guardian (person)"
* group[=].element[=].target.relationship = #equivalent

* group[=].element[+].code = #registri0001-00006
* group[=].element[=].display = "Nogironlik"
* group[=].element[=].target.code = #21134002
* group[=].element[=].target.display = "Disability (finding)"
* group[=].element[=].target.relationship = #equivalent