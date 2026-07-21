Instance: example-salim
InstanceOf: UZCorePatient
Description: "Example of a patient named Salim"
Usage: #example
* language = #ru
* identifier[nationalId]
  * value = "30211975910033"
* identifier[passportLocal]
  * value = "AC1234567"
* identifier[passportInternational]
  * value = "AA1234567"
* identifier[birthCertificate]
  * value = "I-МЯ №123456"
* identifier[driversLicense]
  * value = "AAA123456"
* identifier[diplomaticPassport]
  * value = "D1234567"
* identifier[healthCardId]
  * value = "01234567890123"
* identifier[militaryId]
  * value = "ВБ1234567"
* identifier[penitentiaryInstitution]
  * value = "УИН123456789012"
* active = true
* name
  * use = #usual
  * text = "Усманов Салим Салиевич"
  * family = "Усманов"
  * given = "Салим"
  * suffix = "Салиевич"
* telecom
  * system = #phone
  * use = #mobile
  * rank = 1
  * period.start = "2021-05-13"
* birthDate = "1994-01-27"
* address
  * use = #home
  * type = #postal
  * line = "ул.Муминова 4"
  * country = "182"
  * district = "1703202"
  * city = "22070013"
  * period.start = "1999-04-06"
* gender = #male
* contact
  * relationship = $v2-0131#N "Next-of-Kin"
  * name.text = "Ваисов Раис"
  * gender = #male
* maritalStatus = $v3-MaritalStatus#W "Вдовец, вдова"
* extension[nationality].extension[code].valueCodeableConcept = $nationality-cs#23 "КАРЕЛ/КАРЕЛКА"
* extension[managingOrganizationAttachment].valueDate = "2024-03-15"


Instance: example-practitionerrole
InstanceOf: UZCorePractitionerRole
Description: "Example of a practitioner's role"
Usage: #example
* language = #uz
* active = true
* practitioner = Reference(Practitioner/example-practitioner)
* organization = Reference(Organization/example-organization)
* code = position-and-profession-cs#2212.14 "Vrach ginekolog"
* specialty = profession-specialization-cs#394585009 "Akusherlik va ginekologiya"
* healthcareService = Reference(HealthcareService/example-healthcareservice)


Instance: example-organization
InstanceOf: UZCoreOrganization
Description: "Example of a republican-level oncology center (Respublika onkologiya markazi) with full categorization, contact, and address"
Usage: #example
* language = #uz
* identifier[taxId]
  * use = #official
  * type = $identifier-type#TAX "Tax ID number"
  * system = $organization-tax-id-system
  * value = "200935935"
* identifier[argosId]
  * use = #official
  * type = $identifier-type#XX "Organization Identifier"
  * system = $organization-argos-id-system
  * value = "9512"
* active = true
* type.coding[organizationType] = organization-types-uz-cs#I "Boshqaruv boyicha taqsimlanishi"
* type.coding[subordinationGroup] = organizational-subordination-group-cs#I_1 "Respublika tassarufidagi muassasalari"
* type.coding[nomenclatureGroup] = nomenclature-group-cs#II_100 "Shifoxona muassasalari"
* type.coding[organizationalStructure] = organizational-structure-cs#110 "Ixtisoslashtirilgan ilmiy-amaliy tibbiyot markazi"
* type.coding[organizationalServiceGroup] = organizational-service-group-cs#III_100 "Poliklinika bo'limi va statsionar bo'limi mavjud"
* type.coding[specialization] = organizational-specialization-cs#145.0 "Kattalar onkologiyasi"
* name = "Respublika onkologiya markazi"
  * extension[translation][0]
    * extension[lang][0]
      * valueCode = #ru
    * extension[content][+]
      * valueString = "Республиканский онкологический центр"
  * extension[translation][+]
    * extension[lang][0]
      * valueCode = #kaa
    * extension[content][+]
      * valueString = "Respublika onkologiya orayı"
* contact
  * telecom[+]
    * system = #phone
    * value = "+998711234567"
  * telecom[+]
    * system = #email
    * value = "info@example.uz"
  * telecom[+]
    * system = #url
    * value = "https://cancercenter.uz"
  * address
    * line = "Farobiy ko'chasi, 383"
    * state = "1726"
    * district = "1726269"
    * country = "UZ"


Instance: example-headache
InstanceOf: UZCoreCondition
Title: "Example Uz Core Condition - Headache"
Description: "Example instance of a headache condition documented during a patient encounter"
Usage: #example
* language = #en
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* severity = $sct#255604002 "Mild"
* code = $icd-10#R51 "Headache"
* extension[diagnosisType].valueCodeableConcept = diagnosis-type-cs#gencl-0001-00001 "Diagnosis of the referring institution"
* bodySite = $sct#67169006 "Head of first metatarsal bone"
* subject = Reference(example-patient)
* onsetDateTime = "2025-07-25"
* recordedDate = "2025-07-29"
* participant
  * actor = Reference(example-practitioner)
  * function = $provenance-participant-type#author "Author"
* note
  * text = "Patient complained of mild headache for two days. Condition resolved after rest and hydration."



Instance: example-patient
InstanceOf: Patient
Usage: #example
Title: "example-patient"
Description: "Example of a patient"
* name
  * family = "Ибрагимов"
  * given = "Алишер"


Instance: example-practitioner
InstanceOf: UZCorePractitioner
Description: "Example of a practitioner"
Usage: #example
* language = #uz
* identifier[nationalId]
  * value = "9876543210"
* active = true
* name
  * use = #official
  * text = "Test Test Test"
  * family = "Test"
  * given = "Test"
  * suffix = "Test"
* telecom
  * system = #phone
  * value = "975555555"
  * use = #mobile
* gender = #female
* birthDate = "1985-05-06"
* deceasedBoolean = true
* address
  * use = #temp
  * type = #physical
  * line = "mahallasi Dilobod, Katortol ko'chasi, 9-uy, 15-xonadon"
  * city = "22070033"
  * district = "1703217"
  * country = "182"
* photo
  * url = "http://example.org/photos/practitioner.jpg"
  * size = 1024
* qualification
  * code = $qualification-codes#DIP
  * issuer = Reference(example-organization)



Instance: example-location
InstanceOf: UZCoreLocation
Usage: #example
Description: "Example of psychiatric hospital"
* language = #uz
* status = #active
* mode = #instance
* name = "Toshkent shahar 1-sonli shifoxona"
* address.text = "Toshkent shahar, Chilonzor tumani, Katta Qo'yliq 45"


Instance: example-encounter
InstanceOf: UZCoreEncounter
Title: "Example Encounter"
Description: "Example of an psychiatric encounter"
Usage: #example
* status = #completed "Completed"
* class = $v3-ActCode#IMP "Inpatient encounter"
* priority = $v3ActPriority#EM "Emergency"
* type[0] = encounter-type-cs#mserv-0001-00004  "Treatment services"
* serviceType[0] = Reference(example-healthcareservice)
* subject = Reference(example-patient)
* subjectStatus = encounter-subject-status-cs#gencl-0003-00001 "Awake"

* participant.type = $v3-ParticipationType#ATND "attender"
* participant.period
  * start = "2024-01-01T10:00:00Z"
  * end = "2024-01-01T11:00:00Z"

* reason[0]
  * use = encounter-reason-use-cs#mserv-0002-00001 "Disease"
  * value = Reference(Condition/example-headache)

* actualPeriod
  * start = "2024-01-01T10:00:00Z"
  * end = "2024-01-01T11:00:00Z"

* plannedStartDate = "2024-01-01T10:00:00Z"
* plannedEndDate = "2024-01-01T11:00:00Z" 

* diagnosis[0].condition = Reference(Condition/example-headache)

* admission
  * admitSource = $encounter-admit-source#psych "From psychiatric hospital"
  * reAdmission = $v2-admission#R "Re-admission"
  * dischargeDisposition = $encounter-discharge-disposition#home "Home"

* location[0].location = Reference(example-location)
* location[0].status = #completed


Instance: example-healthcareservice
InstanceOf: UZCoreHealthcareService
Description: "Example of a healthcare service"
Usage: #example
* active = true
* category.coding[dhpCategory]
  * code = #cancr0013.00000
* type.coding[dhpService]
  * code = #cancr0013.00001
* language = #uz
* name = "IHC-ga xos"
  * extension[translation][0]
    * extension[lang][0]
      * valueCode = #ru
    * extension[content][+]
      * valueString = "ИГХ специфические"
  * extension[translation][+]
    * extension[lang][0]
      * valueCode = #kaa
    * extension[content][+]
      * valueString = "IHC ushın arnawlı"