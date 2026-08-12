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
* group[=].target = Canonical(RegistriFlagsSnomedCS)

* group[=].element[+].code = #registri0001-00001
* group[=].element[=].display = "Ijtimoiy xavflilik"
* group[=].element[=].target.code = #129707006
* group[=].element[=].target.display = "At increased risk for other-directed violence (finding)"
* group[=].element[=].target.relationship = #equivalent

* group[=].element[+].code = #registri0001-00002
* group[=].element[=].display = "Majburiy davolanish"
* group[=].element[=].target.code = #303163003
* group[=].element[=].target.display = "Treatments administered under the provisions of the law"
* group[=].element[=].target.relationship = #source-is-narrower-than-target

* group[=].element[+].code = #registri0001-00003
* group[=].element[=].display = "Majburiy ambulatoriya sharoitida davolanish"
* group[=].element[=].target.code = #303163003
* group[=].element[=].target.display = "Treatments administered under the provisions of the law"
* group[=].element[=].target.relationship = #source-is-narrower-than-target

* group[=].element[+].code = #registri0001-00005
* group[=].element[=].display = "Vasiylik ostida"
* group[=].element[=].target.code = #1193838006
* group[=].element[=].target.display = "Legal guardian status"
* group[=].element[=].target.relationship = #equivalent

* group[=].element[+].code = #registri0001-00006
* group[=].element[=].display = "Nogironlik"
* group[=].element[=].target.code = #21134002
* group[=].element[=].target.display = "Disability (finding)"
* group[=].element[=].target.relationship = #equivalent