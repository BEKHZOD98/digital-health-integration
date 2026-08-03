Instance: type-resource-conceptmap
InstanceOf: ConceptMap
Usage: #definition

Title: "Type Resource to SNOMED CT ConceptMap"
Description: "Mapping of Type Resource codes to SNOMED CT."

* name = "TypeResourceToSNOMEDCM"
* url = "https://dhp.uz/fhir/integrations/ConceptMap/type-resource-conceptmap"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* sourceScopeCanonical = Canonical(NarkoTypeResourceVS)


* group[+].source = Canonical(TypeResourceCS)
* group[=].target = Canonical(TypeResourceSnomedCS)

* group[=].element[+].code = #type-res-0002-0001
* group[=].element[=].display = "Komissiya qarori"
* group[=].element[=].target.code = #365923008
* group[=].element[=].target.display = "Finding related to decision making (finding)"
* group[=].element[=].target.relationship = #equivalent