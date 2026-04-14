Instance: example-patient
InstanceOf: Patient
Usage: #example
Title: "example-patient"
Description: "Example of a patient"
* name
  * family = "Ибрагимов"
  * given = "Алишер"

Instance: example-practitioner
InstanceOf: Practitioner
Description: "Example of a practitioner"
Usage: #example
* language = #uz
* active = true
* name
  * use = #official
  * text = "Golibjon Eshnazarov"
  * family = "Eshnazarov"
  * given = "Golibjon"
  * suffix = "Golibjonovich"
* telecom
  * system = #phone
  * value = "975555555"
  * use = #mobile
* gender = #female
* birthDate = "1985-05-06"

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
* extension[nationality].extension[code].valueCodeableConcept = NationalityCS#23 "Азербайджанцы"
* extension[managingOrganizationAttachment].valueDate = "2024-03-15"

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

Instance: specimen-example-blood
InstanceOf: Specimen
Usage: #example
Description: "Temporary Specimen instance for lab (based on drafted UZCoreSpecimen Excel structure)"
* status = #available
// * type = $v2-0487#BLD "Whole blood"
* subject = Reference(Patient/example-salim)
* receivedTime = "2025-11-04T08:30:00Z"
// * request[0] = Reference(ServiceRequest/example-cbc-order)
// * role[0] = $specimen-role#p "Patient"
* collection.collector = Reference(Practitioner/example-practitioner)
* collection.collectedDateTime = "2025-11-04T08:10:00Z"
* collection.duration = 5 'min'
* collection.quantity = 3 'mL' "mL"
// * collection.fastingStatusCodeableConcept = $v2-0916#NF "The patient indicated they did not fast prior to the procedure."
* note[0].text = "Venous blood collected into EDTA tube. No visible hemolysis."

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

Instance: example-organization
InstanceOf: UZCoreOrganization
Description: "Example of a hospital organization"
Usage: #example
* language = #uz
* identifier[taxId]
  * use = #official
  * type = $identifier-type#TAX "Tax ID number"
  * value = "200935935"
* identifier[argosId]
  * use = #official
  * value = "9512"
* active = true
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

Instance: example-location
InstanceOf: UZCoreLocation
Usage: #example
Description: "Example of psychiatric hospital"
* language = #uz
* status = #active
* mode = #instance
* name = "Toshkent shahar 1-sonli shifoxona"
* address.text = "Toshkent shahar, Chilonzor tumani, Katta Qo'yliq 45"
