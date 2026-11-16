> Ushbu matn avtomatik tarjima qilingan.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - qarang: [Xavfsizlik va autentifikatsiya](https://dhp.uz/fhir/core/api-access.html#security). `[base]` bu [FHIR server bazaviy URL manzili](https://dhp.uz/fhir/core/api-access.html#endpoints); `|` identifikator tizimini uning qiymatidan ajratadi va URL'da `%7C` sifatida kodlanishi shart.

So'rovni o'qish:

```http
GET [base]/ServiceRequest/[id]
```

Identifikator, umumiy xizmat kodi yoki donor bo'yicha qidirish:

```http
GET [base]/ServiceRequest?identifier=[system]%7C[value]
GET [base]/ServiceRequest?code-concept=http://snomed.info/sct%7C108252007
GET [base]/ServiceRequest?subject=Patient/example-blood-donor
```

Misollardan biri asosida so'rov yaratish:

```http
POST [base]/ServiceRequest
Content-Type: application/fhir+json
```

Bir vaqtda o'zgartirishlardan himoyalanish uchun joriy versiya bilan yangilash:

```http
PUT [base]/ServiceRequest/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](https://dhp.uz/fhir/core/CapabilityStatement-DHPCapabilityStatement.html#ServiceRequest1-13) da keltirilgan.

### Tegishli materiallar

- [Qon xizmati shakllari](forms-volume-08-blood-service.html)
- [Laboratoriya tekshiruvlari va qayta ishlash operatsiyalari](ValueSet-bld-lab-codes-vs.html)
- [Mahalliy qayta ishlash operatsiyalari](CodeSystem-processing-operation-cs.html)
