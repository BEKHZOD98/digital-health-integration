> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Blood Transfusion Assessment Observation qon quyishda retsipiyentda o'tkaziladigan tekshiruvlarni qayd etadi: ABO va Rh-Hr bo'yicha moslik, transfuzion va akusherlik anamnezi, dastlabki ABO qon guruhi hamda moslikka biologik sinov natijasi. Bitta Observation bitta qon quyish bayonnomasiga to'g'ri keladi, har bir tekshiruv o'z komponentida yoziladi. Profil [UZ Core Observation](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-observation.html) asosida qurilgan, shuning uchun o'qish va qidirish uchun Observation endpointidan foydalaning. Subyekt - retsipiyent, [UZ Core Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html); yozuv baholash o'tkazilgan [Encounter](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-encounter.html)ga va uni o'tkazgan tibbiyot xodimiga havola qilishi mumkin. Profil qon xizmatida, donorni ro'yxatga olishdan transfuziyagacha, UZ Core profillari bilan qanday birlashishi [Blood Service](blood-service.html) sahifasida tasvirlangan.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi kerak ([Must Support](https://dhp.uz/fhir/core/uz/must-support.html)) - hammasi ham talab qilinmaydi, lekin sizning tizimingiz ma'lumotga ega bo'lganda har bir Must Support elementini to'ldirishi va qabul qilishda uni qayta ishlashi kerak. Bu inson o'qiy oladigan qisqacha bayon; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir Blood Transfusion Assessment Observation quyidagilarga ega bo'lishi shart

Har bir Blood Transfusion Assessment Observation status, code - har doim yagona kodlash sifatida SNOMED CT `252314007` *Blood transfusion test* - va subject - retsipiyent [Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html) (1..1) ni olib yurishi kerak. Yuborilgan identifikatorda `system` bo'lishi shart. Baholash natijalari komponentlarda yoziladi va har bir komponent o'zining belgilangan kodini saqlaydi.

#### Har bir Blood Transfusion Assessment Observation quyidagilarni qo'llab-quvvatlashi shart

- baholashning biznes identifikatori;
- baholash o'tkazilgan Encounter va ijrochi - baholash uchun mas'ul tibbiyot xodimi, uning roli yoki tashkilot;
- baholash o'tkazilgan vaqt (`effective[x]`) va natija berilgan vaqt (`issued`);
- ABO va Rh-Hr bo'yicha moslik natijalari, har biri o'z komponentida;
- transfuzion va akusherlik anamnezi, har biri o'z komponentida;
- dastlabki ABO qon guruhi va moslikka biologik sinov natijasi, har biri o'z komponentida;
- UZ Core Observation'dan meros qolgan boshqa Must Support elementlari.

### JSON'ni bosqichma-bosqich qurish

Quyidagi misollar server qabul qiladigan eng kichik nusxadan to'liq baholashgacha boradi. Birini nusxalab moslashtiring - ko'rsatilgan har bir qiymat ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxa: [retsipiyentni baholash](Observation-example-blood-transfusion-assessment.html).

#### Yuborish kerak bo'lgan eng kichik kuzatuv

Uchta element majburiy: `status`, bu qon quyish sinovi ekanini ko'rsatuvchi `code` va `subject` (retsipiyent [Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html)). Baholashning `effectiveDateTime` ini ham qo'shing: vaqtsiz natijani qon quyish bilan bog'lab bo'lmaydi.

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-transfusion-assessment-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "252314007", "display": "Blood transfusion test" } ]
  },
  "subject": { "reference": "Patient/example-transfusion-assessment-recipient" },
  "effectiveDateTime": "2026-11-11T10:30:00+05:00"
}
```

`subject` oddiy `Reference`, shuning uchun nishon to'g'ridan-to'g'ri `reference` ichida turadi.

#### To'liq baholash

Har bir tekshiruv o'zining `component` slaysida yoziladi. Har bir slays ixtiyoriy va ko'pi bilan bir marta uchraydi; `code` slaysni tanlaydi, `valueCodeableConcept` esa shu slaysning ValueSet'idan bo'lishi shart:

| Slays | `code` | `valueCodeableConcept` manbasi |
|---|---|---|
| `aboCompatibility` | `bldcomp-0001-00001` | [Moslik natijasi](ValueSet-blood-transfusion-value-vs.html) |
| `rhHrCompatibility` | `bldcomp-0001-00002` | [Moslik natijasi](ValueSet-blood-transfusion-value-vs.html) |
| `transfusionHistory` | `bldcomp-0001-00003` | [Transfuzion anamnez toifasi](ValueSet-blood-transfusion-history-vs.html) |
| `obstetricHistory` | `bldcomp-0001-00004` | [Akusherlik anamnezi toifasi](ValueSet-obstetric-history-vs.html) |
| `preliminaryAboGroup` | `bldcomp-0001-00005` | [ABO qon guruhi](https://dhp.uz/fhir/core/uz/ValueSet-blood-group-vs.html) (SNOMED CT) |
| `biologicalSpecimen` | `bldcomp-0001-00006` | [Biologik sinov natijasi](ValueSet-specimen-res-vs.html) (SNOMED CT) |

`bldcomp-0001` kodlari `https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs` da joylashgan. Mahalliy kodlarning ko'rinishlari o'zbek tilida, shuning uchun resurs `language` ni `uz` qilib belgilaydi:

```json
{
  "resourceType": "Observation",
  "language": "uz",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-transfusion-assessment-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "252314007", "display": "Blood transfusion test" } ]
  },
  "subject": { "reference": "Patient/example-transfusion-assessment-recipient" },
  "encounter": { "reference": "Encounter/example-transfusion-assessment-encounter" },
  "effectiveDateTime": "2026-11-11T10:30:00+05:00",
  "issued": "2026-11-11T10:35:00+05:00",
  "performer": [ { "reference": "Practitioner/example-transfusion-assessment-practitioner" } ],
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs",
            "code": "bldcomp-0001-00001",
            "display": "ABO bo‘yicha moslik"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-value-cs",
            "code": "bldcomp-0002-00001",
            "display": "Mos"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs",
            "code": "bldcomp-0001-00002",
            "display": "Rh-Hr bo‘yicha moslik"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-value-cs",
            "code": "bldcomp-0002-00001",
            "display": "Mos"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs",
            "code": "bldcomp-0001-00003",
            "display": "Transfuzion anamnez"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-history-cs",
            "code": "bldcomp-0003-00001",
            "display": "Avval qon quyilmagan"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs",
            "code": "bldcomp-0001-00004",
            "display": "Akusherlik anamnezi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/obstetric-history-cs",
            "code": "bldcomp-0004-00002",
            "display": "Homiladorlik yoki tug‘ruq bo‘lmagan"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs",
            "code": "bldcomp-0001-00005",
            "display": "Dastlabki ABO qon guruhi"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "112144000", "display": "Blood group A" } ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs",
            "code": "bldcomp-0001-00006",
            "display": "Biologik namuna"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [ { "system": "http://snomed.info/sct", "code": "260385009", "display": "Negative" } ]
      }
    }
  ]
}
```

Faqat bayonnomada yozilgan komponentlarni yuboring: o'tkazilmagan tekshiruvni bo'sh holda yubormang, umuman qoldirib keting. Akusherlik anamnezi retsipiyentga taalluqli bo'lmasa *Qo'llanilmaydi* (`bldcomp-0004-00001`), transfuzion anamnezni aniqlab bo'lmasa *Ma'lumotlar mavjud emas* (`bldcomp-0003-00004`) ishlatiladi.

API chaqiruvlari misollari uchun ushbu sahifaning pastki qismidagi [Tezkor boshlash](#quick-start) bo'limiga qarang.
