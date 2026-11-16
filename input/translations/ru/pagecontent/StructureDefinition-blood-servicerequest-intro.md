Blood ServiceRequest оформляет одно лабораторное исследование или панель исследований донора либо одну операцию переработки компонента крови. Профиль основан на [UZ Core ServiceRequest](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-servicerequest.html). Для разных услуг создавайте отдельные назначения; назначения одной донации объединяйте через `requisition`.

### Обязательные элементы и Must Support

Каждое назначение содержит `status`, `intent` = `order`, `subject` и ровно один код в `code.concept`. Код услуги выбирается из [BloodLabCodesVS](ValueSet-blood-lab-codes-vs.html). Лабораторные коды требуют подтверждения соответствия методике и образцу.

Для лабораторного исследования `subject` ссылается на UZ Core Patient; `category` указывает лабораторию, `encounter` — визит донации, `specimen` — образцы. Для переработки запаса `subject` ссылается на UZ Core Location, а `focus` — на компонент UZ Core BiologicallyDerivedProduct. Исполнитель и место оказания услуги передаются в `performer` и `location`.

Необязательный срез `identifier[orderNumber]` использует фиксированную систему `https://dhp.uz/fhir/core/sid/doc/uz/blood-service-request` и обязательно содержит значение. Пространство идентификаторов описано в [NamingSystem](NamingSystem-blood-service-request-number-system.html); `assigner` указывает выдавшую номер организацию. Необязательный `requisition` использует существующую систему номера донации UZ Core `https://dhp.uz/fhir/core/sid/prd/uz/blood/donation` и обязательно содержит значение. Один номер донации связывает исследования и последующую переработку компонентов.

Поддерживайте унаследованные элементы Must Support, включая статус, категорию, приоритет, код, субъекта, визит, сроки, назначившего специалиста, исполнителя, место, причину, образцы и дополнительную информацию, а также срез идентификатора, focus и note этого профиля.

### Примеры лабораторного назначения и переработки

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"
    ]
  },
  "status": "active",
  "intent": "order",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/blood-service-request",
      "value": "XON-SR-2026-0001",
      "assigner": {
        "reference": "Organization/xonobod-medical-association"
      }
    }
  ],
  "requisition": {
    "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation",
    "value": "DON-2025-0088231"
  },
  "code": {
    "concept": {
      "coding": [
        {
          "system": "http://loinc.org",
          "code": "1975-2"
        }
      ]
    }
  },
  "subject": {
    "reference": "Patient/example-salim"
  },
  "specimen": [
    {
      "reference": "Specimen/example-blood-whole-blood-specimen"
    }
  ]
}
```

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"
    ]
  },
  "status": "active",
  "intent": "order",
  "requisition": {
    "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation",
    "value": "DON-2025-0088231"
  },
  "code": {
    "concept": {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "58059003",
          "display": "Washing RBC for transfusion"
        }
      ]
    }
  },
  "subject": {
    "reference": "Location/example-blood-service-laboratory"
  },
  "focus": [
    {
      "reference": "BiologicallyDerivedProduct/example-blood-component-product"
    }
  ]
}
```

Билирубин и АЛТ оформляются отдельными назначениями с общим номером донации. Для отмывания, замораживания и размораживания используются SNOMED CT `58059003`, `71643009` и `35382002`. Для облучения применяется `bcproc-0001-00002` из [BloodComponentProcessingCS](CodeSystem-blood-component-processing-cs.html). Каждая операция оформляется отдельным назначением и получает статус completed после подтверждения её выполнения.

[Laboratory example](ServiceRequest-example-blood-laboratory-order.html) · [Irradiation example](ServiceRequest-example-blood-component-irradiation-order.html) · [Blood Management](blood-management.html)
