### Быстрый старт

Ищите назначения по номеру назначения, номеру донации или коду услуги. Разделитель системы и значения кодируется как `%7C`. Авторизация и поддерживаемые параметры описаны в [UZ Core API](https://dhp.uz/fhir/core/ru/api-access.html).

```http
GET [base]/ServiceRequest/[id]
GET [base]/ServiceRequest?identifier=https://dhp.uz/fhir/core/sid/doc/uz/blood-service-request%7CXON-SR-2026-0001
GET [base]/ServiceRequest?requisition=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation%7CDON-2025-0088231
GET [base]/ServiceRequest?code-concept=http://loinc.org%7C1975-2
GET [base]/ServiceRequest?subject=Location/example-blood-service-laboratory
```

Билирубин и АЛТ оформляются отдельными назначениями с общим номером донации. Для отмывания, замораживания и размораживания используются SNOMED CT `58059003`, `71643009` и `35382002`. Для облучения применяется `bcproc-0001-00002` из [BloodComponentProcessingCS](CodeSystem-blood-component-processing-cs.html). Каждая операция оформляется отдельным назначением и получает статус completed после подтверждения её выполнения.
