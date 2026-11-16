### Tez boshlash

So'rov raqami, donatsiya raqami yoki xizmat kodi bo'yicha qidiring. Tizim va qiymat ajratgichi `%7C` sifatida kodlanadi. Avtorizatsiya va qo'llab-quvvatlanadigan parametrlar [UZ Core API](https://dhp.uz/fhir/core/uz/api-access.html) da berilgan.

```http
GET [base]/ServiceRequest/[id]
GET [base]/ServiceRequest?identifier=https://dhp.uz/fhir/core/sid/doc/uz/blood-service-request%7CXON-SR-2026-0001
GET [base]/ServiceRequest?requisition=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation%7CDON-2025-0088231
GET [base]/ServiceRequest?code-concept=http://loinc.org%7C1975-2
GET [base]/ServiceRequest?subject=Location/example-blood-service-laboratory
```

Bilirubin va ALT alohida so'rovlar bilan buyuriladi, donatsiya raqami esa umumiy bo'ladi. Yuvish, muzlatish va eritish uchun SNOMED CT `58059003`, `71643009` va `35382002` ishlatiladi. Nurlantirish uchun [BloodComponentProcessingCS](CodeSystem-blood-component-processing-cs.html) dagi `bcproc-0001-00002` qo'llaniladi. Har bir operatsiya uchun alohida so'rov yarating va bajarilishi tasdiqlangach completed holatiga o'tkazing.
