> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

Blood ServiceRequest - это запрос службы крови на лабораторные исследования донора или на вторичную переработку компонента крови (отмывание, облучение, замораживание или размораживание). Он основан на [UZ Core ServiceRequest](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-servicerequest.html) и фиксирует только сам запрос, а не выполненную работу. Лабораторное назначение указывает донора ([Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html)), визит донации ([Encounter](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-encounter.html)) и образцы донора для исследования ([Specimen](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-specimen.html)); запрос на переработку ссылается на компонент крови ([BiologicallyDerivedProduct](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-biologically-derived-product.html)). Выбранные исследования или операции перечисляются в `orderDetail`, поэтому один запрос содержит все выбранные позиции для одной лаборатории или одного компонента. Место этих запросов в работе службы крови показано на странице [Blood Management](blood-management.html), а исходные формы - на странице [Формы службы крови](forms-volume-08-blood-service.html).

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](https://dhp.uz/fhir/core/ru/must-support.html)) - не все они являются обязательными, но ваша система должна заполнять каждый элемент Must Support, когда у неё есть соответствующие данные, и обрабатывать его при получении. Это человекочитаемая сводка; [формальные представления](#profile) ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый Blood ServiceRequest должен содержать

Каждый запрос должен содержать `status`, намерение `order` и донора (`subject`). Каждый параметр детализации назначения должен содержать выбранное исследование или операцию в `code` и `valueBoolean` со значением `true`. Базовый ресурс также требует `code`, если присутствует `orderDetail`.

#### Каждый Blood ServiceRequest должен поддерживать

- номер назначения или запроса на переработку (`identifier`) и общий номер, объединяющий лабораторные назначения одной донации (`requisition`), каждый со своей `system`;
- статус запроса (draft / active / on-hold / revoked / completed / entered-in-error / unknown);
- принимающую лабораторию (`category`), например гематологическую, биохимическую или иммунологическую;
- срочность (`priority`: routine / urgent / asap / stat) и признак того, что услугу выполнять нельзя (`doNotPerform`);
- запрашиваемую услугу в целом (`code`), например лабораторную процедуру или переработку единицы крови;
- донора (`subject`) и визит донации (`encounter`);
- когда услуга должна быть выполнена (`occurrence[x]`) и когда запрос был оформлен (`authoredOn`);
- кто оформил запрос (`requester`), кто должен его выполнить (`performer`) и где (`location`);
- зачем нужна услуга (`reason`), как она оплачивается (расширение типа оплаты) и страховое покрытие (`insurance`);
- образцы донора для исследования (`specimen`) и компонент крови для переработки (`focus`);
- прочие сведения в поддержку запроса (`supportingInfo`), комментарии (`note`) и инструкции для донора (`patientInstruction`);
- выбранные лабораторные исследования или операции переработки (`orderDetail.parameter.code`, каждое с `valueBoolean` `true`).

### Сборка JSON, шаг за шагом

Примеры ниже идут от наименьшего валидного запроса к запросу на переработку компонента. Каждый из них проходит валидацию по этому профилю. Полные эталонные экземпляры - лабораторные назначения в [биохимическую](ServiceRequest-example-blood-laboratory-order.html), [иммунологическую](ServiceRequest-example-blood-immunology-laboratory-order.html), [на трансфузионно-трансмиссивные инфекции](ServiceRequest-example-blood-transfusion-infections-laboratory-order.html), [бактериологическую](ServiceRequest-example-blood-bacteriology-laboratory-order.html) и [гематологическую](ServiceRequest-example-blood-hematology-laboratory-order.html) лаборатории, а также запрос на [переработку компонента](ServiceRequest-example-blood-component-processing-order.html).

#### Наименьший Blood ServiceRequest

Базовый ресурс требует `status`, `intent` и `subject`, а каждый ресурс указывает свой профиль в `meta.profile`. Этого достаточно для прохождения валидации:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"] },
  "status": "active",
  "intent": "order",
  "subject": { "reference": "Patient/example-salim" }
}
```

Профиль фиксирует `intent` как `order` и ограничивает `subject` ресурсом [Patient](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-patient.html) - донором. Запрос полезен только тогда, когда в нём указано, что нужно сделать, поэтому следующие примеры добавляют выбранные исследования или операции.

#### Лабораторное назначение донору

Врач службы крови во время визита донации назначает биохимической лаборатории исследования билирубина и АЛТ по образцу цельной крови донора:

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

Создавайте отдельный запрос для каждой принимающей лаборатории: четыре для резервного донора и пять для регулярного. `category` указывает лабораторию кодом из национального перечня лабораторных разделов, у которых узбекские наименования, поэтому в ресурсе `language` равен `uz`. `code` имеет тип `CodeableReference`, поэтому кодировка находится внутри `concept`; общая услуга - SNOMED CT `108252007` Laboratory procedure. Каждое выбранное исследование - это один `orderDetail.parameter` с кодом из набора [лабораторных исследований и операций переработки](ValueSet-bld-lab-codes-vs.html) и `valueBoolean` `true`; невыбранные исследования не передавайте. Лабораторные коды остаются кандидатами до подтверждения методики и образца. Если лаборатория получает несколько пробирок донора, перечислите каждую в `specimen`. `identifier` и `requisition` необязательны, но если они передаются, каждый должен содержать `system`.

#### Запрос на переработку компонента

Сотрудник службы крови запрашивает отмывание и облучение эритроцитарного компонента:

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

Создавайте один запрос на компонент со всеми выбранными операциями из [операций переработки](CodeSystem-processing-operation-cs.html) и указывайте в `focus` компонент ([BiologicallyDerivedProduct](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-biologically-derived-product.html)); не повторяйте его в `supportingInfo`. `category` не передавайте. SNOMED CT `64108007` Blood unit processing - предварительный код общей услуги. Держите запрос в статусе `active`, пока не подтверждена каждая операция, затем переведите его в `completed`.

Примеры вызовов API приведены в разделе [Быстрый старт](#quick-start) внизу этой страницы.
