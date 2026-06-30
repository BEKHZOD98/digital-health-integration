Instance: specimen-type-conceptmap
InstanceOf: ConceptMap
Usage: #definition
Title: "Tuberculosis specimen type local codes to SNOMED CT"
Description: "Maps the local DHIS specimen type codes that have no 1:1 SNOMED CT equivalent (site groupings and culture media) to their closest (broader or related) SNOMED CT concept. Specimen types with an exact SNOMED CT match are represented directly by SNOMED CT and are not listed here."
* url = "https://dhp.uz/fhir/integrations/ConceptMap/specimen-type-conceptmap"
* name = "SpecimenTypesCodeToSnomed"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group[+].source = Canonical(SpecimenTypeCS)
* group[=].target = $sct
* targetScopeCanonical = $sct-vs

* group[=].element[+].code = #Spec001-0001
* group[=].element[=].display = "O'pka"
* group[=].element[=].target[+].code = #258603007
* group[=].element[=].target[=].display = "Respiratory specimen"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #Spec001-0006
* group[=].element[=].display = "Ekstrapulmoner"
* group[=].element[=].target[+].code = #123038009
* group[=].element[=].target[=].display = "Specimen"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #Spec001-0023
* group[=].element[=].display = "Qattiq muhit LY"
* group[=].element[=].target[+].code = #119303007
* group[=].element[=].target[=].display = "Microbial isolate"
* group[=].element[=].target[=].relationship = #related-to
