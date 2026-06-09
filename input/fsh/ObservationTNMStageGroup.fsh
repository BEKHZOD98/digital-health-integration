Profile: ObservationTNMstagegroup
Parent: UZCoreObservation
Id: observation-tnm-stage-group
Title: "Observation TNM Stage Group"
Description: "Observation profile used to represent the overall TNM stage grouping for a cancer diagnosis."

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
* performer only Reference(UZCorePractitioner)

* valueCodeableConcept 1..1 MS
* valueCodeableConcept from TNMStageCancerVS (required)

* method 0..1 MS
* method from ResearchMethodVS (required)

* hasMember MS
* hasMember only Reference(ObservationTNMCategory)



Instance: observation-tnm-stage-group-example
InstanceOf: ObservationTNMstagegroup
Usage: #example
Description: "Example TNM stage group observation."

* status = #final

* category = $observation-category#imaging "Imaging"

* code = name-tests-cs#cancr0011.00004 "TNM stage grouping"

* subject = Reference(example-patient)

* focus = Reference(condition-cancer-primary-example)

* effectiveDateTime = "2025-02-10"

* performer = Reference(example-practitioner)

* valueCodeableConcept = tnm-stage-cancer-cs#cancr0019.00004 "Ia"

* method = research-method-cs#cancr0003.00007 "Union for International Cancer Control Stage"

* hasMember[0] = Reference(observation-ct-category-example)
* hasMember[+] = Reference(observation-cn-category-example)
* hasMember[+] = Reference(observation-cm-category-example)