> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Типичные API-взаимодействия для данного профиля. Профиль основан на Observation, поэтому используйте конечную точку Observation. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](https://dhp.uz/fhir/core/ru/api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](https://dhp.uz/fhir/core/ru/api-access.html#endpoints); `|` отделяет систему от значения и должен быть URL-кодирован как `%7C`.

**Чтение по серверному id**

```
GET [base]/Observation/[id]
```

**Поиск оценок перед переливанием** (по реципиенту, по Encounter, по несовместимому результату)

```
GET [base]/Observation?patient=Patient/[id]&code=http://snomed.info/sct%7C252314007
GET [base]/Observation?encounter=Encounter/[id]&code=http://snomed.info/sct%7C252314007
GET [base]/Observation?code=http://snomed.info/sct%7C252314007&component-value-concept=https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-transfusion-value-cs%7Cbldcomp-0002-00002
```

**Создание**

```
POST [base]/Observation
{
  "resourceType": "Observation",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-transfusion-assessment-observation" ]
  },
  "status": "final",
  "code": { "coding": [ { "system": "http://snomed.info/sct", "code": "252314007" } ] },
  "subject": { "reference": "Patient/[id]" },
  "effectiveDateTime": "2026-11-11T10:30:00+05:00",
  ...
}
```

**Исправление ошибки** - отправьте PUT с полным ресурсом, исправленным значением и `status` = `amended`, сохранив исходное `effectiveDateTime`:

```
PUT [base]/Observation/[id]
If-Match: W/"3"   # ETag из последнего чтения; 412, если ресурс с тех пор изменился
```

Полный список поддерживаемых параметров поиска см. в [CapabilityStatement](https://dhp.uz/fhir/core/ru/CapabilityStatement-DHPCapabilityStatement.html#Observation1-9).

### Связанные материалы

- [Blood Service](blood-service.html) &middot; [Формы службы крови](forms-volume-08-blood-service.html)
- [UZ Core Observation](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-observation.html)
- [Must Support](https://dhp.uz/fhir/core/ru/must-support.html) &middot; [Общие рекомендации](https://dhp.uz/fhir/core/ru/general-guidance.html)
