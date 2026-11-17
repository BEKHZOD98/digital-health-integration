Instance: example-blood-donor-temporary-deferral
InstanceOf: BloodDonorDeferralFlag
Title: "Example Blood Donor Deferral Flag - Temporary Deferral"
Description: "Synthetic temporary deferral after a tattoo: the period ends 180 days after it starts. The duration is example data, not a clinical recommendation."
Usage: #example
* language = #uz
* status = #active
* category = $flag-category#clinical
* extension[reason].valueCodeableReference.concept = DonorDeferralReasonCS#donrsn-0001-00001 "Tatuirovka, piercing yoki akupunktura"
* code = $blood-donor-eligibility-cs#blood-donation-deferred "Tibbiy sabablarga ko'ra qon donorligidan chetlatilgan"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* author = Reference(PractitionerRole/example-practitionerrole)
* period.start = "2026-11-10T10:00:00+05:00"
* period.end = "2027-05-09T10:00:00+05:00"

Instance: example-blood-donor-lifelong-deferral
InstanceOf: BloodDonorDeferralFlag
Title: "Example Blood Donor Deferral Flag - Lifelong Deferral"
Description: "Synthetic lifelong deferral after a positive HIV test result: the period has a start and no end."
Usage: #example
* language = #uz
* status = #active
* category = $flag-category#clinical
* extension[reason].valueCodeableReference.concept = DonorDeferralReasonCS#donrsn-0001-00013 "OIV testi ijobiy natijasi"
* extension[reason].valueCodeableReference.reference = Reference(Observation/example-blood-donor-hiv-result)
* code = $blood-donor-eligibility-cs#blood-donation-deferred "Tibbiy sabablarga ko'ra qon donorligidan chetlatilgan"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* author = Reference(PractitionerRole/example-practitionerrole)
* period.start = "2026-11-10T10:00:00+05:00"

Instance: example-blood-donor-hiv-result
InstanceOf: UZCoreObservation
Title: "Example Observation - Positive Donor HIV Antibody Result"
Description: "Synthetic positive HIV 1 and 2 antibody result from the donor's pre-donation tests; the lifelong deferral Flag names it as the reason."
Usage: #example
* language = #uz
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#31201-7 "HIV 1+2 Ab [Presence] in Serum or Plasma by Immunoassay"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* basedOn = Reference(ServiceRequest/example-blood-hiv-laboratory-order)
* effectiveDateTime = "2026-11-10T09:30:00+05:00"
* performer = Reference(Organization/xonobod-medical-association)
* specimen = Reference(Specimen/example-blood-whole-blood-specimen)
* valueCodeableConcept = $sct#10828004 "Positive"
* interpretation = $observation-interpretation#POS "Positive"
