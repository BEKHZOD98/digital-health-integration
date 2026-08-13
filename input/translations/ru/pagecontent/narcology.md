<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td {
  overflow-wrap: anywhere;
  word-break: break-word;
  vertical-align: top;
}
</style>

### Регистрация социального статуса пациента (Observation)

Социальный статус пациента представляется с использованием профиля [UZ Core Socioeconomic Observation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation).

**Examples:** [`example-narko`](Observation-example-narko.html)

| Информация для записи | Value set | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Статус наблюдения | ObservationStatus | `final` | `status` |
| Тип наблюдения | [SocioeconomicObservationCodesVS](https://dhp.uz/fhir/core/ValueSet/socioeconomic-observation-codes-vs) | `SNOMED CT#82996008` | `code` |
| Социальный статус | [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | `regis0010.00003` (Работающий) | `valueCodeableConcept` |
| Пациент | - | ссылка на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Дата наблюдения | - | `2026-03-12` | `effectiveDateTime` |
| Исполнитель | - | ссылка на UZCorePractitionerRole | `performer` |

Следующие коды социального статуса используются в Наркологическом регистре:

| Код | Описание |
| :--- | :--- |
| `regis0010.00001` | Учащийся |
| `regis0010.00003` | Работающий |
| `regis0010.00004` | Неработающий |
| `regis0010.00006` | Пенсионер |

Элемент `subject` содержит ссылку на пациента, социальный статус которого регистрируется.

---

### Регистрация пациента в динамической группе наблюдения (EpisodeOfCare)

Регистрация пациента в Наркологическом регистре и его динамическая группа наблюдения представляются с использованием профиля [Narko Episode Of Care](StructureDefinition-episode-of-care-narko.html).

**Examples:** [`narko-episodeofcare-example`](EpisodeOfCare-narko-episodeofcare-example.html)

Эпизод содержит статус регистрации пациента, динамическую группу наблюдения, диагнозы, связанные с эпизодом, пациента, ответственную организацию, период регистрации и ответственного специалиста.

| Информация для записи | Value set | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Идентификатор | - | `https://dhp.uz/fhir/core/sid/reg/uz/narco` | `identifier` |
| Статус регистрации | [EpisodeOfCareStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs) | `active` | `status` |
| Динамическая группа наблюдения | [NarkoAndPsixEpisodeOfCareTypeGroupVS](ValueSet-narko-and-psix-episode-of-care-group-vs.html) | `narcr0001-00001` | `type[group]` |
| Диагноз | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `F15.1` | `diagnosis.condition` |
| Использование диагноза | Encounter Diagnosis Use | `working` | `diagnosis.use` |
| Пациент | - | ссылка на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `patient` |
| Ответственная организация | - | ссылка на [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) | `managingOrganization` |
| Дата регистрации | - | `2026-03-10` | `period.start` |
| Ответственный специалист | - | ссылка на UZCorePractitionerRole | `careManager` |

При регистрации пациента в Наркологическом регистре статус эпизода должен быть `active`.

После снятия пациента с регистрации статус эпизода должен быть изменён на `finished`.

Динамическая группа наблюдения представляется с использованием среза `group` элемента `EpisodeOfCare.type`.

Определены следующие коды групп Наркологического и Психиатрического регистров:

| Код | Код SNOMED CT | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- |
| `narcr0001-00001` | `302805002` | Профилактическая группа | Profilaktik guruh | Preventive group |
| `narcr0001-00002` | `225419007` | Диспансерная группа | Dispanser guruhi | Dispensary group |

Соответствующие отображения SNOMED CT определены в [Narko and Psix Episode Of Care Type Group to SNOMED CT ConceptMap](ConceptMap-narko-and-psix-episode-of-care-conceptmap.html).

#### Коды диагнозов

При регистрации диагноза, связанного с наркологическим эпизодом, необходимо использовать соответствующий код из [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs).

Определены следующие коды диагнозов:

| Клиническое состояние | Система кодирования | Код | Когда использовать |
| :--- | :--- | :--- | :--- |
| Психические и поведенческие расстройства вследствие употребления других стимуляторов, включая кофеин: вредное употребление | ICD-10 | `F15.1` | Использовать, когда данный наркологический диагноз применим к пациенту |
| ВИЧ-инфекция, приводящая к другим состояниям | ICD-10 | `B23` | Регистрировать как отдельный `Condition`, если ВИЧ выбран или выявлен в Наркологическом регистре |
| Туберкулёз органов дыхания | ICD-10 | `A15.7` | Регистрировать как отдельный `Condition`, если туберкулёз выбран или выявлен в Наркологическом регистре |
| Инвалидность | SNOMED CT | `21134002` | Регистрировать как отдельный `Condition`, если у пациента имеется инвалидность |

Элемент `diagnosis.condition` должен ссылаться на соответствующий [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition).

Эпизод может содержать несколько диагнозов.

---

### Регистрация медицинского приёма (Encounter)

Медицинский приём пациента в рамках Наркологического регистра представляется с использованием профиля [UZ Core Encounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter).

**Examples:** [`example-narko-encounter`](Encounter-example-narko-encounter.html)

Encounter представляет медицинский визит, зарегистрированный медицинским работником, и может быть связан с соответствующим `EpisodeOfCare`.

| Информация для записи | Value set | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Статус приёма | Encounter Status | `completed` | `status` |
| Пациент | - | ссылка на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Эпизод оказания помощи | - | ссылка на [NarkoEpisodeOfCare](StructureDefinition-episode-of-care-narko.html) | `episodeOfCare` |
| Период приёма | - | `2026-03-10T10:00:00Z` – `2026-03-10T11:00:00Z` | `actualPeriod` |
| Тип участника | Participant Type | `ATND` | `participant.type` |
| Медицинский работник | - | ссылка на UZCorePractitionerRole | `participant.actor` |
| Тип приёма | - | `mserv-0001-00004` (Лечебные услуги) | `type[nationalType]` |
| Диагноз | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `F15.1` | `diagnosis.condition` |
| Использование диагноза | Encounter Diagnosis Use | `final` | `diagnosis.use` |

Допустимые статусы Encounter:

- `in-progress`
- `on-hold`
- `completed`
- `cancelled`
- `entered-in-error`

Ссылка `episodeOfCare` связывает медицинский приём с соответствующей наркологической регистрацией пациента.

Encounter может содержать несколько диагнозов. Каждый диагноз должен ссылаться на соответствующий [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition).

---

### Регистрация решения врачебно-консультационной комиссии (Observation)

Решение врачебно-консультационной комиссии представляется с использованием профиля [ObservationNarko](StructureDefinition-observation-narko.html).

**Examples:** [`example-narko-observation`](Observation-example-narko-observation.html)

Профиль используется для хранения заключений, результатов и рекомендаций, выданных врачебно-консультационной комиссией.

| Информация для записи | Value set | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Статус наблюдения | Observation Status | `final` | `status` |
| Тип решения комиссии | [NarkoTypeResourceVS](ValueSet-narko-type-resource-vs.html) | `type-res-0002-0001` | `code` |
| Пациент | - | ссылка на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Медицинский приём | - | ссылка на [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) | `encounter` |
| Дата решения комиссии | - | `2026-03-12` | `effectiveDateTime` |
| Член комиссии | - | ссылка на UZCorePractitionerRole | `performer` |
| Результат комиссии | - | текст решения комиссии | `valueString` |

Код типа решения комиссии:

| Код | Код SNOMED CT | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- |
| `type-res-0002-0001` | `444804000` | Решение комиссии | Komissiya qarori | The commission's decision |

Соответствующая терминология определена в [TypeResourceCS](CodeSystem-type-resource-cs.html), а отображение в SNOMED CT — в [Type Resource to SNOMED CT ConceptMap](ConceptMap-type-resource-conceptmap.html).

Члены комиссии должны представляться ссылками в `performer`. Поскольку `performer` имеет кардинальность `0..*`, можно зарегистрировать несколько членов комиссии.

Результат или заключение комиссии записывается в `valueString`.

---

### Регистрация клинического состояния пациента (Condition)

Наркологическое клиническое состояние пациента представляется с использованием профиля [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition).

**Examples:** [`example-narko-condition`](Condition-example-narko-condition.html)

`Condition` содержит клинический статус, диагноз, пациента, связанный медицинский приём, дату регистрации и организацию, предоставившую информацию.

| Информация для записи | Value set | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Идентификатор | - | `https://dhp.uz/fhir/core/sid/reg/uz/narco` | `identifier` |
| Клинический статус | Condition Clinical Status Codes | `active` | `clinicalStatus` |
| Тяжесть инвалидности | [DisabilityVS](https://terminology.dhp.uz/fhir/core/ValueSet/disability-vs) | применимая степень инвалидности | `severity` |
| Диагноз | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `F15.1` | `code` |
| Пациент | - | ссылка на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Медицинский приём | - | ссылка на [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) | `encounter` |
| Дата регистрации | - | `2026-03-10` | `recordedDate` |
| Организация, предоставившая информацию | - | ссылка на [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) | `participant.actor` |

#### Коды диагнозов

Необходимо использовать соответствующий диагноз из [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs).

| Состояние | Система кодирования | Код | Когда использовать |
| :--- | :--- | :--- | :--- |
| Вредное употребление других стимуляторов, включая кофеин | ICD-10 | `F15.1` | Когда данный наркологический диагноз применим |
| ВИЧ-инфекция, приводящая к другим состояниям | ICD-10 | `B23` | Как отдельный `Condition`, если ВИЧ выбран или выявлен |
| Туберкулёз органов дыхания | ICD-10 | `A15.7` | Как отдельный `Condition`, если туберкулёз выбран или выявлен |
| Инвалидность | SNOMED CT | `21134002` | Как отдельный `Condition`, если присутствует инвалидность |

Если ВИЧ или туберкулёз не выбраны и не выявлены в Наркологическом регистре, соответствующий дополнительный `Condition` создавать не следует.

Каждое состояние связывается с пациентом через `subject`.

Если состояние выявлено или лечится во время конкретного медицинского приёма, может быть заполнен `encounter`.

#### Инвалидность

Для инвалидности применяются следующие правила:

1. `severity` заполняется только при наличии инвалидности и если её степень известна.
2. При наличии инвалидности создаётся отдельный `Condition`.
3. Для отдельного состояния инвалидности используется код SNOMED CT `21134002` (`Disability`).
4. Состояние инвалидности связывается с пациентом через `subject`.

---

### Регистрация социальной опасности и принудительного лечения (Flag)

Важная информация Наркологического регистра, о которой медицинские работники должны знать при оценке и лечении пациента, представляется с использованием профиля [FlagNarkoAndPsix](StructureDefinition-flag-narko-and-psix.html).

**Examples:** [`example-flag`](Flag-example-flag.html)

Ресурс `Flag` используется для регистрации таких признаков, как социальная опасность и принудительное лечение.

| Информация для записи | Value set | Пример кода | Хранится в |
| :--- | :--- | :--- | :--- |
| Статус флага | [FlagStatusVS](ValueSet-flag-status-vs.html) | `active` | `status` |
| Флаг регистра | [RegistriFlagVS](ValueSet-registry-flag-vs.html) | `registri0001-00002` | `code` |
| Пациент | - | ссылка на [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) | `subject` |
| Период действия | - | `2026-03-12` | `period` |
| Медицинский приём | - | ссылка на [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) | `encounter` |
| Автор | - | ссылка на UZCorePractitionerRole | `author` |

Статус флага является обязательным и может иметь следующие значения:

- `active`
- `inactive`
- `entered-in-error`

Коды флагов регистра:

| Код | Код SNOMED CT | Название SNOMED | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `registri0001-00001` | `129707006` | At increased risk for other-directed violence (finding) | Социальная опасность | Ijtimoiy xavflilik | Social danger / Social risk |
| `registri0001-00002` | `303163003` | Treatments administered under the provisions of the law | Принудительное лечение | Majburiy davolanish | Compulsory treatment |
| `registri0001-00003` | `303163003` | Treatments administered under the provisions of the law | Принудительное амбулаторное лечение | Majburiy ambulatoriya sharoitida davolanish | Compulsory outpatient treatment |
| `registri0001-00005` | `1193838006` | Legal guardian status | Под опекой | Vasiylik ostida | Legal guardian status |
| `registri0001-00006` | `21134002` | Disability (finding) | Инвалидность | Nogironlik | Disability |

Полное отображение определено в [Registry Flags to SNOMED CT ConceptMap](ConceptMap-registri-flags-conceptmap.html).

`subject` определяет пациента, к которому относится флаг регистра.

`encounter` может использоваться для связи флага с конкретным медицинским приёмом.

`author` содержит ссылку на роль медицинского работника, ответственного за регистрацию флага.

---

### Сводка терминологии

| Терминология | Ресурс / элемент | Назначение |
| :--- | :--- | :--- |
| [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | `Observation.valueCodeableConcept` | Социальный статус пациента |
| [SocioeconomicObservationCodesVS](https://dhp.uz/fhir/core/ValueSet/socioeconomic-observation-codes-vs) | `Observation.code` | Идентификация наблюдения социального статуса |
| [NarkoAndPsixEpisodeOfCareTypeGroupVS](ValueSet-narko-and-psix-episode-of-care-group-vs.html) | `EpisodeOfCare.type[group]` | Динамическая группа наблюдения |
| [EpisodeOfCareStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs) | `EpisodeOfCare.status` | Жизненный цикл регистрации |
| [NarkoTypeResourceVS](ValueSet-narko-type-resource-vs.html) | `Observation.code` | Решение врачебно-консультационной комиссии |
| [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `Condition.code` | Диагноз |
| [DisabilityVS](https://terminology.dhp.uz/fhir/core/ValueSet/disability-vs) | `Condition.severity` | Степень инвалидности |
| [RegistriFlagVS](ValueSet-registry-flag-vs.html) | `Flag.code` | Флаги Наркологического регистра |
| [FlagStatusVS](ValueSet-flag-status-vs.html) | `Flag.status` | Жизненный цикл флага |

---

### Взаимосвязи ресурсов

Типичная запись Наркологического регистра может связывать ресурсы следующим образом:

- `Patient` является центральным субъектом.
- [NarkoEpisodeOfCare](StructureDefinition-episode-of-care-narko.html) представляет регистрацию пациента в Наркологическом регистре и его динамическую группу наблюдения.
- [UZ Core Encounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) регистрирует медицинский приём и может ссылаться на соответствующий `EpisodeOfCare`.
- [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition) регистрирует диагнозы, связанные с пациентом, медицинским приёмом или эпизодом оказания помощи.
- [UZ Core Socioeconomic Observation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) регистрирует социальный статус пациента.
- [ObservationNarko](StructureDefinition-observation-narko.html) регистрирует решение врачебно-консультационной комиссии и может ссылаться на соответствующий `Encounter`.
- [FlagNarkoAndPsix](StructureDefinition-flag-narko-and-psix.html) регистрирует важную информацию Наркологического регистра, например социальную опасность или принудительное лечение.

Эти ресурсы связываются посредством ссылок на пациента, эпизод оказания помощи, медицинский приём, организацию и роль медицинского работника, что позволяет представить регистрацию пациента, клинические диагнозы, социальный статус, медицинские приёмы, решения комиссии и важные регистрационные флаги.