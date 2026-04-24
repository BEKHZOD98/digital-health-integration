Instance: lab-methods-to-loinc
InstanceOf: ConceptMap
Usage: #definition
Title: "Laboratory methods codes to LOINC"
Description: "Maps local UZ laboratory method (technique of measurement) codes to LOINC method part codes."
* url = "https://dhp.uz/fhir/integrations/ConceptMap/lab-methods-to-loinc"
* name = "LaboratoryMethodsCodesToLOINC"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(ObservationLabMethodsCS)
* sourceScopeCanonical = Canonical(ObservationLabMethodsVS)
* group.target = $loinc
* targetScopeCanonical = $loinc

* group.element[+].code = #lab-method-1
* group.element[=].display = "PZR (Polimeraza zanjir reaksiyasi)"
* group.element[=].target[+].code = #LP6464-4
* group.element[=].target[=].display = "Probe.amp.tar"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-2
* group.element[=].display = "IFA (Immunoferment tahlil)"
* group.element[=].target[+].code = #LP6241-6
* group.element[=].target[=].display = "EIA"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-3
* group.element[=].display = "ELISA"
* group.element[=].target[+].code = #LP6241-6
* group.element[=].target[=].display = "EIA"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-4
* group.element[=].display = "Kultural usul"
* group.element[=].target[+].code = #LP6209-3
* group.element[=].target[=].display = "Culture"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-5
* group.element[=].display = "Immunoanaliz"
* group.element[=].target[+].code = #LP217197-5
* group.element[=].target[=].display = "IA"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-6
* group.element[=].display = "Spektrofotometriya"
* group.element[=].target[+].code = #LP6525-2
* group.element[=].target[=].display = "Spectrophotometry"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-7
* group.element[=].display = "Oqim sitometriyasi"
* group.element[=].target[+].code = #LP6274-7
* group.element[=].target[=].display = "Flow cytometry"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-8
* group.element[=].display = "Mikroskopiya"
* group.element[=].target[+].code = #LP6393-5
* group.element[=].target[=].display = "Microscopy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-9
* group.element[=].display = "Xromatografiya"
* group.element[=].target[+].code = #LP6182-2
* group.element[=].target[=].display = "Chromatography.column"
* group.element[=].target[=].relationship = #source-is-broader-than-target

* group.element[+].code = #lab-method-10
* group.element[=].display = "Mass-spektrometriya"
* group.element[=].target[+].code = #LP95062-3
* group.element[=].target[=].display = "LC/MS/MS"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #lab-method-11
* group.element[=].display = "Sekvensiyalash"
* group.element[=].target[+].code = #LP150045-5
* group.element[=].target[=].display = "Sequencing"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #lab-method-12
* group.element[=].display = "Tezkor immunoanaliz"
* group.element[=].target[+].code = #LP217198-3
* group.element[=].target[=].display = "IA.rapid"
* group.element[=].target[=].relationship = #equivalent
