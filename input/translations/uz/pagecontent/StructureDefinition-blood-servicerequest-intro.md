Blood ServiceRequest donorning bitta laboratoriya tekshiruvi yoki tekshiruvlar panelini yoxud qon komponentini qayta ishlashning bitta operatsiyasini buyuradi. Profil [UZ Core ServiceRequest](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-servicerequest.html) asosida yaratilgan. Har bir xizmat uchun alohida so'rov yarating; bir donatsiyaga tegishli so'rovlarni `requisition` orqali birlashtiring.

### Majburiy va Must Support elementlari

Har bir so'rovda `status`, `intent` = `order`, `subject` va `code.concept` ichida aynan bitta kod bo'lishi shart. Xizmat kodi [BloodLabCodesVS](ValueSet-blood-lab-codes-vs.html) dan tanlanadi. Laboratoriya kodlarining usul va namunaga mosligini tasdiqlash kerak.

Laboratoriya tekshiruvi uchun `subject` UZ Core Patient ga havola qiladi; `category` laboratoriyani, `encounter` donatsiya tashrifini, `specimen` namunalarni belgilaydi. Zaxiradagi komponentni qayta ishlashda `subject` UZ Core Location ga, `focus` esa UZ Core BiologicallyDerivedProduct ga havola qiladi. Ijrochi va xizmat joyi `performer` va `location` da beriladi.

Ixtiyoriy `identifier[orderNumber]` kesimi `https://dhp.uz/fhir/core/sid/doc/uz/blood-service-request` tizimidan foydalanadi va qiymatni talab qiladi. Identifikatorlar tizimi [NamingSystem](NamingSystem-blood-service-request-number-system.html) da tavsiflangan; `assigner` raqamni bergan tashkilotni bildiradi. Ixtiyoriy `requisition` mavjud UZ Core donatsiya raqami tizimi `https://dhp.uz/fhir/core/sid/prd/uz/blood/donation` dan foydalanadi va qiymatni talab qiladi. Shu raqam donatsiya tekshiruvlari va komponentlarni qayta ishlash so'rovlarini bog'laydi.

Meros olingan Must Support elementlarini, jumladan holat, toifa, ustuvorlik, kod, subyekt, tashrif, muddatlar, buyurtmachi, ijrochi, joy, sabab, namunalar va qo'shimcha ma'lumotlarni, shuningdek ushbu profilning identifikator kesimi, focus va note elementlarini qo'llab-quvvatlang.

### Laboratoriya va qayta ishlash misollari

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"
    ]
  },
  "status": "active",
  "intent": "order",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/blood-service-request",
      "value": "XON-SR-2026-0001",
      "assigner": {
        "reference": "Organization/xonobod-medical-association"
      }
    }
  ],
  "requisition": {
    "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation",
    "value": "DON-2025-0088231"
  },
  "code": {
    "concept": {
      "coding": [
        {
          "system": "http://loinc.org",
          "code": "1975-2"
        }
      ]
    }
  },
  "subject": {
    "reference": "Patient/example-salim"
  },
  "specimen": [
    {
      "reference": "Specimen/example-blood-whole-blood-specimen"
    }
  ]
}
```

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"
    ]
  },
  "status": "active",
  "intent": "order",
  "requisition": {
    "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation",
    "value": "DON-2025-0088231"
  },
  "code": {
    "concept": {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "58059003",
          "display": "Washing RBC for transfusion"
        }
      ]
    }
  },
  "subject": {
    "reference": "Location/example-blood-service-laboratory"
  },
  "focus": [
    {
      "reference": "BiologicallyDerivedProduct/example-blood-component-product"
    }
  ]
}
```

Bilirubin va ALT alohida so'rovlar bilan buyuriladi, donatsiya raqami esa umumiy bo'ladi. Yuvish, muzlatish va eritish uchun SNOMED CT `58059003`, `71643009` va `35382002` ishlatiladi. Nurlantirish uchun [BloodComponentProcessingCS](CodeSystem-blood-component-processing-cs.html) dagi `bcproc-0001-00002` qo'llaniladi. Har bir operatsiya uchun alohida so'rov yarating va bajarilishi tasdiqlangach completed holatiga o'tkazing.

[Laboratory example](ServiceRequest-example-blood-laboratory-order.html) · [Irradiation example](ServiceRequest-example-blood-component-irradiation-order.html) · [Blood Management](blood-management.html)
