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