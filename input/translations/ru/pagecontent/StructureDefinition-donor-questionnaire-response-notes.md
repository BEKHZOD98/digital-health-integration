> Это машинный перевод английской страницы.

### Быстрый старт {#quick-start}

Используйте действительный JWT. Замените `[base]` адресом FHIR-сервера; кодируйте `|` как `%7C` в URL.

```http
GET [base]/QuestionnaireResponse/example-donor-questionnaire-response
GET [base]/QuestionnaireResponse?questionnaire=https://dhp.uz/fhir/integrations/Questionnaire/donor-questionnaire
GET [base]/QuestionnaireResponse?subject=Patient/example-donor-questionnaire-patient
POST [base]/QuestionnaireResponse
Content-Type: application/fhir+json

PUT [base]/QuestionnaireResponse/example-donor-questionnaire-response
Content-Type: application/fhir+json
If-Match: W/"1"
```

Полный список поддерживаемых параметров поиска приведён в [CapabilityStatement](https://dhp.uz/fhir/core/ru/CapabilityStatement-DHPCapabilityStatement.html#QuestionnaireResponse1-11).

### Связанные материалы

- [Соответствие полей анкеты донора](donor-questionnaire-mapping.html)
- [Questionnaire](StructureDefinition-donor-questionnaire.html)
- [QuestionnaireResponse](StructureDefinition-donor-questionnaire-response.html)
- [Questionnaires](forms.html)
