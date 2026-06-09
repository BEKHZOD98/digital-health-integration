Instance: example-patient
InstanceOf: UZCorePatient
Usage: #example
Title: "example-patient"
Description: "Example of a patient"
* identifier[nationalId]
  * value = "30211975910033"
* name
  * family = "Ибрагимов"
  * given = "Алишер"



Instance: example-practitioner-role
InstanceOf: PractitionerRole
Description: "Example instance of a practitioner role for a cancer encounter"
Usage: #example

* practitioner = Reference(Practitioner/example-practitioner)
* organization = Reference(Organization/example-organization)


Instance: example-lab
InstanceOf: UZCoreOrganization
Description: "Example laboratory organization"
Usage: #example

* language = #uz
* active = true

* name = "Example Laboratory"

Instance: example-healthcare-service
InstanceOf: HealthcareService
Description: "Example oncology healthcare service."
Usage: #example

* active = true
* name = "Oncology Department"
* providedBy = Reference(example-organization)

Instance: example-practitioner
InstanceOf: Practitioner
Usage: #example
Description: "An example practitioner with a sample name"

* name[0].family = "Karimov"
* name[0].given[0] = "Ali"

Instance: example-organization
InstanceOf: Organization
Usage: #example
Description: "A generic example organization for demonstration purposes"

* name = "Healthcare Organization"