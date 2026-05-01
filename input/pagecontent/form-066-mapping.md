### Form 066-1 - Psychiatric/Narcological hospital discharge statistical card

This page documents the mapping between Form 066-1 (Psychiatric/Narcological Hospital Discharge Statistical Card) fields and FHIR resources.

---

### Overview

Form 066-1 captures administrative and clinical data for patients discharged from psychiatric or narcological inpatient care. The form data maps to multiple FHIR resources bundled together as a FHIR Document, conforming to the **Form066PsychiatricDischargeComposition** profile. Where available, resources conform to **UZ Core** profiles.

---

### Field Mapping

# UZ-066-1 Psychiatric/Narcological Discharge Statistical Card - FHIR Mapping

| UZ-066-1 | RU-066-1 | FHIR Path | Code | Example Value |
|----------|----------|----------|------|---------------|
| Muassasa kodi | Код учреждения | Organization.identifier | Local | 200001 |
| Muassasa nomi | Наименование учреждения | Organization.name | - | Toshkent ruhiy shifoxonasi |
| Bemor ro'yxat raqami | Регистрационный номер | Composition.identifier | - | 066-2026-001 |
| Tibbiy bayonnoma № | № мед. карты | Composition.identifier[healthCardId].value | MR | HC-00066 |
| JShShIR | ПИНФЛ | Patient.identifier[nationalId].value | NI | 31234567890123 |
| Familiyasi | Фамилия | Patient.name.family | - | Tursunov |
| Ismi | Имя | Patient.name.given | - | Alisher |
| Tug'ilgan sanasi | Дата рождения | Patient.birthDate | - | 1990-04-12 |
| Jinsi | Пол | Patient.gender | AdministrativeGender | male |
| Fuqaroligi | Гражданство | Patient.extension[citizenship].valueCodeableConcept | - | UZ |
| Pasport | Паспорт | Patient.identifier[passportLocal] | - | AA1234567 |
| Ijtimoiy holati | Социальное положение | UZCoreSocioeconomicObservation.valueCodeableConcept | SocialStatusVS | Ishsiz |
| Imtiyoz toifasi | Льготная категория | UZCoreSocioeconomicObservation.valueCodeableConcept | BenefitsVS | Mavjud |
| Viloyat/Shahar | Область/город | Patient.address | - | Toshkent |
| Tuman | Район | Patient.address | - | Yunusobod |
| Mahalla | Махалля | Patient.address | - | Mingchinor |
| Ko‘cha | Улица | Patient.address.line | - | Amir Temur |
| Uy/Xonadon | Дом/квартира | Patient.address.line | - | 15-24 |
| Pochta indeksi | Индекс | Patient.address.postalCode | - | 100017 |
| Telefon | Телефон | Patient.telecom[phone].value | - | +998901234567 |
| Email | Email | Patient.telecom[email].value | - | test@mail.com |
| Biriktirilgan muassasa | Прикреплённое учреждение | Patient.managingOrganization | - | Poliklinika №12 |
| Ma'lumoti | Образование | UZCoreSocioeconomicObservation.valueCodeableConcept | EducationVS | O‘rta |
| Yashash manbai | Источник дохода | UZCoreSocioeconomicObservation.valueCodeableConcept | - | Nafaqa |
| Ish joyi | Работа | UZCoreSocioeconomicObservation.valueCodeableConcept | EmploymentVS | Ishsiz |

---

### Admission (2-bo‘lim)

| UZ | RU | FHIR Path | Code | Example |
|----|----|----------|------|--------|
| Ro'yxatga olingan sana | Дата регистрации | Encounter.actualPeriod.start | - | 2026-01-05 |
| Avval davolangan | Повторная госпитализация | Encounter.admission.reAdmission | - | true |
| Tez yordam | Экстренность | Encounter.priority | - | R |
| Yotqizish turi | Тип госпитализации | Encounter.class | ActCode | IMP |
| Tez yordam bilan kelgan | Скорая помощь | Encounter.admission.admitSource | - | ambulance |
| Yo‘llanma mavjud | Направление | Encounter.basedOn | - | ServiceRequest |
| Yo‘llagan muassasa | Направившее учреждение | Organization.name | - | Poliklinika |
| Yo‘llagan tashxis | Диагноз направления | Condition.code | ICD-10 | F10.2 |

---

### Hospitalization (3-bo‘lim)

| UZ | RU | FHIR Path | Code | Example |
|----|----|----------|------|--------|
| Qabul tashxisi | Диагноз при поступлении | Condition.code | ICD-10 | F10.2 |
| Yotqizilgan sana | Дата поступления | Encounter.actualPeriod.start | - | 2026-01-05 |
| Chiqarilgan sana | Дата выписки | Encounter.actualPeriod.end | - | 2026-01-15 |
| Bo‘lim | Отделение | Location.name | - | Narkologiya |
| O‘rin kunlari | Койко-дни | Encounter.length | - | 10 |
| Holati | Состояние | Condition.clinicalStatus | - | improved |

---

### Final Diagnosis (4-bo‘lim)

| UZ | RU | FHIR Path | Code | Example |
|----|----|----------|------|--------|
| Asosiy tashxis | Основной диагноз | Condition.code | ICD-10 | F10.2 |
| Raqobat tashxis | Конкурирующий | Condition.code | ICD-10 | F17.2 |
| Yondosh tashxis | Сопутствующий | Condition.code | ICD-10 | I10 |
| Fon tashxis | Фоновый | Condition.code | ICD-10 | K29 |
| Asorat | Осложнение | Condition.code | ICD-10 | G47 |

---

### Laboratory Results (5-bo‘lim)

| UZ | RU | FHIR Path | Code | Example |
|----|----|----------|------|--------|
| OITS | ВИЧ | Observation.valueCodeableConcept | - | Manfiy |
| RW | RW | Observation.valueCodeableConcept | - | Manfiy |
| Gepatit B | Гепатит B | Observation.valueCodeableConcept | - | Manfiy |
| Gepatit C | Гепатит C | Observation.valueCodeableConcept | - | Manfiy |

---

### Payment (6-bo‘lim)

| UZ | RU | FHIR Path | Code | Example |
|----|----|----------|------|--------|
| To‘lov turi | Тип оплаты | Coverage.type | - | SSV byudjet |

---

### Temporary Disability (8-bo‘lim)

| UZ | RU | FHIR Path | Code | Example |
|----|----|----------|------|--------|
| Ochilgan sana | Дата открытия | Observation.valueDateTime | - | 2026-01-10 |
| Yopilgan sana | Дата закрытия | Observation.valueDateTime | - | 2026-01-20 |

---

### Responsible Persons (9-bo‘lim)

| UZ | RU | FHIR Path | Code | Example |
|----|----|----------|------|--------|
| Shifokor | Врач | Encounter.participant.actor | - | Rasulov |
| Bo‘lim boshlig‘i | Зав. отделением | Encounter.participant.actor | - | Qodirova |
| Katta hamshira | Старшая медсестра | Encounter.participant.actor | - | Karimova |

---

### Bundle structure

```
Bundle (document)
├── Composition (Form066PsychiatricDischargeComposition)
├── Patient
├── Encounter
├── Organization
├── Condition[]
├── Observation[]
├── Coverage
├── ServiceRequest
└── Practitioner[]
```