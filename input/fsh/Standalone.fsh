Instance: muratova-goolshod
InstanceOf: Practitioner
Usage: #example

* id = "muratova-goolshod"
* name.family = "Muratova"
* name.given[0] = "Gulshod"

Instance: samarkand-regional-hospital
InstanceOf: Organization
Usage: #example

* id = "samarkand-regional-hospital"
* name = "Samarkand Regional Hospital"

Instance: samarkand-infectious-hospital
InstanceOf: Organization
Usage: #example

* id = "samarkand-infectious-hospital"
* name = "Samarkand Infectious Hospital"

Instance: simonov-farkhod
InstanceOf: Practitioner
Usage: #example

* id = "simonov-farkhod"
* name.family = "Simonov"
* name.given[0] = "Farkhod"

Instance: example-practitioner
InstanceOf: Practitioner
Usage: #example

* id = "example-practitioner"
* name.family = "Simonov"
* name.given[0] = "Farkhod"

Instance: referral-to-specialist
InstanceOf: ServiceRequest
Usage: #example

* id = "referral-to-specialist"
* status = #active
* intent = #order
* subject = Reference(Patient/example-hepatitis-patient)

Instance: muratova-gulshoda
InstanceOf: Practitioner
Usage: #example

* id = "muratova-gulshoda"
* name.family = "Muratova"
* name.given[0] = "Gulshoda"

Instance: muratova-gulshoda-role
InstanceOf: PractitionerRole
Usage: #example

* id = "muratova-gulshoda-role"
* practitioner = Reference(Practitioner/muratova-gulshoda)
* organization = Reference(Organization/samarkand-regional-hospital)

