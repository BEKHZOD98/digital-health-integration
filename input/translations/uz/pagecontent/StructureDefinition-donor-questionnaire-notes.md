> Bu inglizcha sahifaning mashina tarjimasi.

### Tez boshlash {#quick-start}

Amaldagi JWT tokenidan foydalaning. `[base]` ni FHIR server manzili bilan almashtiring; URL dagi `|` belgisini `%7C` sifatida kodlang.

```http
GET [base]/Questionnaire/donor-questionnaire
GET [base]/Questionnaire?url=https://dhp.uz/fhir/integrations/Questionnaire/donor-questionnaire
POST [base]/Questionnaire
Content-Type: application/fhir+json

PUT [base]/Questionnaire/donor-questionnaire
Content-Type: application/fhir+json
If-Match: W/"1"
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](https://dhp.uz/fhir/core/uz/CapabilityStatement-DHPCapabilityStatement.html#Questionnaire1-10) da keltirilgan.

### Tegishli materiallar

- [Donor so‘rovnomasi maydonlari mosligi](donor-questionnaire-mapping.html)
- [Questionnaire](StructureDefinition-donor-questionnaire.html)
- [QuestionnaireResponse](StructureDefinition-donor-questionnaire-response.html)
- [Questionnaires](forms.html)
