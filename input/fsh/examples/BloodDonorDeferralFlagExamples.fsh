Instance: example-blood-donor-temporary-deferral
InstanceOf: Flag
Title: "Example Flag - Temporary Blood Donor Deferral"
Description: "Synthetic temporary deferral after a tattoo: the period ends 180 days after it starts. The duration is example data, not a clinical recommendation."
Usage: #example
* language = #uz
* status = #active
* category = $flag-category#clinical
* code.coding[0] = $blood-donor-eligibility-cs#blood-donation-deferred "Tibbiy sabablarga ko'ra qon donorligidan chetlatilgan"
* code.coding[+] = DonorDeferralReasonCS#donrsn-0001-00001 "Tatuirovka, piercing yoki akupunktura"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* author = Reference(PractitionerRole/example-practitionerrole)
* period.start = "2026-11-10T10:00:00+05:00"
* period.end = "2027-05-09T10:00:00+05:00"

Instance: example-blood-donor-lifelong-deferral
InstanceOf: Flag
Title: "Example Flag - Lifelong Blood Donor Deferral"
Description: "Synthetic lifelong deferral after a positive HIV test result: the period has a start and no end."
Usage: #example
* language = #uz
* status = #active
* category = $flag-category#clinical
* code.coding[0] = $blood-donor-eligibility-cs#blood-donation-deferred "Tibbiy sabablarga ko'ra qon donorligidan chetlatilgan"
* code.coding[+] = DonorDeferralReasonCS#donrsn-0001-00013 "OIV testi ijobiy natijasi"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* author = Reference(PractitionerRole/example-practitionerrole)
* period.start = "2026-11-10T10:00:00+05:00"
