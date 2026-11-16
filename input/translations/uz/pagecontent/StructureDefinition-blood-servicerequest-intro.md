> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Blood ServiceRequest - qon xizmatining donor laboratoriya tekshiruvlari yoki qon komponentini ikkilamchi qayta ishlash (yuvish, nurlantirish, muzlatish yoki eritish) uchun so'rovi. U [UZ Core ServiceRequest](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-servicerequest.html) asosida tuzilgan va bajarilgan ishni emas, faqat so'rovning o'zini qayd etadi. Laboratoriya buyurtmasi donorni ([Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html)), donatsiya tashrifini ([Encounter](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-encounter.html)) va tekshiriladigan donor namunalarini ([Specimen](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-specimen.html)) ko'rsatadi; qayta ishlash so'rovi qon komponentining [BiologicallyDerivedProduct](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-biologically-derived-product.html) resursiga murojaat qiladi. Tanlangan tekshiruvlar yoki operatsiyalar `orderDetail` da sanab o'tiladi, shuning uchun bitta so'rov bitta laboratoriya yoki bitta komponent uchun barcha tanlovlarni o'z ichiga oladi. Bu so'rovlarning qon xizmati ishidagi o'rni [Blood Management](blood-management.html) sahifasida, manba shakllar esa [Qon xizmati shakllari](forms-volume-08-blood-service.html) sahifasida keltirilgan.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](https://dhp.uz/fhir/core/uz/must-support.html)) - hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir Blood ServiceRequest quyidagilarga ega bo'lishi shart

Har bir so'rovda `status`, `order` maqsadi va donor (`subject`) bo'lishi shart. Buyurtma tafsilotining har bir parametrida tanlangan tekshiruv yoki operatsiya `code` da va `true` qiymatli `valueBoolean` bo'lishi shart. Asosiy resurs `orderDetail` mavjud bo'lganda `code` ni ham talab qiladi.

#### Har bir Blood ServiceRequest quyidagilarni qo'llab-quvvatlashi shart

- buyurtma yoki qayta ishlash so'rovi raqami (`identifier`) va bitta donatsiyaning laboratoriya buyurtmalarini birlashtiruvchi umumiy raqam (`requisition`), har biri o'z `system` i bilan;
- so'rov holati (draft / active / on-hold / revoked / completed / entered-in-error / unknown);
- qabul qiluvchi laboratoriya (`category`), masalan gematologiya, biokimyo yoki immunologiya;
- shoshilinchlik (`priority`: routine / urgent / asap / stat) va xizmatni bajarish mumkin emasligi (`doNotPerform`);
- umumiy so'ralgan xizmat (`code`), masalan laboratoriya muolajasi yoki qon birligini qayta ishlash;
- donor (`subject`) va donatsiya tashrifi (`encounter`);
- xizmat qachon bajarilishi kerakligi (`occurrence[x]`) va so'rov qachon rasmiylashtirilgani (`authoredOn`);
- so'rovni kim bergani (`requester`), kim bajarishi kerakligi (`performer`) va qayerda (`location`);
- xizmat nima uchun kerakligi (`reason`), qanday to'lanishi (to'lov turi kengaytmasi) va sug'urta qoplamasi (`insurance`);
- tekshiriladigan donor namunalari (`specimen`) va qayta ishlanadigan qon komponenti (`focus`);
- so'rovni qo'llab-quvvatlovchi boshqa ma'lumotlar (`supportingInfo`), izohlar (`note`) va donor uchun ko'rsatmalar (`patientInstruction`);
- tanlangan laboratoriya tekshiruvlari yoki qayta ishlash operatsiyalari (`orderDetail.parameter.code`, har biri `valueBoolean` `true` bilan).

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar eng kichik yaroqli so'rovdan komponentni qayta ishlash so'rovigacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxalar - [biokimyo](ServiceRequest-example-blood-laboratory-order.html), [immunologiya](ServiceRequest-example-blood-immunology-laboratory-order.html), [transfuziya orqali yuqadigan infeksiyalar](ServiceRequest-example-blood-transfusion-infections-laboratory-order.html), [bakteriologiya](ServiceRequest-example-blood-bacteriology-laboratory-order.html) va [gematologiya](ServiceRequest-example-blood-hematology-laboratory-order.html) laboratoriya buyurtmalari hamda [komponentni qayta ishlash](ServiceRequest-example-blood-component-processing-order.html) so'rovi.

#### Eng kichik Blood ServiceRequest

Asosiy resurs `status`, `intent` va `subject` ni talab qiladi, har bir resurs esa o'z profilini `meta.profile` da ko'rsatadi. Validatsiyadan o'tish uchun shu yetarli:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"] },
  "status": "active",
  "intent": "order",
  "subject": { "reference": "Patient/example-salim" }
}
```

Profil `intent` ni `order` ga belgilaydi va `subject` ni [Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html) - donor bilan cheklaydi. So'rov nima qilish kerakligini ko'rsatgandagina foydali bo'ladi, shuning uchun keyingi misollar tanlangan tekshiruvlar yoki operatsiyalarni qo'shadi.

#### Donor laboratoriya buyurtmasi

Donor shifokori donatsiya tashrifi vaqtida biokimyo laboratoriyasiga donorning butun qon namunasi bo'yicha bilirubin va ALT tekshiruvlarini buyuradi:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"] },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-categories-cs",
          "code": "lab-category-04",
          "display": "Biokimyo"
        }
      ]
    }
  ],
  "code": {
    "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "108252007" } ] }
  },
  "subject": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-blood-donation-encounter" },
  "authoredOn": "2026-11-10T09:05:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "specimen": [ { "reference": "Specimen/example-blood-whole-blood-specimen" } ],
  "orderDetail": [
    {
      "parameter": [
        {
          "code": { "coding": [ { "system": "http://loinc.org", "code": "1975-2" } ] },
          "valueBoolean": true
        },
        {
          "code": { "coding": [ { "system": "http://loinc.org", "code": "1742-6" } ] },
          "valueBoolean": true
        }
      ]
    }
  ]
}
```

Har bir qabul qiluvchi laboratoriya uchun alohida so'rov yarating: zaxira donor uchun to'rtta, muntazam donor uchun beshta. `category` laboratoriyani milliy laboratoriya bo'limlari kodi bilan ko'rsatadi, ularning nomlari o'zbek tilida, shuning uchun resursda `language` `uz` ga teng. `code` ning turi `CodeableReference`, shuning uchun kodlash `concept` ichida joylashadi; umumiy xizmat - SNOMED CT `108252007` Laboratory procedure. Har bir tanlangan tekshiruv - [laboratoriya tekshiruvlari va qayta ishlash operatsiyalari](ValueSet-bld-lab-codes-vs.html) to'plamidan kod va `valueBoolean` `true` bilan bitta `orderDetail.parameter`; tanlanmagan tekshiruvlarni yubormang. Laboratoriya kodlari usul va namuna tasdiqlanguniga qadar nomzod hisoblanadi. Laboratoriya donorning bir nechta probirkasini qabul qilsa, har birini `specimen` da sanab o'ting. `identifier` va `requisition` ixtiyoriy, lekin yuborilsa, har birida `system` bo'lishi shart.

#### Komponentni qayta ishlash so'rovi

Qon xizmati xodimi eritrotsitar komponentni yuvish va nurlantirishni so'raydi:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"] },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "code": {
    "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "64108007" } ] }
  },
  "subject": { "reference": "Patient/example-salim" },
  "authoredOn": "2026-11-10T10:00:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "focus": [ { "reference": "BiologicallyDerivedProduct/example-blood-component-product" } ],
  "note": [ { "text": "Ehtiyotkorlik bilan qayta ishlang." } ],
  "orderDetail": [
    {
      "parameter": [
        {
          "code": {
            "coding": [
              {
                "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/processing-operation-cs",
                "code": "bld-operation-0001",
                "display": "Yuvish"
              }
            ]
          },
          "valueBoolean": true
        },
        {
          "code": {
            "coding": [
              {
                "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/processing-operation-cs",
                "code": "bld-operation-0002",
                "display": "Nurlantirish"
              }
            ]
          },
          "valueBoolean": true
        }
      ]
    }
  ]
}
```

Har bir komponent uchun [qayta ishlash operatsiyalari](CodeSystem-processing-operation-cs.html) dan barcha tanlangan operatsiyalar bilan bitta so'rov yarating va `focus` da komponentning [BiologicallyDerivedProduct](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-biologically-derived-product.html) resursini ko'rsating; uni `supportingInfo` da takrorlamang. `category` ni yubormang. SNOMED CT `64108007` Blood unit processing - umumiy xizmatning dastlabki kodi. Har bir operatsiya tasdiqlanmaguncha so'rovni `active` holatida saqlang, so'ng uni `completed` ga o'tkazing.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
