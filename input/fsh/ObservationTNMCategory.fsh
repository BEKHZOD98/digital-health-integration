Profile: ObservationTNMCategory
Parent: UZCoreObservation
Id: observation-tnm-category
Title: "Observation TNM Category"
Description: "Observation profile used to represent an individual TNM category classification (T, N, or M)."

* ^experimental = true
* ^status = #active

* identifier MS

* status 1..1 MS

* category MS

* code 1..1 MS
* code from NameTestsVS (required)

* subject 1..1 MS
* subject only Reference(UZCorePatient)

* focus 1..1 MS
* focus only Reference(UZCoreCondition)

* effectiveDateTime MS

* performer MS
* performer only Reference(UZCorePractitionerRole)

* valueCodeableConcept 1..1 MS
* valueCodeableConcept from TNMCategoryVS (required)



Instance: observation-ct-category-example
InstanceOf: ObservationTNMCategory
Usage: #example
Description: "Example cT category observation."

* status = #final

* category = $observation-category#imaging "Imaging"

* code = name-tests-cs#cancr0011.00008 "cT category"

* subject = Reference(example-patient)

* focus = Reference(condition-cancer-primary-example)

* effectiveDateTime = "2026-02-10"

* performer = Reference(example-practitioner-role)

* valueCodeableConcept = cancer-stage-ct-pt-cs#cancr0020.00008 "2"


Instance: observation-cn-category-example
InstanceOf: ObservationTNMCategory
Description: "Example clinical N (cN) category observation for TNM cancer staging."
Usage: #example

* status = #final
* category = $observation-category#imaging "Imaging"
* code = name-tests-cs#cancr0011.00007 "cN category"
* subject = Reference(example-patient)
* focus = Reference(condition-cancer-primary-example)
* effectiveDateTime = "2026-02-10"
* performer = Reference(example-practitioner-role)
* valueCodeableConcept = cancer-stage-cn-pn-cs#cancr0021.00003 "1"



Instance: observation-cm-category-example
InstanceOf: ObservationTNMCategory
Description: "Example clinical M (cM) category observation for TNM cancer staging."
Usage: #example

* status = #final
* category = $observation-category#imaging "Imaging"
* code = name-tests-cs#cancr0011.00006 "cM category"

* subject = Reference(example-patient)
* focus = Reference(condition-cancer-primary-example)

* effectiveDateTime = "2026-02-10"
* performer = Reference(example-practitioner-role)
* valueCodeableConcept = cancer-stage-cm-pm-cs#cancr0022.00003 "1"


Instance: observation-pt-category-example
InstanceOf: ObservationTNMCategory
Description: "Example pathological T (pT) category observation for TNM cancer staging."
Usage: #example

* status = #final
* category = $observation-category#imaging "Imaging"
* code = name-tests-cs#cancr0011.00012 "pT category"

* subject = Reference(example-patient)
* focus = Reference(condition-cancer-primary-example)

* effectiveDateTime = "2026-02-10"

* performer = Reference(example-practitioner-role)
* valueCodeableConcept = cancer-stage-ct-pt-cs#cancr0020.00034 "1"


Instance: observation-pn-category-example
InstanceOf: ObservationTNMCategory
Description: "Example pathological N (pN) category observation for TNM cancer staging."
Usage: #example

* status = #final
* category = $observation-category#imaging "Imaging"
* code = name-tests-cs#cancr0011.00011 "pN category"

* subject = Reference(example-patient)
* focus = Reference(condition-cancer-primary-example)

* effectiveDateTime = "2026-02-10"

* performer = Reference(example-practitioner-role)

* valueCodeableConcept = cancer-stage-cn-pn-cs#cancr0021.00017 "1"



Instance: observation-pm-category-example
InstanceOf: ObservationTNMCategory
Description: "Example pathological M (pM) category observation for TNM cancer staging."
Usage: #example

* status = #final
* category = $observation-category#imaging "Imaging"
* code = name-tests-cs#cancr0011.00010 "pM category"

* subject = Reference(example-patient)
* focus = Reference(condition-cancer-primary-example)

* effectiveDateTime = "2026-02-10"

* performer = Reference(example-practitioner-role)

* valueCodeableConcept = cancer-stage-cm-pm-cs#cancr0022.00010 "1"