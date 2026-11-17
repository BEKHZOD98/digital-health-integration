> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. Profil Observation asosida qurilgan, shuning uchun Observation endpointidan foydalaning. So'rovlar JWT kirish tokenini talab qiladi - qarang: [Xavfsizlik va autentifikatsiya](https://dhp.uz/fhir/core/uz/api-access.html#security). `[base]` bu [FHIR server bazaviy URL manzili](https://dhp.uz/fhir/core/uz/api-access.html#endpoints); `|` tizimni uning qiymatidan ajratadi va URL'da `%7C` sifatida kodlanishi shart.

Id bo'yicha o'qish yoki oluvchi va baholash kodi bo'yicha qidirish:

```http
GET [base]/Observation/[id]
GET [base]/Observation?subject=Patient/example-transfusion-assessment-recipient
GET [base]/Observation?code=http://snomed.info/sct%7C252314007
```

To'liq misol asosida resurs yarating. Natijalarni tuzatishda mavjud resursni yangilang, baholashning haqiqiy vaqtini saqlang va amended kabi mos holatdan foydalaning. Parallel o'zgarishlardan himoyalanish uchun joriy ETag ni yuboring.

```http
POST [base]/Observation
Content-Type: application/fhir+json
```

```http
PUT [base]/Observation/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Qo'llab-quvvatlanadigan amallar va qidiruv parametrlarini [UZ Core CapabilityStatement](https://dhp.uz/fhir/core/uz/CapabilityStatement-DHPCapabilityStatement.html) orqali tekshiring. Misollarda standart FHIR R5 qidiruv parametrlari ishlatilgan.

### Aloqador materiallar

- [Blood transfusion assessment component](ValueSet-blood-transfusion-assessment-vs.html)
- [Blood transfusion compatibility result](ValueSet-blood-transfusion-value-vs.html)
- [Blood transfusion history category](ValueSet-blood-transfusion-history-vs.html)
- [Obstetric history category](ValueSet-obstetric-history-vs.html)
- [Biological transfusion test result](ValueSet-specimen-res-vs.html)
- [Blood Management](blood-management.html) &middot; [Qon xizmati shakllari](forms-volume-08-blood-service.html)
- [UZ Core Observation](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-observation.html)
- [Must Support](https://dhp.uz/fhir/core/uz/must-support.html) &middot; [Umumiy ko'rsatmalar](https://dhp.uz/fhir/core/uz/general-guidance.html)
