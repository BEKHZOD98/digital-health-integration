Profile: HepatitisEpisodeOfCare
Parent: EpisodeOfCare
Id: hepatitis-episode-of-care
Title: "Hepatitis Episode of Care Profile"
Description: "Profile for representing episodes of care related to hepatitis patients in the context of a digital health integration project. This profile extends the base EpisodeOfCare resource to include specific elements and extensions relevant to hepatitis patient care, such as diagnosis details, clinical status, and care management information."

* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 1..* MS
* status MS 
* status from HepatitisEpisodeOfCareStatusVS (required)

* diagnosis MS
* diagnosis.condition 1..1 MS
* diagnosis.condition only CodeableReference(HepatitisCondition)
* diagnosis.condition from HepatitisICDVS (required) // CodeSystem should be done
* diagnosis.condition ^short = "Patient's hepatitis diagnosis"  //Please translate this definition to English and add for all item ^short = "Definition in English from excel file"

* diagnosis.use 0..1 MS
* diagnosis.use from HepatitisEncDiagnosisUseVs (preferred)

* patient 1..1 MS
* patient only Reference(Patient)
* patient ^short = "Patient associated with this episode of care"

* managingOrganization 0..1 MS
* managingOrganization only Reference(Organization)
* managingOrganization ^short = "Organization managing this episode of care"

* period 0..1 MS
  * ^short = "Duration of hepatitis patient observation/monitoring process"
  * start 0..1 MS
    * ^short = "Date and time when hepatitis patient follow-up started"
  * end 0..1 MS
    * ^short = "Date and time of removal of hepatitis (A, B, C, D) from the follow-up register"

* careManager 0..1 MS
* careManager only Reference(Practitioner)
* careManager ^short = "Care manager"

* referralRequest 0..* MS
* referralRequest only Reference(ServiceRequest)
* referralRequest ^short = "Referral requests"


// Instance Example
Instance: example-hepatitis-episode
InstanceOf: HepatitisEpisodeOfCare
Description: "Example of a patient's D-registration"
Usage: #example
* identifier 
  * system = "https://dhp.uz/fhir/core/sid/pid/uz/hepatitis"
  * value = "EOC-2026-1122"
  * type.coding
    * system = "http://terminology.hl7.org/CodeSystem/v2-0203"
    * code = #PHC
    * display = "Public Health Case Identifier"
  * use = #official

* status = #planned 
* patient = Reference(example-hepatitis-patient)

* diagnosis.condition = Reference(example-hepatitis-condition)
* diagnosis.use = $hep-enc-diag-use#working "Working"

* managingOrganization = Reference(Organization/samarkand-infectious-hospital)

* period
  * start = "2026-01-21T12:22:00Z"
  * end = "2026-11-10T06:54:00Z"

* careManager = Reference(Practitioner/example-practitioner)

* referralRequest[0] = Reference(ServiceRequest/referral-to-specialist)
