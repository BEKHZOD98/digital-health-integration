<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td {
  overflow-wrap: anywhere;
  word-break: break-word;
  vertical-align: top;
}
</style>

### Фиксация социального статуса пациента (Observation)

Социальный статус пациента представлен с помощью профиля [UZ Core Socioeconomic Observation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) — того же базового профиля, что используется в Наркологическом регистре, применяемого в системе Psix без изменений.

**Примеры:** [`example-psychiatry-socio-economic-observation`](Observation-example-psychiatry-socio-economic-observation.html)

Наблюдение (observation) идентифицируется как наблюдение социального статуса с помощью концепта SNOMED CT `82996008`. Фактический социальный статус пациента фиксируется в `valueCodeableConcept` на основе [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs).

| Фиксируемая информация | Value set | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Статус наблюдения | ObservationStatus | `final` | `status` |
| Тип наблюдения | [SocioeconomicObservationCodesVS](https://dhp.uz/fhir/core/ValueSet/socioeconomic-observation-codes-vs) | `SNOMED CT#82996008` | `code` |
| Социальный статус | [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | `regis0010.00003` (Работающий / Employed) | `valueCodeableConcept` |
| Пациент | - | ссылка на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Дата наблюдения | - | `2026-08-15` | `effectiveDateTime` |
| Исполнитель | - | ссылка на [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `performer` |

`subject` ссылается на пациента, чей социальный статус фиксируется.

---

### Регистрация пациента в динамической группе наблюдения (EpisodeOfCare)

Постановка пациента на психиатрический учёт и его динамическая группа наблюдения представлены профилем **Psix Episode of Care** (`PsychiatryEpisodeOfCare`), ограничивающим [UZCoreEpisodeOfCare](https://dhp.uz/fhir/core/StructureDefinition/uz-core-episode-of-care).

**Примеры:** [`example-psychiatry-episode-of-care`](EpisodeOfCare-example-psychiatry-episode-of-care.html)

Эпизод фиксирует статус постановки пациента на учёт, тип услуги, динамическую группу наблюдения, диагноз, пациента, организацию, ведущую учёт, период регистрации и ответственную роль практикующего специалиста.

| Фиксируемая информация | Value set | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Статус постановки на учёт | [EpisodeOfCareStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs) | `active` | `status` |
| Тип услуги | Episode Of Care Type | `mserv-0001-00004` (Лечебные услуги) | `type[serviceType]` |
| Динамическая группа наблюдения | [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) | `narcr0001-00001` (Профилактическая группа) | `type[group]` |
| Диагноз | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | ICD-10 `F10.2` (Синдром зависимости вследствие употребления алкоголя) | `diagnosis.condition` |
| Назначение диагноза | Encounter Diagnosis Use | `working` | `diagnosis.use` |
| Пациент | - | ссылка на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `patient` |
| Организация, ведущая учёт | - | ссылка на [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) | `managingOrganization` |
| Дата постановки на учёт | - | `2026-08-15` | `period.start` |
| Куратор случая | - | ссылка на [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `careManager` |

Элемент `type[group]` является обязательным (`1..1`) в `PsychiatryEpisodeOfCare` и привязан к [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) — общему value set групп, используемому также Наркологическим регистром, поскольку динамическая группа наблюдения может относиться к обоим регистрам.

Определённые коды групп episode-of-care для наркологии и психиатрии остаются общими:

| Код | Код SNOMED CT | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- |
| `narcr0001-00001` | `302805002` | Профилактическая группа | Profilaktik guruh | Preventive group |
| `narcr0001-00002` | `225419007` | Диспансерная группа | Dispanser guruhi | Dispensary group |
| `psycr0001-00001` | `52748007` | Стационарное принудительное лечение | Majburiy statsionar davolanish | Compulsory inpatient treatment |

Когда пациент ставится на учёт в Психиатрическом регистре, статус эпизода — `active`. Когда пациент снимается с учёта, статус эпизода следует изменить на `finished` — по той же логике жизненного цикла, что применяется в Наркологическом регистре.

---

### Фиксация медицинского визита (Encounter)

Медицинский визит пациента в рамках Психиатрического регистра представлен непосредственно профилем [UZ Core Encounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) — отдельный профиль encounter для Psix не определён.

**Примеры:** [`example-psychiatry-encounter`](Encounter-example-psychiatry-encounter.html)

| Фиксируемая информация | Value set | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Статус визита | Encounter Status | `completed` | `status` |
| Пациент | - | ссылка на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Фактический период визита | - | начинается `2026-08-15` | `actualPeriod` |
| Тип визита | - | `mserv-0001-00004` (Лечебные услуги) | `type` |
| Тип участника | v3 Participation Type | `ATND` (присутствующий) | `participant.type` |
| Практикующий специалист на визите | - | ссылка на [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `participant.actor` |
| Диагноз | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | ссылка на `Condition/example-psychiatry-condition` | `diagnosis.condition` |
| Назначение диагноза | Encounter Diagnosis Use | `final` | `diagnosis.use` |

В отличие от Наркологического регистра, в примере визита Psix ссылка `episodeOfCare` не заполнена; там, где эта связь актуальна, разработчики могут заполнить `episodeOfCare`, чтобы связать визит с `PsychiatryEpisodeOfCare` пациента.

---

### Фиксация решения врачебно-консультативной комиссии (Observation)

Решение врачебно-консультативной комиссии представлено профилем **Psix Observation Commission** (`PsychiatryObservationCommision`), ограничивающим [UZCoreObservation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation).

**Примеры:** [`example-psychiatry-observation-commision`](Observation-example-psychiatry-observation-commision.html)

По сравнению с наблюдением комиссии в Наркологическом регистре, профиль Psix добавляет необязательный `identifier` и слайс компонента `protocolNumber` для фиксации номера судебного протокола или названия суда, лежащего в основе решения о принудительном лечении.

| Фиксируемая информация | Value set | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Идентификатор | - | (необязательно) | `identifier` |
| Статус наблюдения | Observation Status | `final` | `status` |
| Тип решения комиссии | [PsychiatryCommissionTypeVS](ValueSet-psychiatry-commission-type-vs.html) | `type-res-0002-0001` (Решение комиссии) | `code` |
| Пациент | - | ссылка на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Визит | - | ссылка на `Encounter/example-psychiatry-encounter` | `encounter` |
| Дата решения комиссии | - | `2026-08-15` | `effectiveDateTime` |
| Результат комиссии | - | `Commission concluded compulsory inpatient treatment is required` | `valueString` |
| Исполнитель | - | ссылка на [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) | `performer` |
| Произвольный текстовый комментарий | - | например, клиническое резюме, обосновывающее решение | `note` |
| Номер протокола / название суда | - | `Protocol No. 123, Tashkent City Civil Court` | `component[protocolNumber].valueString` |

Элемент `code` обязательно (required) привязан к [PsychiatryCommissionTypeVS](ValueSet-psychiatry-commission-type-vs.html), который включает все коды из системы кодов `type-resource-cs` — той же системы кодов, что используется для типа решения комиссии в Наркологическом регистре, поэтому код `type-res-0002-0001` используется без изменений.

Компонент `protocolNumber` — это открытый слайс на `component`, различаемый по `code`, привязанный к `type-resource-cs#type-res-0002-0002` ("Protocol number/court name"). Он используется специально для фиксации правового основания (номера протокола или суда) решения о принудительном лечении и не имеет аналога в наблюдении комиссии Наркологического регистра.

`valueString` по-прежнему обязателен и содержит текстовый результат решения, каждый член комиссии по-прежнему фиксируется отдельной ссылкой `performer`.

---

### Фиксация клинического состояния пациента (Condition)

Клиническое состояние, связанное с психиатрией, представлено профилем **Psix Condition** (`PsychiatryCondition`), ограничивающим [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition).

**Примеры:** [`example-psychiatry-condition`](Condition-example-psychiatry-condition.html)

По сравнению с Condition Наркологического регистра, профиль Psix дополнительно требует `identifier` и `onsetDateTime`, а также ограничивает `participant.actor` только ссылкой на [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization).

| Фиксируемая информация | Value set | Пример кода | Где хранится |
| :--- | :--- | :--- | :--- |
| Идентификатор | - | (обязательно) | `identifier` |
| Клинический статус | Condition Clinical Status Codes | `active` | `clinicalStatus` |
| Статус верификации | Condition Verification Status | `confirmed` | `verificationStatus` |
| Диагноз | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | ICD-10 `F15.1` (Пагубное употребление других стимуляторов, включая кофеин) | `code` |
| Пациент | - | ссылка на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Визит | - | ссылка на `Encounter/example-psychiatry-encounter` | `encounter` |
| Дата начала | - | `2026-08-15` | `onsetDateTime` |
| Дата регистрации | - | `2026-08-15` | `recordedDate` |
| Организация-источник информации | - | ссылка на [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) | `participant.actor` |

Клинический статус по-прежнему обязателен, и та же логика жизненного цикла active/resolved, что используется в `Condition` Наркологического регистра, применяется и здесь.

#### Коды диагнозов

Разработчикам следует использовать соответствующий код диагноза из [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs). Примеры Psix иллюстрируют два диагноза в разных контекстах: `F15.1` (пагубное употребление других стимуляторов) фиксируется в `Condition`, а `F10.2` (синдром зависимости от алкоголя) указан как диагноз в `EpisodeOfCare` пациента — оба взяты из одного и того же value set.

Каждое состояние связано с пациентом через `subject`; если состояние выявлено или ведётся в рамках конкретного медицинского визита, может быть заполнена ссылка `encounter`.

---

### Сводка по терминологии

Терминология, используемая ресурсами Психиатрического регистра, обобщена ниже.

| Терминология | Ресурс / элемент | Назначение |
| :--- | :--- | :--- |
| [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | `Observation.valueCodeableConcept` | Социальный статус пациента |
| [SocioeconomicObservationCodesVS](https://dhp.uz/fhir/core/ValueSet/socioeconomic-observation-codes-vs) | `Observation.code` | Идентифицирует наблюдение социального статуса |
| [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) | `EpisodeOfCare.type[group]` | Динамическая группа наблюдения (общая с Наркологией) |
| [EpisodeOfCareStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs) | `EpisodeOfCare.status` | Жизненный цикл постановки на психиатрический учёт |
| [PsychiatryCommissionTypeVS](ValueSet-psychiatry-commission-type-vs.html) | `Observation.code` | Решение врачебно-консультативной комиссии |
| [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `Condition.code`, `EpisodeOfCare.diagnosis.condition` | Психиатрический диагноз |

---

### Связи между ресурсами

Типичная запись Психиатрического регистра может связывать ресурсы следующим образом:

- `Patient` — центральный субъект.
- [PsychiatryEpisodeOfCare](StructureDefinition-psychiatry-episode-of-care.html) представляет постановку пациента на психиатрический учёт и его динамическую группу наблюдения.
- [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) фиксирует медицинский визит в рамках регистра.
- [PsychiatryCondition](StructureDefinition-psychiatry-condition.html) фиксирует диагнозы, связанные с пациентом и визитом.
- [UZ Core Socioeconomic Observation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) фиксирует социальный статус пациента.
- [PsychiatryObservationCommision](StructureDefinition-psychiatry-observation-commision.html) фиксирует решение врачебно-консультативной комиссии, включая правовой протокол или суд, лежащий в основе постановления о принудительном лечении, и ссылается на связанный `Encounter`.

Эти ресурсы связаны через ссылки на пациента, визит, организацию и роль практикующего специалиста, представляя постановку пациента на психиатрический учёт, клинические диагнозы, социальный статус, медицинские визиты и решения комиссии.