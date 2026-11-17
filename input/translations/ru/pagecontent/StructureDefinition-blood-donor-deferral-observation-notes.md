> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Быстрый старт {#quick-start}

Типичные API-взаимодействия для данного профиля. Профиль основан на Observation, поэтому используйте конечную точку Observation. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](https://dhp.uz/fhir/core/ru/api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](https://dhp.uz/fhir/core/ru/api-access.html#endpoints); `|` отделяет систему от значения и должен быть URL-кодирован как `%7C`.

Чтение по id, поиск по донору или типу отвода:

```http
GET [base]/Observation/[id]
GET [base]/Observation?patient=Patient/[id]
GET [base]/Observation?code=https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-type-cs%7Ctmpdf-0001-00001
```

Создавайте ресурс по одному из примеров; при обновлении передавайте текущий ETag для защиты от параллельных изменений:

```http
POST [base]/Observation
Content-Type: application/fhir+json
```

```http
PUT [base]/Observation/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Проверьте поддерживаемые операции и параметры поиска в [UZ Core CapabilityStatement](https://dhp.uz/fhir/core/ru/CapabilityStatement-DHPCapabilityStatement.html#Observation1-9). В примерах используются стандартные параметры поиска FHIR R5.

### Связанные материалы

- [Причины отвода](ValueSet-donor-deferral-reason-vs.html)
- [Типы отвода](ValueSet-donor-deferral-type-vs.html)
- [UZ Core Observation](https://dhp.uz/fhir/core/ru/StructureDefinition-uz-core-observation.html)
- [Must Support](https://dhp.uz/fhir/core/ru/must-support.html) &middot; [Общие рекомендации](https://dhp.uz/fhir/core/ru/general-guidance.html)
