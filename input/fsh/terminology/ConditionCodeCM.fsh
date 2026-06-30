Instance: tuberculosis-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Tuberculosis local codes to SNOMED CT"
Description: "Maps the local DHIS tuberculosis/comorbidity codes that have no 1:1 SNOMED CT equivalent to their closest (broader or related) SNOMED CT concept. Concepts with an exact SNOMED CT match are represented directly by SNOMED CT and are not listed here."
* url = "https://dhp.uz/fhir/integrations/ConceptMap/tuberculosis-to-snomed"
* name = "TuberculosisToSnomed"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(ConditionCodeCS)
* sourceScopeCanonical = Canonical(ConditionCodeVS)
* group.target = $sct
* targetScopeCanonical = $sct-vs

* group.element[+].code = #tub001-0009
* group.element[=].display = "Fibroz-kavernoz o‘pka sili"
* group.element[=].target[+].code = #186177005
* group.element[=].target[=].display = "Cavitary pulmonary tuberculosis"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #tub001-0025
* group.element[=].display = "Surunkali nonspesifik o'pka kasalliklari"
* group.element[=].target[+].code = #13645005
* group.element[=].target[=].display = "Chronic obstructive lung disease"
* group.element[=].target[=].relationship = #related-to

* group.element[+].code = #tub001-0027
* group.element[=].display = "Ruhiy kasallik"
* group.element[=].target[+].code = #74732009
* group.element[=].target[=].display = "Mental illness"
* group.element[=].target[=].relationship = #source-is-broader-than-target

* group.element[+].code = #tub001-0028
* group.element[=].display = "Onkologiya"
* group.element[=].target[+].code = #363346000
* group.element[=].target[=].display = "Oncology"
* group.element[=].target[=].relationship = #source-is-broader-than-target
