> Этот текст переведен автоматически.

### Быстрое начало работы {#quick-start}

Типичные API-взаимодействия для данного профиля. Запросы требуют JWT-токена доступа - см. [Безопасность и аутентификация](https://dhp.uz/fhir/core/api-access.html#security). `[base]` - это [базовый URL FHIR-сервера](https://dhp.uz/fhir/core/api-access.html#endpoints); `|` отделяет систему идентификатора от его значения и должен быть URL-кодирован как `%7C`.

Чтение запроса:

```http
GET [base]/ServiceRequest/[id]
```

Поиск по идентификатору, общему коду услуги или донору:

```http
GET [base]/ServiceRequest?identifier=[system]%7C[value]
GET [base]/ServiceRequest?code-concept=http://snomed.info/sct%7C108252007
GET [base]/ServiceRequest?subject=Patient/example-blood-donor
```

Создание запроса по одному из примеров:

```http
POST [base]/ServiceRequest
Content-Type: application/fhir+json
```

Обновление с указанием текущей версии для защиты от параллельных изменений:

```http
PUT [base]/ServiceRequest/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](https://dhp.uz/fhir/core/CapabilityStatement-DHPCapabilityStatement.html#ServiceRequest1-13).

### Связанные материалы

- [Формы службы крови](forms-volume-08-blood-service.html)
- [Лабораторные исследования и операции переработки](ValueSet-bld-lab-codes-vs.html)
- [Локальные операции переработки](CodeSystem-processing-operation-cs.html)
