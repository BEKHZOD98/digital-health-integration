Profile: Form027MedicalRecordExtractComposition
Parent: Composition
Id: form-027-medical-record-extract-composition
Title: "Form 027 - Medical Record Extract Composition"
Description: "Composition profile for Form 027 extract from outpatient/inpatient medical record."


* identifier 1..*
* status = #final
* type = $loinc#34133-9 "Summarization of episode note"

* category 1..1
* category = $document-category-cs#form-027 "Extract from medical record"

* subject 1..1
* subject only Reference(UZCorePatient)

* encounter 1..1
* encounter only Reference(UZCoreEncounter) // TODO: 066 kabi alohida UZCoreEncounter027 kerakmi, aniqlash kerak

* author 1..*
* author only Reference(UZCorePractitionerRole) // TODO: loyihada boshqa joylarda UZCorePractitioner ishlatilgan (PractitionerRole emas) - qaysi biri standart konventsiya ekanini aniqlash kerak

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    registrationInformation 1..1 and
    personalInformation 1..1 and
    residenceInformation 1..1 and
    referralAndDiagnosis 1..1 and
    clinicalInformation 1..1 and
    treatmentAndRecommendations 1..1 and
    nextSteps 0..1 and
    responsiblePersons 1..1

* section[registrationInformation].title 1..1
* section[registrationInformation].code 1..1
* section[registrationInformation].code = $loinc#TODO "Registration information"
// TODO: mos LOINC section kodi hali topilmagan - qidirish kerak
* section[registrationInformation].entry 1..*
* section[registrationInformation].entry only Reference(UZCoreOrganization or UZCoreEncounter)

* section[personalInformation].title 1..1
* section[personalInformation].code 1..1
* section[personalInformation].code = $loinc#TODO "Patient Information"
// TODO: LP36348-8 LOINC'da tasdiqlanmadi (topilmadi). Bundan tashqari, LP- prefiksli kodlar
// LOINC "Part" kodlari bo'lib, LOINC'ning rasmiy qo'llanmasiga ko'ra mustaqil/alohida kod
// sifatida ishlatilmasligi kerak. To'g'ri Document Ontology section kodi qidirilishi kerak.
* section[personalInformation].entry 1..*
* section[personalInformation].entry only Reference(UZCorePatient)

* section[residenceInformation].title 1..1
* section[residenceInformation].code 1..1
* section[residenceInformation].code = $loinc#TODO "Address"
// TODO: 56799-0 LOINC'da real kod, lekin bu ADMIN.PATIENT sinfidagi alohida ma'lumot
// elementi (Nominal scale), Document Ontology section kodi emas. Composition.section.code
// uchun noto'g'ri "o'q" (axis). Mos section kodi qidirilishi kerak.
* section[residenceInformation].entry 1..*
* section[residenceInformation].entry only Reference(UZCorePatient)

* section[referralAndDiagnosis].title 1..1
* section[referralAndDiagnosis].code 1..1
* section[referralAndDiagnosis].code = $loinc#TODO "Referral and diagnosis"
// TODO: 57133-1 "Referral note" LOINC'da real kod, lekin bu butun hujjat darajasidagi
// (Document Ontology, Scale=Doc) kod - "bu butun hujjat Referral note" degan ma'noni bildiradi.
// Uni bitta section kodi sifatida ishlatish konseptual jihatdan noto'g'ri, chunki
// Composition.type allaqachon 34133-9 bilan belgilangan. Mos section kodi qidirilishi kerak.
* section[referralAndDiagnosis].entry 0..*
* section[referralAndDiagnosis].entry only Reference(UZCoreOrganization)
* section[referralAndDiagnosis].section ^slicing.discriminator.type = #value
* section[referralAndDiagnosis].section ^slicing.discriminator.path = "code"
* section[referralAndDiagnosis].section ^slicing.rules = #open
* section[referralAndDiagnosis].section contains
    main 1..1 and
    complication 0..1 and
    concomitant 0..1
* section[referralAndDiagnosis].section[main].code = $diagnosis-role#main
* section[referralAndDiagnosis].section[main].entry 1..*
* section[referralAndDiagnosis].section[main].entry only Reference(UZCoreClinicalCondition)
* section[referralAndDiagnosis].section[complication].code = $diagnosis-role#complication
* section[referralAndDiagnosis].section[complication].entry 1..*
* section[referralAndDiagnosis].section[complication].entry only Reference(UZCoreClinicalCondition)
* section[referralAndDiagnosis].section[concomitant].code = $diagnosis-role#concomitant
* section[referralAndDiagnosis].section[concomitant].entry 1..*
* section[referralAndDiagnosis].section[concomitant].entry only Reference(UZCoreClinicalCondition)

* section[clinicalInformation].title 1..1
* section[clinicalInformation].code 1..1
* section[clinicalInformation].code = $loinc#TODO "Clinical presentation"
// TODO: 8709-8 LOINC'da umuman topilmadi - ehtimol xato yoki mavjud emas kod.
// Bo'lim mazmuniga (shikoyatlar/anamnez/ko'rik/diagnostika) mos LOINC section kodi
// qidirilishi kerak - ehtimol bir nechta alohida kod kerak bo'ladi (masalan har biri uchun).
* section[clinicalInformation].entry 1..*
* section[clinicalInformation].entry only Reference(UZCoreObservation or DiagnosticReport)

* section[treatmentAndRecommendations].title 1..1
* section[treatmentAndRecommendations].code 1..1
* section[treatmentAndRecommendations].code = $loinc#TODO "Treatment and recommendations"
// TODO: 18776-5 "Plan of care note" LOINC'da real kod, lekin bu ham butun hujjat
// darajasidagi (Document Ontology, Scale=Doc) kod, section kodi emas - xuddi 57133-1
// kabi muammo. Mos section kodi qidirilishi kerak.
* section[treatmentAndRecommendations].entry 1..*
* section[treatmentAndRecommendations].entry only Reference(CarePlan or MedicationRequest)

* section[nextSteps].title 1..1
* section[nextSteps].code 1..1
* section[nextSteps].code = $loinc#TODO "Follow-up"
// TODO: LOINC section kodi tanlanmagan
* section[nextSteps].entry 0..*
* section[nextSteps].entry only Reference(CarePlan or EpisodeOfCare or UZCoreServiceRequest)

* section[responsiblePersons].title 1..1
* section[responsiblePersons].code 1..1
* section[responsiblePersons].code = $loinc#TODO "Responsible party"
// TODO: LP35157-4 LOINC'da tasdiqlanmadi (topilmadi), va LP- prefiksli kod bo'lgani uchun
// baribir mustaqil section kodi sifatida ishlatilishi tavsiya etilmaydi.
* section[responsiblePersons].entry 1..*
* section[responsiblePersons].entry only Reference(UZCorePractitionerRole)
// TODO: avvalgi versiyada UZCorePractitioner edi - qaysi biri to'g'ri konventsiya ekanini aniqlash kerak