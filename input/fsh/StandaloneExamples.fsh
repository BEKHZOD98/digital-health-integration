Instance: example-organization
InstanceOf: UZCoreOrganization
Usage: #example
Title: "Example Organization"
Description: "Example organization representing a tuberculosis treatment facility referenced by DHIS resources."

* name = "Respublika onkologiya markazi"


Instance: example-practitioner
InstanceOf: UZCorePractitioner
Usage: #example
Title: "Example Practitioner"
Description: "Example practitioner representing a clinician involved in tuberculosis care."

* name[0].family = "Karimov"
* name[0].given[0] = "Ali"

Instance: practitionerrole-001
InstanceOf: UZCorePractitionerRole
Usage: #example
Description: "Example practitioner role linking a clinician to a tuberculosis treatment facility."
Title: "Practitioner Role Example"

* practitioner = Reference(Practitioner/example-practitioner)
* organization = Reference(Organization/example-organization)


Instance: example-dhis-encounter
InstanceOf: UZCoreEncounter
Usage: #example
Title: "Encounter Example"
Description: "Example encounter representing a tuberculosis patient's inpatient admission."

* status = #completed

* class = $v3-ActCode#IMP "inpatient encounter"

* subject = Reference(example-patient-john)

* actualPeriod.start = "2026-02-12T08:00:00+05:00"
* actualPeriod.end = "2026-02-18T14:00:00+05:00"

* participant[0].type = $v3-ParticipationType#ATND "attender"

* participant[0].period.start = "2026-02-12T08:00:00+05:00"
* participant[0].period.end = "2026-02-18T14:00:00+05:00"

* participant[0].actor = Reference(example-practitioner)

* diagnosis[0].condition = Reference(example-tbc-diagnosis)

* diagnosis[0].use = $encounter-diagnosis-use-cs#final "Final"