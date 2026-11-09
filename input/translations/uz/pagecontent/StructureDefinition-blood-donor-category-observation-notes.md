> Mashina tarjimasi; mutaxassis tekshiruvi talab etiladi.

### Tezkor boshlash {#quick-start}

So'rovlar uchun JWT kerak. `[base]` FHIR serverining asosiy URL manzili; `|` ajratgichi `%7C` sifatida kodlanadi.

```http
GET [base]/Observation/[id]
GET [base]/Observation?patient=Patient/[id]&code=http://snomed.info/sct%7C105470007
GET [base]/Observation?encounter=Encounter/[id]

POST [base]/Observation
Content-Type: application/fhir+json

PUT [base]/Observation/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

POST va PUT uchun kirish qismidagi to'liq JSON namunasini so'rov tanasi sifatida ishlating. Yangilashdan oldin resursni o'qing va uning meta.versionId qiymatini If-Match ga qo'ying.

### Tegishli materiallar

- [DHP CapabilityStatement](https://dhp.uz/fhir/core/en/CapabilityStatement-DHPCapabilityStatement.html)
- [UZ Core Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html)
- [Example](Observation-example-blood-donor-category-observation.html)
