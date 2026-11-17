Instance: example-blood-donor-temporary-deferral
InstanceOf: BloodDonorDeferralObservation
Title: "Example Blood Donor Deferral Observation - Temporary Deferral"
Description: "Synthetic temporary donor deferral with two reasons, each recorded with an illustrative duration of 180 days. Durations are example data, not clinical recommendations."
Usage: #example
* language = #uz
* status = #final
* code = DonorDeferralTypeCS#tmpdf-0001-00001 "Vaqtincha chetlatish"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* effectiveDateTime = "2026-11-10T10:00:00+05:00"
* issued = "2026-11-10T10:05:00+05:00"
* performer = Reference(PractitionerRole/example-practitionerrole)
* component[0].code = DonorDeferralReasonCS#donrsn-0001-00003 "Qon yoki uning komponentlarini quyish"
* component[=].valueInteger = 180
* component[+].code = DonorDeferralReasonCS#donrsn-0001-00001 "Tatuirovka, piercing yoki akupunktura"
* component[=].valueInteger = 180

Instance: example-blood-donor-lifelong-deferral
InstanceOf: BloodDonorDeferralObservation
Title: "Example Blood Donor Deferral Observation - Lifelong Deferral"
Description: "Synthetic lifelong donor deferral with a positive HIV test result as the recorded reason. No duration is supplied."
Usage: #example
* language = #uz
* status = #final
* code = DonorDeferralTypeCS#lldf-0001-00001 "Umrbod chetlatish"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* effectiveDateTime = "2026-11-10T10:00:00+05:00"
* issued = "2026-11-10T10:05:00+05:00"
* performer = Reference(PractitionerRole/example-practitionerrole)
* component[0].code = DonorDeferralReasonCS#donrsn-0001-00013 "OIV testi ijobiy natijasi"
