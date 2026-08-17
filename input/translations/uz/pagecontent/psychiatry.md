<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td {
  overflow-wrap: anywhere;
  word-break: break-word;
  vertical-align: top;
}
</style>

### Bemorning ijtimoiy holatini qayd etish (Observation)

Bemorning ijtimoiy holati [UZ Core Socioeconomic Observation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) profili orqali ifodalanadi — bu Narkologiya reyestrida ishlatiladigan bir xil asosiy (core) profil bo'lib, Psix tizimida hech qanday o'zgarishsiz qo'llaniladi.

**Misollar:** [`example-psychiatry-socio-economic-observation`](Observation-example-psychiatry-socio-economic-observation.html)

Kuzatuv (observation) SNOMED CT `82996008` kontseptini ishlatgan holda ijtimoiy holat kuzatuvi sifatida aniqlanadi. Bemorning haqiqiy ijtimoiy holati [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) asosida `valueCodeableConcept`da qayd etiladi.

| Qayd etiladigan ma'lumot | Value set | Namuna kod | Saqlanadigan joy |
| :--- | :--- | :--- | :--- |
| Kuzatuv holati | ObservationStatus | `final` | `status` |
| Kuzatuv turi | [SocioeconomicObservationCodesVS](https://dhp.uz/fhir/core/ValueSet/socioeconomic-observation-codes-vs) | `SNOMED CT#82996008` | `code` |
| Ijtimoiy holat | [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | `regis0010.00003` (Ishlaydigan / Employed) | `valueCodeableConcept` |
| Bemor | - | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) ga havola | `subject` |
| Kuzatuv sanasi | - | `2026-08-15` | `effectiveDateTime` |
| Ijrochi | - | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) ga havola | `performer` |

`subject` — ijtimoiy holati qayd etilayotgan bemorga havola qiladi.

---

### Bemorni dinamik kuzatuv guruhiga ro'yxatga olish (EpisodeOfCare)

Bemorning psixiatriya ro'yxatga olinishi va dinamik kuzatuv guruhi **Psix Episode of Care** profili (`PsychiatryEpisodeOfCare`) orqali ifodalanadi, u [UZCoreEpisodeOfCare](https://dhp.uz/fhir/core/StructureDefinition/uz-core-episode-of-care) ni cheklaydi (constrains).

**Misollar:** [`example-psychiatry-episode-of-care`](EpisodeOfCare-example-psychiatry-episode-of-care.html)

Epizod bemorning ro'yxatga olinish holatini, xizmat turini, dinamik kuzatuv guruhini, tashxisini, bemorni, boshqaruvchi tashkilotni, ro'yxatga olinish davrini va mas'ul amaliyotchi rolini qayd etadi.

| Qayd etiladigan ma'lumot | Value set | Namuna kod | Saqlanadigan joy |
| :--- | :--- | :--- | :--- |
| Ro'yxatga olinish holati | [EpisodeOfCareStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs) | `active` | `status` |
| Xizmat turi | Episode Of Care Type | `mserv-0001-00004` (Davolash xizmatlari) | `type[serviceType]` |
| Dinamik kuzatuv guruhi | [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) | `narcr0001-00001` (Profilaktik guruh) | `type[group]` |
| Tashxis | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | ICD-10 `F10.2` (Spirtli ichimliklarni iste'mol qilish tufayli qaramlik sindromi) | `diagnosis.condition` |
| Tashxis maqsadi | Encounter Diagnosis Use | `working` | `diagnosis.use` |
| Bemor | - | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) ga havola | `patient` |
| Boshqaruvchi tashkilot | - | [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) ga havola | `managingOrganization` |
| Ro'yxatga olinish sanasi | - | `2026-08-15` | `period.start` |
| Kuratsiya menejeri | - | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) ga havola | `careManager` |

`type[group]` elementi `PsychiatryEpisodeOfCare` da majburiy (`1..1`) bo'lib, [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) — Narkologiya reyestrida ham ishlatiladigan umumiy guruh value set'i bilan bog'langan, chunki dinamik kuzatuv guruhi ikkala reyestrga ham tegishli bo'lishi mumkin.

Narkologiya va psixiatriya uchun aniqlangan epizod guruh kodlari umumiy bo'lib qoladi:

| Kod | SNOMED CT kod | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- |
| `narcr0001-00001` | `302805002` | Профилактическая группа | Profilaktik guruh | Preventive group |
| `narcr0001-00002` | `225419007` | Диспансерная группа | Dispanser guruhi | Dispensary group |
| `psycr0001-00001` | `52748007` | Стационарное принудительное лечение | Majburiy statsionar davolanish | Compulsory inpatient treatment |

Bemor Psixiatriya reyestriga ro'yxatga olinganda, epizod holati `active` bo'ladi. Bemor ro'yxatdan chiqarilganda, epizod holati `finished` ga o'zgartirilishi kerak — bu Narkologiya reyestrida qo'llaniladigan hayot davri (lifecycle) mantig'i bilan bir xil.

---

### Tibbiy ko'rikni (uchrashuvni) qayd etish (Encounter)

Bemorning Psixiatriya reyestri doirasidagi tibbiy tashrifi [UZ Core Encounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) profili orqali, to'g'ridan-to'g'ri ifodalanadi — Psix uchun alohida encounter profili aniqlanmagan.

**Misollar:** [`example-psychiatry-encounter`](Encounter-example-psychiatry-encounter.html)

| Qayd etiladigan ma'lumot | Value set | Namuna kod | Saqlanadigan joy |
| :--- | :--- | :--- | :--- |
| Uchrashuv holati | Encounter Status | `completed` | `status` |
| Bemor | - | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) ga havola | `subject` |
| Haqiqiy uchrashuv davri | - | `2026-08-15` dan boshlanadi | `actualPeriod` |
| Uchrashuv turi | - | `mserv-0001-00004` (Davolash xizmatlari) | `type` |
| Ishtirokchi turi | v3 Participation Type | `ATND` (ishtirokchi/attender) | `participant.type` |
| Uchrashuvdagi amaliyotchi | - | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) ga havola | `participant.actor` |
| Tashxis | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `Condition/example-psychiatry-condition` ga havola | `diagnosis.condition` |
| Tashxis maqsadi | Encounter Diagnosis Use | `final` | `diagnosis.use` |

Narkologiya reyestridagi encounterdan farqli o'laroq, Psix namunaviy encounterida `episodeOfCare` havolasi berilmagan; bu bog'liqlik muhim bo'lgan hollarda, implementatorlar encounterni bemorning `PsychiatryEpisodeOfCare`si bilan bog'lash uchun `episodeOfCare`ni to'ldirishi mumkin.

---

### Tibbiy-maslahat komissiyasi qarorini qayd etish (Observation)

Tibbiy-maslahat komissiyasining qarori **Psix Observation Commission** profili (`PsychiatryObservationCommision`) orqali ifodalanadi, u [UZCoreObservation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation)ni cheklaydi.

**Misollar:** [`example-psychiatry-observation-commision`](Observation-example-psychiatry-observation-commision.html)

Narkologiya reyestridagi komissiya kuzatuviga nisbatan, Psix profili ixtiyoriy `identifier` va majburiy davolash to'g'risidagi qarorning asosini tashkil etuvchi sud protokoli raqami yoki sud nomini qayd etish uchun `protocolNumber` komponent slice'ini qo'shadi.

| Qayd etiladigan ma'lumot | Value set | Namuna kod | Saqlanadigan joy |
| :--- | :--- | :--- | :--- |
| Identifikator | - | (ixtiyoriy) | `identifier` |
| Kuzatuv holati | Observation Status | `final` | `status` |
| Komissiya qarori turi | [PsychiatryCommissionTypeVS](ValueSet-psychiatry-commission-type-vs.html) | `type-res-0002-0001` (Komissiya qarori) | `code` |
| Bemor | - | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) ga havola | `subject` |
| Uchrashuv | - | `Encounter/example-psychiatry-encounter` ga havola | `encounter` |
| Komissiya qarori sanasi | - | `2026-08-15` | `effectiveDateTime` |
| Komissiya natijasi | - | `Commission concluded compulsory inpatient treatment is required` | `valueString` |
| Ijrochi | - | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) ga havola | `performer` |
| Erkin matnli izoh | - | masalan, qarorni asoslovchi klinik xulosa | `note` |
| Protokol raqami / sud nomi | - | `Protocol No. 123, Tashkent City Civil Court` | `component[protocolNumber].valueString` |

`code` elementi (majburiy tarzda) [PsychiatryCommissionTypeVS](ValueSet-psychiatry-commission-type-vs.html) bilan bog'langan bo'lib, u `type-resource-cs` kod tizimidagi barcha kodlarni o'z ichiga oladi — bu Narkologiya reyestrining komissiya qarori turi bilan bir xil kod tizimi bo'lib, shu sababli `type-res-0002-0001` kodi o'zgarishsiz qayta ishlatiladi.

`protocolNumber` komponenti `component` ustida `code` bo'yicha farqlanadigan ochiq slice bo'lib, `type-resource-cs#type-res-0002-0002` ("Protocol number/court name") bilan bog'langan. U majburiy davolash qarorining huquqiy asosini (protokol raqami yoki sud) qayd etish uchun ishlatiladi va Narkologiya reyestrining komissiya kuzatuvida bunga o'xshash element yo'q.

`valueString` hamon majburiy bo'lib qoladi va erkin matnli qaror natijasini o'z ichiga oladi, har bir komissiya a'zosi esa alohida `performer` havolasi sifatida qayd etilishda davom etadi.

---

### Bemorning klinik holatini (tashxisini) qayd etish (Condition)

Psixiatriyaga oid klinik holat **Psix Condition** profili (`PsychiatryCondition`) orqali ifodalanadi, u [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition)ni cheklaydi.

**Misollar:** [`example-psychiatry-condition`](Condition-example-psychiatry-condition.html)

Narkologiya reyestridagi Condition'ga nisbatan, Psix profili qo'shimcha ravishda `identifier` va `onsetDateTime`ni majburiy qiladi hamda `participant.actor`ni faqat [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization)ga havola qilish bilan cheklaydi.

| Qayd etiladigan ma'lumot | Value set | Namuna kod | Saqlanadigan joy |
| :--- | :--- | :--- | :--- |
| Identifikator | - | (majburiy) | `identifier` |
| Klinik holat | Condition Clinical Status Codes | `active` | `clinicalStatus` |
| Tasdiqlash holati | Condition Verification Status | `confirmed` | `verificationStatus` |
| Tashxis | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | ICD-10 `F15.1` (Kofein ham kiruvchi boshqa stimulyatorlardan zararli foydalanish) | `code` |
| Bemor | - | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) ga havola | `subject` |
| Uchrashuv | - | `Encounter/example-psychiatry-encounter` ga havola | `encounter` |
| Boshlanish sanasi | - | `2026-08-15` | `onsetDateTime` |
| Ro'yxatga olinish sanasi | - | `2026-08-15` | `recordedDate` |
| Ma'lumot beruvchi tashkilot | - | [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization)ga havola | `participant.actor` |

Klinik holat hamon majburiy bo'lib qoladi, va Narkologiya reyestrining `Condition`ida ishlatiladigan active/resolved hayot davri mantig'i shu yerda ham qo'llaniladi.

#### Tashxis kodlari

Implementatorlar [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs)dan tegishli tashxis kodidan foydalanishlari kerak. Psix misollari ikki xil kontekstda ikkita tashxisni ko'rsatadi: `F15.1` (boshqa stimulyatorlardan zararli foydalanish) `Condition`da qayd etilgan, `F10.2` (spirtli ichimliklarga qaramlik sindromi) esa bemorning `EpisodeOfCare`sida tashxis sifatida ko'rsatilgan — ikkalasi ham bitta value set'dan olingan.

Har bir holat `subject` orqali bemor bilan bog'lanadi, holat muayyan tibbiy uchrashuv davomida aniqlangan yoki boshqarilgan bo'lsa, `encounter` havolasi to'ldirilishi mumkin.

---

### Terminologiya bo'yicha xulosa

Psixiatriya reyestri resurslarida ishlatiladigan terminologiya quyida umumlashtirilgan.

| Terminologiya | Resurs / Element | Maqsad |
| :--- | :--- | :--- |
| [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | `Observation.valueCodeableConcept` | Bemorning ijtimoiy holati |
| [SocioeconomicObservationCodesVS](https://dhp.uz/fhir/core/ValueSet/socioeconomic-observation-codes-vs) | `Observation.code` | Ijtimoiy holat kuzatuvini aniqlaydi |
| [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) | `EpisodeOfCare.type[group]` | Dinamik kuzatuv guruhi (Narkologiya bilan umumiy) |
| [EpisodeOfCareStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs) | `EpisodeOfCare.status` | Psixiatriya ro'yxatga olinish hayot davri |
| [PsychiatryCommissionTypeVS](ValueSet-psychiatry-commission-type-vs.html) | `Observation.code` | Tibbiy-maslahat komissiyasi qarori |
| [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `Condition.code`, `EpisodeOfCare.diagnosis.condition` | Psixiatriya tashxisi |

---

### Resurslar o'rtasidagi bog'liqlik

Odatiy Psixiatriya reyestri yozuvi resurslarni quyidagicha bog'lashi mumkin:

- `Patient` — markaziy subyekt.
- [PsychiatryEpisodeOfCare](StructureDefinition-psychiatry-episode-of-care.html) bemorning psixiatriya ro'yxatga olinishi va dinamik kuzatuv guruhini ifodalaydi.
- [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) reyestr doirasidagi tibbiy tashrifni qayd etadi.
- [PsychiatryCondition](StructureDefinition-psychiatry-condition.html) bemor va uchrashuv bilan bog'liq tashxislarni qayd etadi.
- [UZ Core Socioeconomic Observation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) bemorning ijtimoiy holatini qayd etadi.
- [PsychiatryObservationCommision](StructureDefinition-psychiatry-observation-commision.html) tibbiy-maslahat komissiyasi qarorini, jumladan majburiy davolash buyrug'i ortidagi huquqiy protokol yoki sudni qayd etadi va tegishli `Encounter`ga havola qiladi.

Ushbu resurslar bemor, uchrashuv, tashkilot va amaliyotchi roli havolalari orqali bog'lanib, bemorning psixiatriya ro'yxatga olinishini, klinik tashxislarini, ijtimoiy holatini, tibbiy uchrashuvlarini va komissiya qarorlarini ifodalaydi.