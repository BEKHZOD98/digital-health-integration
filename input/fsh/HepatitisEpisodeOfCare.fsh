Profile: HepatitisEpisodeOfCare
Parent: UZCoreEpisodeOfCare
Id: hepatitis-episode-of-care
Title: "Hepatitis Episode of Care Profile"
Description: "Profile for representing episodes of care related to hepatitis patients in the context of a digital health integration project. This profile extends the base EpisodeOfCare resource to include specific elements and extensions relevant to hepatitis patient care, such as diagnosis details, clinical status, and care management information."

* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier MS

* diagnosis MS
* diagnosis.condition only CodeableReference(HepatitisCondition)

* diagnosis.use from $encounter-diagnosis-use (required)

* period MS
  * ^short = "Duration of hepatitis patient observation/monitoring process"
  * start 0..1 MS
    * ^short = "Date and time when hepatitis patient follow-up started"
  * end 0..1 MS
    * ^short = "Date and time of removal of hepatitis (A, B, C, D) from the follow-up register"

* careManager only Reference(UZCorePractitioner or UZCorePractitionerRole) 
* careManager ^short = "Care manager"


// Instance Example
Instance: example-hepatitis-episode
InstanceOf: HepatitisEpisodeOfCare
Description: "Example of a patient's D-registration"
Usage: #example
* identifier 
  * system = $hep-id-sys 
  * value = "EOC-2026-1122"
  * type.coding
    * system = $v2-0203
    * code = #PHC
    * display = "Public Health Case Identifier"
  * use = #official

* type[serviceType] = EpisodeOfCareTypeCS#mserv-0001-00004 "Treatment services"

* status = #planned 
* patient = Reference(example-salim)

* diagnosis.condition = Reference(example-hepatitis-condition)
* diagnosis.use = $hep-enc-diag-use#working "Working"

* managingOrganization = Reference(Organization/samarkand-infectious-hospital)

* period
  * start = "2026-01-21T12:22:00Z"
  * end = "2026-11-10T06:54:00Z"

* careManager = Reference(Practitioner/example-practitioner)

