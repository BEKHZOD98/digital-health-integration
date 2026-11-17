// Parent becomes UZCoreFlag once a UZ Core release has it (not in uz.dhp.core 0.12.0).
Profile: BloodDonorDeferralFlag
Parent: Flag
Id: blood-donor-deferral-flag
Title: "Blood Donor Deferral Flag"
Description: "Flag recording that a blood donor is deferred from donation for medical reasons, with the deferral reason and, for a temporary deferral, when it ends."
* ^status = #draft
* ^experimental = true

* extension contains $workflow-reason named reason 1..1 MS
* extension[reason] ^short = "Why the donor is deferred, and what led to it"
* extension[reason].value[x] only CodeableReference
* extension[reason].valueCodeableReference.concept 1..1 MS
* extension[reason].valueCodeableReference from DonorDeferralReasonVS (required)
* extension[reason].valueCodeableReference.reference MS
* extension[reason].valueCodeableReference only CodeableReference(UZCoreObservation or UZCoreDiagnosticReport or UZCoreCondition)
* extension[reason].valueCodeableReference.reference ^short = "Test result, report or condition that led to the deferral"

* status MS
* status ^short = "Status of the flag, not of the deferral: active while the deferral is in force"
* category MS
* code MS
* code = $blood-donor-eligibility-cs#blood-donation-deferred
* code ^short = "Deferred from blood donation for medical reasons"
* subject MS
* subject only Reference(UZCorePatient)
* subject ^short = "The deferred donor"
* encounter only Reference(UZCoreEncounter)
* period 1..1 MS
* period ^short = "Deferral period; period.end present = temporary, absent = lifelong"
* period ^definition = "When the deferral is in force. A temporary deferral has a period.end, the date from which the donor may give blood again; a lifelong deferral has no period.end."
* period.start 1..1 MS
* period.start ^short = "When the deferral began"
* period.end MS
* period.end ^short = "When a temporary deferral ends; empty for a lifelong deferral"
* author MS
* author only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization)
* author ^short = "Who recorded the deferral"
