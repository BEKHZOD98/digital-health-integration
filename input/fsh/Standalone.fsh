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

// Instance: example-hepatitis-patient
// InstanceOf: HepatitisPatientProfile
// Description: "Gepatit profili uchun Tolibjon To'lanboev misolida namuna"
// Usage: #example

// // * extension[nationality].extension[code].valueCodeableConcept = #UZ "Uzbekistan"
// * extension[citizenship].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#UZ "Uzbekistan"

// * identifier[nationalId]
//   * system = "https://dhp.uz/fhir/core/sid/pid/uz/ni"
//   * value = "515050500505"
//   * use = #usual

// * identifier[passportLocal]
//   * system = "https://dhp.uz/fhir/core/sid/pid/uz/ppn/local"
//   * value = "AB1234567"
//   * use = #usual

// * name 
//   * use = #official
//   * text = "To'lanboev Tolibjon"
//   * family = "To'lanboyev"
//   * given = "Tolibjon"

// * gender = #male 
// * birthDate = "1990-02-01"

// * address[uzAddress]
//   * use = #temp
//   * type = #physical
//   * text = "Iltifot MFY, 58-Harbiy shaharcha mavzesi, 53 Uy, 104 Kvartira"
//   * city = #17150085
//   * district = #1726262
//   * state = #1726
//   * country = "UZ"

// Instance Example
Instance: example-hepatitis-questionnaire
InstanceOf: Questionnaire
Description: "Hepatitis B and C treatment questionnaire"
Usage: #example
* url = "https://dhp.uz/fhir/Questionnaire/hepatitis-questionnaire"
* status = #active
* title = "HEPATITIS QUESTIONNAIRE"
* identifier.value = "HCV-HBV-QS-2026"

* item[0]
  * linkId = "grp-1"
  * text = "MAIN INFORMATION"
  * type = #group 

  * item[0]
    * linkId = "hx-tx-hcv-hbv"
    * text = "Has treatment for HCV/HBV been conducted in the past (in the patient's history)?"
    * type = #boolean

  * item[1]
    * linkId = "hx-tx-hcv-hbv-meds"
    * text = "What medications were taken against HCV/HBV?"
    * type = #string
    * enableWhen[0]
      * question = "hx-tx-hcv-hbv"
      * operator = #=
      * answerBoolean = true

* item[1]
  * linkId = "grp-pregnancy"
  * text = "Gynecological treatment / Pregnancy"
  * type = #group

  * item[0]
    * linkId = "pregnancy-trimester"
    * text = "Pregnancy duration (Homiladorlik muddati)"
    * type = #coding
    * answerOption[0].valueCoding = $sct#255246003 "First trimester"
    * answerOption[1].valueCoding = $sct#255247007 "Second trimester"
    * answerOption[2].valueCoding = $sct#255248002 "Third trimester"

// Instance Example 
Instance: example-hcv-response
InstanceOf: QuestionnaireResponse
Description: "Example of anamnesis responses completed by the patient for hepatitis B and C treatment questionnaire"
Usage: #example

* identifier
  * system = "urn:ietf:rfc:3986"
  * value = "urn:uuid:6f9b9d8e-3b7d-4d87-8f6e-123456789abc"

* status = #completed
* questionnaire = "https://dhp.uz/fhir/Questionnaire/hepatitis-questionnaire"
* subject = Reference(example-hepatitis-patient)
* authored = "2026-03-19T12:00:00Z"
* author = Reference(muratova-gulshoda-role)

* item[0]
  * linkId = "grp-1"
  * text = "MAIN INFORMATION"

  * item[0]
    * linkId = "hx-tx-hcv-hbv"
    * text = "Has treatment for HCV/HBV been conducted in the past (in the patient's history)?"
    * answer[0].valueBoolean = true

  * item[1]
    * linkId = "hx-tx-hcv-hbv-meds"
    * text = "What medications were taken against HCV/HBV?"
    * answer[0].valueString = "Sofosbuvir + Declatasvir"

* item[1]
  * linkId = "grp-pregnancy"
  * text = "Gynecological treatment / Pregnancy"

  * item[0]
    * linkId = "pregnancy-trimester"
    * text = "Pregnancy duration (Homiladorlik muddati)"
    * answer[0]
      * valueCoding = $sct#255246003 "First trimester"
