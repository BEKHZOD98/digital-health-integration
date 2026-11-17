> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Типичные API-взаимодействия для данного профиля. Профиль основан на Observation, поэтому используйте конечную точку Observation. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](https://dhp.uz/fhir/core/ru/api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](https://dhp.uz/fhir/core/ru/api-access.html#endpoints); `|` отделяет систему от значения и должен быть URL-кодирован как `%7C`.

Чтение по id или поиск по получателю и коду оценки:

```http
GET [base]/Observation/[id]
GET [base]/Observation?subject=Patient/example-transfusion-assessment-recipient
GET [base]/Observation?code=http://snomed.info/sct%7C252314007
```

Создавайте ресурс по полному примеру. Для исправления результатов обновляйте существующий ресурс, сохраняйте фактическое время оценки и используйте соответствующий статус, например amended. Передавайте текущий ETag для защиты от параллельных изменений.

```http
POST [base]/Observation
Content-Type: application/fhir+json
```

```http
PUT [base]/Observation/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Проверьте поддерживаемые операции и параметры поиска в [UZ Core CapabilityStatement](https://dhp.uz/fhir/core/ru/CapabilityStatement-DHPCapabilityStatement.html). В примерах используются стандартные параметры поиска FHIR R5.

### Связанные материалы

- [Blood transfusion assessment component](ValueSet-blood-transfusion-assessment-vs.html)
- [Blood transfusion compatibility result](ValueSet-blood-transfusion-value-vs.html)
- [Blood transfusion history category](ValueSet-blood-transfusion-history-vs.html)
- [Obstetric history category](ValueSet-obstetric-history-vs.html)
- [Biological transfusion test result](ValueSet-specimen-res-vs.html)
- [Blood Service](blood-service.html) &middot; [Формы службы крови](forms-volume-08-blood-service.html)
- [UZ Core Observation](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-observation.html)
- [Must Support](https://dhp.uz/fhir/core/ru/must-support.html) &middot; [Общие рекомендации](https://dhp.uz/fhir/core/ru/general-guidance.html)
