> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - qarang: [Xavfsizlik va autentifikatsiya](https://dhp.uz/fhir/core/uz/api-access.html#security). `[base]` bu [FHIR server bazaviy URL manzili](https://dhp.uz/fhir/core/uz/api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va URL'da `%7C` sifatida kodlanishi shart.

**So'rovni server id bo'yicha va uning oldingi versiyalarini o'qish**

```
GET [base]/ServiceRequest/[id]
GET [base]/ServiceRequest/[id]/_history
```

**Qidiruv**

```
GET [base]/ServiceRequest?identifier=[system]%7C[value]
GET [base]/ServiceRequest?requisition=[system]%7C[value]
GET [base]/ServiceRequest?code-concept=http://snomed.info/sct%7C108252007&patient=Patient/[id]
GET [base]/ServiceRequest?code-concept=http://snomed.info/sct%7C64108007&status=active
GET [base]/ServiceRequest?encounter=Encounter/[id]
GET [base]/ServiceRequest?patient=Patient/[id]&status=active
GET [base]/ServiceRequest?specimen=Specimen/[id]
```

**Laboratoriya buyurtmasini natijalari bilan birga olish**

```
GET [base]/ServiceRequest?_id=[id]&_revinclude=DiagnosticReport:based-on
```

**So'rov yaratish**

```
POST [base]/ServiceRequest
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest" ] },
  "status": "active",
  "intent": "order",
  "code": { "concept": { "coding": [ { "system": "http://snomed.info/sct", "code": "108252007" } ] } },
  "subject": { "reference": "Patient/[id]" },
  "requester": { "reference": "PractitionerRole/[id]" },
  "authoredOn": "2026-11-10T09:05:00+05:00",
  "orderDetail": [ { "parameter": [ { "code": { "coding": [ ... ] }, "valueBoolean": true } ] } ],
  ...
}
```

**Mavjud so'rovni yangilash** (masalan, har bir qayta ishlash operatsiyasi tasdiqlangach `status` ni `completed` ga o'rnatish)

```
PUT [base]/ServiceRequest/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "ServiceRequest",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest" ] },
  "status": "completed",
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](https://dhp.uz/fhir/core/uz/CapabilityStatement-DHPCapabilityStatement.html#ServiceRequest1-13) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core ServiceRequest](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-servicerequest.html) &middot; [UZ Core Specimen](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-specimen.html) &middot; [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-biologically-derived-product.html)
- [Blood Management](blood-management.html) &middot; [Qon xizmati shakllari](forms-volume-08-blood-service.html) &middot; [Laboratoriya tekshiruvlari va qayta ishlash operatsiyalari](ValueSet-bld-lab-codes-vs.html) &middot; [Qayta ishlash operatsiyalari](CodeSystem-processing-operation-cs.html)
- [Laboratoriya ish jarayoni](https://dhp.uz/fhir/core/uz/workflow-lab.html) &middot; [Must Support](https://dhp.uz/fhir/core/uz/must-support.html) &middot; [Umumiy tavsiyalar](https://dhp.uz/fhir/core/uz/general-guidance.html)
