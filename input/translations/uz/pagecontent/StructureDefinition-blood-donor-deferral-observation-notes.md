> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. Profil Observation asosida qurilgan, shuning uchun Observation endpointidan foydalaning. So'rovlar JWT kirish tokenini talab qiladi - qarang: [Xavfsizlik va autentifikatsiya](https://dhp.uz/fhir/core/uz/api-access.html#security). `[base]` bu [FHIR server bazaviy URL manzili](https://dhp.uz/fhir/core/uz/api-access.html#endpoints); `|` tizimni uning qiymatidan ajratadi va URL'da `%7C` sifatida kodlanishi shart.

Id bo'yicha o'qish, donor yoki chetlatish turi bo'yicha qidirish:

```http
GET [base]/Observation/[id]
GET [base]/Observation?patient=Patient/[id]
GET [base]/Observation?code=https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-type-cs%7Ctmpdf-0001-00001
```

Misollardan biri asosida resurs yarating; parallel o'zgarishlardan himoyalanish uchun yangilashda joriy ETag ni yuboring:

```http
POST [base]/Observation
Content-Type: application/fhir+json
```

```http
PUT [base]/Observation/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Qo'llab-quvvatlanadigan amallar va qidiruv parametrlarini [UZ Core CapabilityStatement](https://dhp.uz/fhir/core/uz/CapabilityStatement-DHPCapabilityStatement.html#Observation1-9) orqali tekshiring. Misollarda standart FHIR R5 qidiruv parametrlari ishlatilgan.

### Aloqador materiallar

- [Chetlatish sabablari](ValueSet-donor-deferral-reason-vs.html)
- [Chetlatish turlari](ValueSet-donor-deferral-type-vs.html)
- [UZ Core Observation](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-observation.html)
- [Must Support](https://dhp.uz/fhir/core/uz/must-support.html) &middot; [Umumiy ko'rsatmalar](https://dhp.uz/fhir/core/uz/general-guidance.html)
