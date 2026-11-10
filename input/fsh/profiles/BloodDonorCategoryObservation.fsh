Profile: BloodDonorCategoryObservation
Parent: UZCoreObservation
Id: blood-donor-category-observation
Title: "Blood Donor Category Observation"
Description: "Observation recording a donor's category, the time it was established, donation compensation and additional blood donor data."
* ^status = #draft
* ^experimental = true

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains bloodId 0..1 MS
* identifier[bloodId].system 1..1 MS
* identifier[bloodId].system = $blood-id-system
* identifier[bloodId].value 1..1 MS

* category 0..*
* category from DonorCategoryVS (required)
* category ^short = "Staff or reserve donor category"
* code from BloodPatientTypeVS (required)
* subject 1..1
* subject only Reference(UZCorePatient)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept from DonationCompensationVS (required)
* valueCodeableConcept ^short = "Paid or unpaid donation"
// Encounter and performer target profiles, status binding and MS flags are inherited.
// Components deliberately remain unsliced, as specified in the source spreadsheet.
* component.code from BloodDonorObservationTypeVS (required)
* component.value[x] only CodeableConcept
* component.valueCodeableConcept from BloodDonorComponentValueVS (required)
* component obeys integrations-bdobs-1 and integrations-bdobs-2 and integrations-bdobs-3 and integrations-bdobs-4 and integrations-bdobs-5

Invariant: integrations-bdobs-1
Description: "A component identifies donation type, blood group, Rh factor or diagnosis; the legacy donor-category code is not a component code."
Severity: #error
Expression: "(code.coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs' and (code = 'bdobs-0001-00001' or code = 'bdobs-0001-00002' or code = 'bdobs-0001-00003')).exists() or code.coding.where(system = 'http://loinc.org' and (code = '883-9' or code = '10331-7' or code = '29308-4')).exists()) and code.coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs' and code = 'bdobs-0001-00004').empty()"

Invariant: integrations-bdobs-2
Description: "Donation type component values must belong to the corresponding value set."
Severity: #error
Expression: "(code.coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs' and code = 'bdobs-0001-00001').exists() and value.exists()) implies value.memberOf('https://terminology.dhp.uz/fhir/integrations/ValueSet/donation-type-vs')"

Invariant: integrations-bdobs-3
Description: "Blood group component values must belong to the corresponding value set."
Severity: #error
Expression: "((code.coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs' and code = 'bdobs-0001-00002').exists() or code.coding.where(system = 'http://loinc.org' and code = '883-9').exists()) and value.exists()) implies value.memberOf('https://terminology.dhp.uz/fhir/core/ValueSet/blood-group-vs')"

Invariant: integrations-bdobs-4
Description: "Rh factor component values must belong to the corresponding value set."
Severity: #error
Expression: "((code.coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs' and code = 'bdobs-0001-00003').exists() or code.coding.where(system = 'http://loinc.org' and code = '10331-7').exists()) and value.exists()) implies value.memberOf('https://terminology.dhp.uz/fhir/core/ValueSet/blood-rh-vs')"

Invariant: integrations-bdobs-5
Description: "Diagnosis component values must belong to the ICD-10 value set."
Severity: #error
Expression: "(code.coding.where(system = 'http://loinc.org' and code = '29308-4').exists() and value.exists()) implies value.memberOf('http://hl7.org/fhir/ValueSet/icd-10')"

// Examples

Instance: example-blood-donor-category-observation
InstanceOf: BloodDonorCategoryObservation
Title: "Example Blood Donor Category Observation - Staff Donor"
Description: "Staff donor with unpaid plasmapheresis, blood group A and a positive RhD type."
Usage: #example
* language = #uz
* identifier[bloodId].system = $blood-id-system
* identifier[bloodId].value = "BLOOD-2026-00001"
* status = #final
* category = DonorCategoryCS#bdcat-0001-00001 "Kadr donor"
* code = $sct#105470007 "Blood donor"
* subject = Reference(Patient/example-salim)
* effectiveDateTime = "2026-09-23T10:30:00+05:00"
* performer = Reference(PractitionerRole/example-practitionerrole)
* valueCodeableConcept = DonationCompensationCS#bdcomp-0001-00001 "Bepul"
* component[0].code = BloodDonorObservationTypeCS#bdobs-0001-00001 "Donatsiya turi"
* component[=].valueCodeableConcept = DonationTypeCS#bdtype-0001-00002 "Plazmaferez"
* component[+].code = BloodDonorObservationTypeCS#bdobs-0001-00002 "Qon guruhi"
* component[=].valueCodeableConcept = $sct#112144000 "Blood group A"
* component[+].code = BloodDonorObservationTypeCS#bdobs-0001-00003 "Rezus-omil"
* component[=].valueCodeableConcept = $sct#165747007 "RhD positive"

Instance: example-blood-donor-category-observation-reserve
InstanceOf: BloodDonorCategoryObservation
Title: "Example Blood Donor Category Observation - Reserve Donor"
Description: "Reserve donor with paid whole-blood donation, blood group O and a negative RhD type."
Usage: #example
* language = #uz
* identifier[bloodId].system = $blood-id-system
* identifier[bloodId].value = "BLOOD-2026-00002"
* status = #final
* category = DonorCategoryCS#bdcat-0001-00002 "Zaxira donor"
* code = $sct#105470007 "Blood donor"
* subject = Reference(Patient/example-patient-john)
* effectiveDateTime = "2026-09-24T09:00:00+05:00"
* performer = Reference(PractitionerRole/example-practitionerrole)
* valueCodeableConcept = DonationCompensationCS#bdcomp-0001-00002 "Pullik"
* component[0].code = BloodDonorObservationTypeCS#bdobs-0001-00001 "Donatsiya turi"
* component[=].valueCodeableConcept = DonationTypeCS#bdtype-0001-00001 "To'liq qon"
* component[+].code = BloodDonorObservationTypeCS#bdobs-0001-00002 "Qon guruhi"
* component[=].valueCodeableConcept = $sct#58460004 "Blood group O"
* component[+].code = BloodDonorObservationTypeCS#bdobs-0001-00003 "Rezus-omil"
* component[=].valueCodeableConcept = $sct#165746003 "RhD negative"

Instance: example-blood-recipient-category-observation
InstanceOf: BloodDonorCategoryObservation
Title: "Example Blood Donor Category Observation - Recipient"
Description: "Recipient registered with blood group A, a positive RhD type and unspecified anaemia, linked to the registration encounter and registrar."
Usage: #example
* language = #uz
* identifier[bloodId].system = $blood-id-system
* identifier[bloodId].value = "BLOOD-2026-00003"
* status = #final
* code = $sct#116154003 "Patient"
* subject = Reference(Patient/example-patient-john)
* encounter = Reference(example-blood-recipient-registration-encounter)
* effectiveDateTime = "2026-09-25T11:00:00+05:00"
* performer = Reference(example-blood-recipient-registrar)
* component[0].code = BloodDonorObservationTypeCS#bdobs-0001-00002 "Qon guruhi"
* component[=].valueCodeableConcept = $sct#112144000 "Blood group A"
* component[+].code = BloodDonorObservationTypeCS#bdobs-0001-00003 "Rezus-omil"
* component[=].valueCodeableConcept = $sct#165747007 "RhD positive"
* component[+].code = $loinc#29308-4 "Diagnosis"
* component[=].valueCodeableConcept = $icd-10#D64.9 "Anaemia, unspecified"

Instance: example-blood-recipient-registration-encounter
InstanceOf: UZCoreEncounter
Title: "Example Recipient Registration Encounter"
Description: "Registration encounter for the recipient in the blood system."
Usage: #example
* language = #uz
* status = #in-progress
* type[nationalType] = encounter-type-cs#mserv-0001-00004
* subject = Reference(Patient/example-patient-john)
* actualPeriod.start = "2026-09-25T11:00:00+05:00"
* participant.actor = Reference(example-blood-recipient-registrar)

Instance: example-blood-recipient-registrar
InstanceOf: UZCorePractitioner
Title: "Example Recipient Registrar"
Description: "Synthetic practitioner registering the recipient in the blood system."
Usage: #example
* language = #uz
* active = true
* name.use = #official
* name.family = "Karimova"
* name.given = "Dilnoza"
