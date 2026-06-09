// declaration 
Profile : UzCoreServiceRequest
Parent : ServiceRequest
Id : uz-core-service-request  
Title : "Uz Core Service Request"
Description : "UZ Core Service Request used to represent laboratory orders in the Uzbekistan Digital Health Platform."
* ^url = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-service-request"

// rules 
* identifier 1..* MS

* requisition and  status and intent and doNotPerform and code and subject and encounter MS

* status from $request-status (required)

* intent from $request-intent  (required)

* code from SRLabResearchVS (required)

* encounter only Reference(UZCoreEncounter)

* occurrence[x] 1..1 MS

* requester and insurance MS
* requester only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or UZCorePatient or UZCoreRelatedPerson)

* reason 0..1 MS
* reason from $icd-10

* supportingInfo MS
* supportingInfo only CodeableReference(ServiceRequest)

* specimen and note MS
* specimen only Reference(Specimen)


Instance: example-service-request-lab
InstanceOf: UzCoreServiceRequest
Title: "Example Lab Service Request"
Usage: #example

* identifier.use = #official
* identifier.system = "https://dhp.uz/fhir/service-request/identifier"
* identifier.value = "SR-2026-00001"

* status = #active 

* intent = #order

* subject = Reference("Patient/example-salim")

* encounter = Reference("Encounter/example-encounter")

* occurrenceDateTime = "2026-01-16T09:10:00+05:00"

* authoredOn = "2026-01-16T09:10:00+05:00"*/
