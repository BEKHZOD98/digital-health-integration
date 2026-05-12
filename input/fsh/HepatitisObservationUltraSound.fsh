Profile: HepatitisObservationUltraSound
Parent: UZCoreObservation
Id: hepatitis-observation-ultra-sound
Title: "Hepatitis UltraSound Observation"
Description: "Profile for representing ultrasound observations related to hepatitis patients in the context of a digital health integration project. This profile extends the base Observation resource to include specific elements and extensions relevant to ultrasound findings, such as the type of ultrasound, clinical significance, and associated notes."
* ^experimental = true
* ^status = #active
* ^publisher = "Uzinfocom"

* identifier 1..* MS
* code 1..1 MS
* code from HepatitisTypeOfUltrasoundVS (required)
* code.coding 0..* MS
  * system 0..1 MS
  * system = $sct
  * code 0..1 MS
  * display 0..1 MS 
* code.text 0..1 MS

* subject 0..1 MS
* subject only Reference(UZCorePatient)
* encounter 0..1 MS
* encounter only Reference(UZCoreEncounter)

* effective[x] only dateTime or Period
* effective[x] MS
* performer 0..* MS
* performer only Reference(UZCoreOrganization or UZCorePractitionerRole)

* value[x] only boolean
* value[x] MS
* valueBoolean ^short = "Availability of the result (yes/no)"


// Instance Example
Instance: example-ultrasound-cirrhosis
InstanceOf: HepatitisObservationUltraSound
Description: "Instance of cirrhosis detected"
Usage: #example
* status = #final
* identifier 
  * system = "https://dhp.uz/fhir/core/sid/pid/uz/hepatitis"
  * value = "OBS-2026-5541"
  * type.coding
    * system = "http://terminology.hl7.org/CodeSystem/v2-0203"
    * code = #PHC
    * display = "Public Health Case Identifier"
  * use = #official
* code 
  * coding = $sct#19943007 "Cirrhosis of liver"
  * text = "Signs of cirrhosis"

* subject = Reference(example-hepatitis-patient)
* effectiveDateTime = "2026-01-26"
* performer = Reference(PractitionerRole/muratova-gulshoda-role)

* valueBoolean = true
* note.text = "Liver texture note showing increased echogenicity"


// Instance Example
Instance: example-ultrasound-lesion
InstanceOf: HepatitisObservationUltraSound
Description: "Instance of liver lesion detected"
Usage: #example
* status = #final
* identifier
  * system = "https://dhp.uz/fhir/core/sid/pid/uz/hepatitis"
  * value = "OBS-2026-5542"
  * type.coding
    * system = "http://terminology.hl7.org/CodeSystem/v2-0203"
    * code = #PHC
    * display = "Public Health Case Identifier"
  * use = #official
* code 
  * coding = $sct#300332007 "Mass of liver (finding)"
  * text = "Signs of masses in the liver"

* subject = Reference(example-hepatitis-patient)
* effectiveDateTime = "2026-01-26"
* performer = Reference(PractitionerRole/muratova-gulshoda-role)
* valueBoolean = true
