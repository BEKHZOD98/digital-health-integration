> Mashina tarjimasi; mutaxassis tekshiruvi talab etiladi.

Donor toifasi kuzatuvi toifani muayyan vaqtda qayd etadi va donatsiya tashrifiga bog'lanishi mumkin. U [UZ Core Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html) asosida tuzilgan. Donor uchun hozircha UZCorePatient ishlatiladi; qo'llanmada alohida BloodDonorPatient profili yo'q.

### Majburiy va qo'llab-quvvatlanadigan elementlar

Majburiy elementlar har doim yuboriladi. Must Support elementlari, shu jumladan meros olinganlari, ma'lumot mavjud bo'lsa to'ldiriladi va qabul qilinganda qayta ishlanadi. Aniq kardinallik, turlar va bog'lanishlar formal profilda berilgan.

#### Har bir donor toifasi kuzatuvi quyidagilarni saqlashi kerak

Holat, donor toifasi kuzatuvining kodi, bemorga havola va toifa belgilangan sana va vaqt.

#### Har bir donor toifasi kuzatuvi quyidagilarni qo'llab-quvvatlashi kerak

- Ma'lum bo'lsa donor toifasi (kadr yoki zaxira) va donatsiya to'lovi (bepul yoki pullik).
- Mavjud bo'lsa donatsiya tashrifi, ijrochi, identifikatorlar va izohlar.
- Kesimlarsiz komponentlarda qo'shimcha ma'lumotlar: donatsiya turi, ABO qon guruhi va rezus-omil.
- UZ Core Observation profilidan meros olingan boshqa Must Support elementlari.

### JSON tuzish bosqichlari

1. Minimal kuzatuv:

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation"
    ]
  },
  "language": "uz",
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "105470007"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-salim"
  },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00"
}
```

2. Toifa va to'lovni qo'shish:

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation"
    ]
  },
  "language": "uz",
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "105470007"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-salim"
  },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-category-cs",
          "code": "bdcat-0001-00001"
        }
      ]
    }
  ],
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donation-compensation-cs",
        "code": "bdcomp-0001-00001"
      }
    ]
  }
}
```

3. Tegishli qiymatlar to'plamidan komponent qiymatlarini qo'shish:

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation"
    ]
  },
  "language": "uz",
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "105470007"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-salim"
  },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00",
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-category-cs",
          "code": "bdcat-0001-00001"
        }
      ]
    }
  ],
  "valueCodeableConcept": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donation-compensation-cs",
        "code": "bdcomp-0001-00001"
      }
    ]
  },
  "performer": [
    {
      "reference": "PractitionerRole/example-practitionerrole"
    }
  ],
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs",
            "code": "bdobs-0001-00001"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donation-type-cs",
            "code": "bdtype-0001-00002"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs",
            "code": "bdobs-0001-00002"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "112144000"
          }
        ]
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-donor-observation-type-cs",
            "code": "bdobs-0001-00003"
          }
        ]
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://snomed.info/sct",
            "code": "165747007"
          }
        ]
      }
    }
  ]
}
```

Kuzatuv kodi BloodPatientTypeVS dan olinadi; donor namunalarida SNOMED CT 105470007 ishlatiladi. Komponent kodlari bdobs-0001-00001, bdobs-0001-00002 va bdobs-0001-00003 mos ravishda donatsiya turi, qon guruhi va rezus-omilni bildiradi. Qon guruhi va rezus qiymatlari UZ Core to'plamlari hamda SNOMED CT kodlarini ishlatadi. Komponentlar va ularning qiymatlari ixtiyoriy; yuborilgan qiymat komponent kodiga mos bo'lishi kerak.

Tashxis komponenti LOINC 29308-4 bilan belgilanadi, qiymati ICD-10 dan olinadi. Qiymat yuborilsa, tegishli invariant bilan tekshiriladi.

[Source specification](https://docs.google.com/spreadsheets/d/1pNl4a2vlB-8aigBSalFRDu3xPH-BKtMsKgzITcZ-Yy8/edit#gid=1302421877).

[To'liq namuna](Observation-example-blood-donor-category-observation.html) va [tezkor boshlash](#quick-start) bo'limiga qarang.

### Identifier slices {#identifier-slices}

| Slice | Cardinality | system |
|---|---|---|
| bloodId | 0..1 | https://dhp.uz/fhir/core/sid/prd/uz/blood |

