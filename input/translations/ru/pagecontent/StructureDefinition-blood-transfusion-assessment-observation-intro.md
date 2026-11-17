> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

Blood Transfusion Assessment Observation фиксирует проверки, выполняемые у реципиента при переливании крови: совместимость по ABO и Rh-Hr, трансфузионный и акушерский анамнез, предварительную группу крови ABO и результат биологической пробы на совместимость. Одно Observation соответствует одному протоколу переливания, каждая проверка передаётся в своём компоненте. Профиль основан на [UZ Core Observation](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-observation.html), поэтому для чтения и поиска используйте конечную точку Observation. Субъект - реципиент, [UZ Core Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html); запись может ссылаться на [Encounter](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-encounter.html), в ходе которого проведена оценка, и на медицинского работника, который её провёл. Как профиль сочетается с профилями UZ Core в работе службы крови, от регистрации донора до трансфузии, описано на странице [Blood Service](blood-service.html).

### Обязательные элементы данных и элементы Must Support

Перечисленные ниже элементы должны присутствовать всегда (обязательные) или должны поддерживаться, когда данные доступны ([Must Support](https://dhp.uz/fhir/core/ru/must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это удобочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждое Blood Transfusion Assessment Observation должно иметь

Каждое Blood Transfusion Assessment Observation должно содержать status, code - всегда SNOMED CT `252314007` *Blood transfusion test* как единственное кодирование - и subject - [Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html)-реципиента (1..1). Переданный идентификатор должен содержать `system`. Результаты оценки передаются в компонентах, и каждый компонент содержит свой фиксированный код.

#### Каждое Blood Transfusion Assessment Observation должно поддерживать

- бизнес-идентификатор оценки;
- Encounter, в ходе которого проведена оценка, и исполнителя - медицинского работника, его роль или организацию, ответственных за оценку;
- время проведения оценки (`effective[x]`) и время выдачи результата (`issued`);
- результаты совместимости по ABO и по Rh-Hr, каждый в своём компоненте;
- трансфузионный и акушерский анамнез, каждый в своём компоненте;
- предварительную группу крови ABO и результат биологической пробы на совместимость, каждый в своём компоненте;
- остальные элементы Must Support, унаследованные от UZ Core Observation.

### Построение JSON шаг за шагом

Примеры ниже идут от наименьшего экземпляра, который примет сервер, до полной оценки. Скопируйте один из них и адаптируйте - каждое показанное значение проходит валидацию по этому профилю. Полный эталонный экземпляр: [оценка реципиента](Observation-example-blood-transfusion-assessment.html).

#### Минимальное наблюдение, которое следует отправлять

Обязательны три элемента: `status`, `code`, указывающий, что это проба на переливание крови, и `subject` ([Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html)-реципиент). Добавьте также `effectiveDateTime` оценки: результат без времени нельзя соотнести с переливанием.

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

`subject` - обычный `Reference`, поэтому цель указывается непосредственно в `reference`.

#### Полная оценка

Каждая проверка передаётся в своём срезе `component`. Каждый срез необязателен и встречается не более одного раза; `code` выбирает срез, а `valueCodeableConcept` должен быть из ValueSet этого среза:

| Срез | `code` | `valueCodeableConcept` из |
|---|---|---|
| `aboCompatibility` | `bldcomp-0001-00001` | [Результат совместимости](ValueSet-blood-transfusion-value-vs.html) |
| `rhHrCompatibility` | `bldcomp-0001-00002` | [Результат совместимости](ValueSet-blood-transfusion-value-vs.html) |
| `transfusionHistory` | `bldcomp-0001-00003` | [Категория трансфузионного анамнеза](ValueSet-blood-transfusion-history-vs.html) |
| `obstetricHistory` | `bldcomp-0001-00004` | [Категория акушерского анамнеза](ValueSet-obstetric-history-vs.html) |
| `preliminaryAboGroup` | `bldcomp-0001-00005` | [Группа крови ABO](https://dhp.uz/fhir/core/ru/ValueSet-blood-group-vs.html) (SNOMED CT) |
| `biologicalSpecimen` | `bldcomp-0001-00006` | [Результат биологической пробы](ValueSet-specimen-res-vs.html) (SNOMED CT) |

Коды `bldcomp-0001` находятся в `https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-assessment-cs`. Локальные коды имеют отображения на узбекском языке, поэтому ресурс задаёт `language` = `uz`:

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

Передавайте только компоненты, записанные в протоколе: проверку, которая не проводилась, не передавайте вовсе, а не пустым компонентом. Для акушерского анамнеза используйте *Не применимо* (`bldcomp-0004-00001`), если он к реципиенту не относится, а для трансфузионного анамнеза - *Данные отсутствуют* (`bldcomp-0003-00004`), если его не удалось установить.

Примеры API-вызовов см. в разделе [Быстрый старт](#quick-start) внизу этой страницы.
