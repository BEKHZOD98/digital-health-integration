> Машинный перевод; требуется проверка специалистом.

Наблюдение категории донора фиксирует категорию на определённую дату и может ссылаться на визит донации. Основано на [UZ Core Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html). Для донора пока используется UZCorePatient; отдельный профиль BloodDonorPatient в руководстве не определён.

### Обязательные и поддерживаемые элементы

Обязательные элементы передаются всегда. Элементы Must Support, в том числе унаследованные, заполняются при наличии данных и обрабатываются при получении. Точные кардинальности, типы и привязки приведены в формальном профиле.

#### Каждое наблюдение категории донора должно содержать

Статус, код наблюдения категории донора, ссылку на пациента и дату и время установления категории.

#### Каждое наблюдение категории донора должно поддерживать

- Категорию донора (кадровый или резервный) и оплату донации (безвозмездная или возмездная), если известны.
- Визит донации, исполнителя, идентификаторы и примечания при наличии.
- Дополнительные данные в компонентах без срезов: вид донации, группа крови ABO и резус-фактор.
- Остальные элементы Must Support из UZ Core Observation.

### Пошаговое построение JSON

1. Минимальное наблюдение:

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

2. Добавление категории и оплаты:

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

3. Добавление значений компонентов из соответствующих наборов:

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

Код наблюдения bdobs-0001-00004 добавлен по согласованию, чтобы отличать наблюдение от компонента вида донации. Коды компонентов bdobs-0001-00001, bdobs-0001-00002 и bdobs-0001-00003 обозначают вид донации, группу крови и резус-фактор соответственно. Группа крови и резус используют наборы UZ Core и коды SNOMED CT. Компоненты и их значения необязательны; переданное значение должно соответствовать коду компонента.

????????? ???????? ???????????? LOINC 29308-4, ??? ???????? ?????????? ?? ???-10. ???? ???????? ????????, ??? ??????????? ??????????????? ???????????.

[Source specification](https://docs.google.com/spreadsheets/d/1pNl4a2vlB-8aigBSalFRDu3xPH-BKtMsKgzITcZ-Yy8/edit#gid=1302421877).

См. [полный пример](Observation-example-blood-donor-category-observation.html) и [быстрый старт](#quick-start).

### Identifier slices {#identifier-slices}

| Slice | Cardinality | system |
|---|---|---|
| bloodId | 0..1 | https://dhp.uz/fhir/core/sid/prd/uz/blood |

