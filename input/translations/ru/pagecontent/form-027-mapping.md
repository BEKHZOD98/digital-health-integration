<style>
/* Per-form mapping-table column widths (027: one table per Composition section). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 18%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 18%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 22%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 26%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 16%; }
</style>

> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Форма 027 - Выписка из медицинской карты

На этой странице описано сопоставление полей Формы 027 (Выписка из медицинской карты амбулаторного, стационарного больного) с ресурсами FHIR.

---

### Обзор

[Форма 027](forms-volume-03-diagnostics-laboratory.html) - выписка из амбулаторной или стационарной медицинской карты пациента, которая передаётся при направлении или переводе пациента. Данные формы сопоставляются с несколькими ресурсами FHIR, объединёнными в FHIR-документ, который соответствует профилю [Form 027 Medical Record Extract Composition](StructureDefinition-form-027-medical-record-extract-composition.html). Где это возможно, ресурсы соответствуют профилям [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html).

Каждый из 8 разделов Composition имеет свой `section.code` и перечисляет ресурсы, относящиеся к этой части формы.

Полный пример экземпляра см. в [примере выписки по Форме 027](Bundle-example-form-027-medical-record-extract.html).

---

### Сопоставление полей

### Форма 027 - Выписка из медицинской карты - сопоставление с FHIR

---

### Информация о документе

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Hujjat versiyasi UUID | Идентификатор версии документа | Bundle.identifier | `urn:ietf:rfc:3986` | urn:uuid:760e8400-e29b-41d4-a716-446655440027 |
| Hujjat UUID | Идентификатор документа | Composition.identifier | `urn:ietf:rfc:3986` | urn:uuid:861f9511-f30c-52e5-b827-557766550027 |
| Shakl raqami | Номер формы | Composition.identifier | `https://dhp.uz/fhir/core/sid/doc/uz/form-number` | 027 |
| Hujjat holati | Статус документа | Composition.status | [Статусы документов](document-statuses.html): `final` после подписания выписки, `amended` для последующих исправлений, `entered-in-error` при отзыве | final |
| Hujjat turi | Тип документа | Composition.type | [Composition Type](https://terminology.dhp.uz/fhir/core/ValueSet/composition-type-vs) `emdoc-0010-0106` "Extract from inpatient medical record", а также LOINC `34133-9` "Summary of episode note" | - |
| Hujjat kategoriyasi | Категория документа | Composition.category | [Composition Category](https://terminology.dhp.uz/fhir/core/ValueSet/composition-category-vs) `Comp-001-0001` "Medical record" и [Document Category](CodeSystem-document-category-cs.html) `form-027` "Extract from patient's medical record" | - |
| Bemor | Пациент | Composition.subject | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) | Yusupova Nilufar Rustamovna |
| Murojaat yoki statsionarda davolanish | Обращение или пребывание в стационаре | Composition.encounter | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html) | 2026-02-08 - 2026-02-10 |
| Hujjat shakllantirilgan sana | Дата составления документа | Composition.date | - | 2026-02-10T09:15:00+05:00 |
| Davolovchi shifokor | Лечащий врач | Composition.author | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html), или [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html), если должность неизвестна | Ismoilova M.T. |
| Hujjat egasi | Организация-хранитель документа | Composition.custodian | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html) | Chilonzor tuman poliklinikasi |
| Hujjat sarlavhasi | Заголовок документа | Composition.title | - | Form 027 - Tibbiy muassasadagi bemorning tibbiy kartasidan koʻchirma |

---

### 1. Регистрационные данные

Код раздела: LOINC `46240-8` "History of Hospitalizations+Outpatient visits Narrative".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Muassasa kodi | Код учреждения | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html).identifier[taxId] | `system` `https://dhp.uz/fhir/core/sid/org/uz/soliq`<br>`type` `TAX` | 310271027 |
| Muassasa nomi | Наименование учреждения | Organization.name | - | Chilonzor tuman poliklinikasi |
| Bemorning ro'yxatdan o'tish raqami | Регистрационный номер пациента | Encounter.identifier | `system` `https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number` | MRN-027-2026-0124 |
| Bemor turi | Тип пациента | Encounter.class | v3-ActCode | `IMP` "Inpatient encounter" |
| Murojaat sanasi | Дата подачи заявления | Encounter.actualPeriod.start | - | 2026-02-08T09:00:00+05:00 |
| Chiqarilgan sana | Дата выписки | Encounter.actualPeriod.end | - | 2026-02-10T09:00:00+05:00 |

---

### 2. Личные данные

Код раздела: LOINC `45970-1` "Demographic information section".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Bemor JShShIR | ПИНФЛ | Patient.identifier[nationalId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/ni`<br>`type` `NI` | 31234567890124 |
| Med ID raqami | Медицинский идентификационный номер | Patient.identifier[healthCardId] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/hc`<br>`type` `HC` | HC-2026-00027 |
| Bemor FISh | ФИО пациента | Patient.name.text | - | Yusupova Nilufar Rustamovna |
| Bemor tug'ilgan sanasi | Дата рождения | Patient.birthDate | - | 1988-07-22 |
| Bemor jinsi | Пол пациента | Patient.gender; gender.extension[gender-other] | [Administrative Gender](https://dhp.uz/fhir/core/en/ValueSet-administrative-gender-vs.html); для `other` обязательно расширение [Gender Other](https://dhp.uz/fhir/core/en/StructureDefinition-gender-other.html) | `female` |
| Bemor fuqaroligi | Гражданство пациента | Patient.extension[citizenship] | ISO 3166-1 | `UZ` "Uzbekistan" |
| Bemor Pasport seriyasi va № | Серия и № паспорта | Patient.identifier[passportLocal] | `system` `https://dhp.uz/fhir/core/sid/pid/uz/ppn/local`<br>`type` `PPN` | AC7654321 |

---

### 3. Адрес и контакты

Код раздела: LOINC `56799-0` "Address".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Bemor yashab kelayotgan manzili | Адрес проживания (фактический) | Patient.address: state, district, line, postalCode, text | - | 1726 (Toshkent shahar), 1726294 (Chilonzor tumani), 12-mavze, 5-uy, 10-xonadon |
| Bemor telefoni | Телефон | Patient.telecom (`system` `phone`) | - | +998901112233 |
| Bemor emaili | Email | Patient.telecom (`system` `email`) | - | nilufar.yusupova@mail.com |

---

### 4. Направление и диагноз

Код раздела: LOINC `42349-1` "Reason for referral (narrative)".

Каждый диагноз помечается элементом `Condition.category` из системы кодов [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) и размещается в соответствующем подразделе Composition: Asosiy tashxis - `main`, Asorati - `complication`, Yo'ldosh kasallik - `concomitant`.

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Yo'llagan muassasa | Направившее учреждение | Encounter.admission.origin | Organization | Yakkasaroy tuman oilaviy poliklinikasi |
| Asosiy tashxis | Основной диагноз | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code | ICD-10 | `J06.9` "Acute upper respiratory infection, unspecified" |
| Asorati | Осложнение | Condition.code; category | ICD-10; [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) `complication` | `J96.0` "Acute respiratory failure" |
| Yo'ldosh kasallik | Сопутствующее заболевание | Condition.code | ICD-10 | `E66.9` "Obesity, unspecified" |

---

### 5. Клинические данные

Код раздела: LOINC `34117-2` "History and physical note".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Shikoyatlar | Жалобы | Encounter.reason.value.concept.text | - | Yuqori nafas yo'llari infeksiyasiga xos shikoyatlar |
| Anamnez | Анамнез | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueString | LOINC `10164-2` "History of present illness Narrative" | 3 kundan beri tana harorati ko'tarilishi, quruq yo'tal, bosh og'rig'i |
| Klinik ko'rik | Клинический осмотр | Observation.valueString | LOINC `10210-3` "Physical findings of General status Narrative" | Umumiy holati qoniqarli, teri qoplamlari toza |
| Diagnostik tekshiruv | Диагностическое обследование | [DiagnosticReport](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-diagnostic-report.html).code | LOINC | `58410-2` "CBC panel - Blood by Automated count" |

---

### 6. Лечение и рекомендации

Код раздела: LOINC `18776-5` "Plan of care note".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Davolash | Лечение | [CarePlan](https://hl7.org/fhir/R5/careplan.html).activity.performedActivity.concept.text | - | Ko'p suyuqlik ichish, dam olish |
| Tavsiyalar | Рекомендации | CarePlan.description | - | Ko'p suyuqlik ichish, dam olish tavsiya etiladi, 3 kundan keyin qayta ko'rikka kelish |
| Retsept | Рецепт | [MedicationRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-medicationrequest.html).medication со ссылкой на [Medication](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-medication.html).code | МНН `https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs` | `005325` "paracetamol" |

---

### 7. Последующие мероприятия

Код раздела: LOINC `74213-0` "Discharge instructions".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Kuzatuv | Наблюдение | CarePlan.description | - | 1 hafta davomida kuzatuvda saqlash |
| Dispanserizatsiya | Диспансеризация | [EpisodeOfCare](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-episodeofcare.html).type[serviceType] | [Episode of Care Type](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-type-vs) | `mserv-0001-00004` "Treatment services" |
| Shifoxonaga yotqazish | Госпитализация | [ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html).code | [Service Request Codes](https://terminology.dhp.uz/fhir/core/ValueSet/service-request-code-vs) | SNOMED CT `32485007` "Hospital admission" |

---

### 8. Ответственные лица

Код раздела: LOINC `LP35157-4` "Responsible party".

| UZ | RU | Путь FHIR | Код | Пример значения |
|----|----|------------|------|---------------|
| Davolovchi shifokor FIShi | Лечащий врач (Ф.И.О.) | PractitionerRole.practitioner; code | [UZ Core Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | Ismoilova M.T., `2211.6` "Medical specialist" |
| Davolovchi shifokor imzosi | Лечащий врач (подпись) | [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html).signature | `type` [UZ Core Signature Type](https://dhp.uz/fhir/core/en/CodeSystem-signature-type-cs.html) | soliqAuth, 2026-02-10T09:20:00+05:00 |
| Mas'ul shaxs FIShi | Ответственное лицо (Ф.И.О.) | PractitionerRole.practitioner; code | [UZ Core Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | Nazarov S.K., `1342.18` "Head of department (health institution)" |
| Mas'ul shaxs imzosi | Ответственное лицо (подпись) | Provenance.signature | `type` UZ Core Signature Type | soliqAuth, 2026-02-10T09:25:00+05:00 |

---

### Обязательные коды

Элементы, для которых на бумажной форме нет поля, но которые обязательно передаются, и коды для них. `subject` (`patient` в EpisodeOfCare) - всегда пациент, в таблицу не включён.

| Ресурс | Элемент | Код | Значение |
|---|---|---|---|
| Encounter | status | [EncounterStatus](https://hl7.org/fhir/R5/valueset-encounter-status.html) | `completed`, когда пребывание или обращение, о котором выписка, завершено |
| Condition | clinicalStatus | [ConditionClinicalStatusCodes](https://hl7.org/fhir/R5/valueset-condition-clinical.html) | `active`, пока заболевание продолжается, `resolved` - когда оно закончилось |
| Observation | status | [ObservationStatus](https://hl7.org/fhir/R5/valueset-observation-status.html) | `final` |
| DiagnosticReport | status | [DiagnosticReportStatus](https://hl7.org/fhir/R5/valueset-diagnostic-report-status.html) | `final`, когда результаты выданы |
| CarePlan (лечение и рекомендации) | status; intent | [RequestStatus](https://hl7.org/fhir/R5/valueset-request-status.html); [CarePlanIntent](https://hl7.org/fhir/R5/valueset-care-plan-intent.html) | `active`, пока действуют рекомендации; `plan` |
| MedicationRequest | status; intent | [MedicationRequest Status](https://hl7.org/fhir/R5/valueset-medicationrequest-status.html); [MedicationRequest Intent](https://hl7.org/fhir/R5/valueset-medicationrequest-intent.html) | `active`; `order` (рецепт, выданный вместе с выпиской) |
| CarePlan (наблюдение) | status; intent | [RequestStatus](https://hl7.org/fhir/R5/valueset-request-status.html); [CarePlanIntent](https://hl7.org/fhir/R5/valueset-care-plan-intent.html) | `active`; `plan` |
| EpisodeOfCare | status | [EpisodeOfCareStatus](https://hl7.org/fhir/R5/valueset-episode-of-care-status.html) | `active`, когда пациент взят на диспансерный учёт, до этого `planned` |
| ServiceRequest | status; intent | [RequestStatus](https://hl7.org/fhir/R5/valueset-request-status.html); [RequestIntent](https://hl7.org/fhir/R5/valueset-request-intent.html) | `active`; `order` |

---

### Структура Bundle

Документ Формы 027 структурирован как FHIR Bundle, содержащий Composition [Form027MedicalRecordExtractComposition](StructureDefinition-form-027-medical-record-extract-composition.html):

```
Bundle (документ)
├── Composition (Form027MedicalRecordExtractComposition)
├── Patient (демографические данные пациента)
├── Encounter (обращение или пребывание в стационаре)
├── Organization[] (регистрирующее и направившее учреждение)
├── Practitioner[] (лечащий врач, ответственное лицо)
├── PractitionerRole[] (должности лечащего врача и ответственного лица)
├── Condition[] (основной диагноз, осложнение, сопутствующее заболевание)
├── Observation[] (анамнез, клинический осмотр)
├── DiagnosticReport (диагностические исследования)
├── CarePlan[] (лечение и рекомендации, наблюдение)
├── MedicationRequest / Medication (рецепт)
├── EpisodeOfCare (диспансерное наблюдение)
├── ServiceRequest (направление на госпитализацию)
└── Provenance[] (подписи лечащего врача и ответственного лица)
```

### Пример

Полный пример FHIR-документа см. в [примере выписки по Форме 027](Bundle-example-form-027-medical-record-extract.html).
