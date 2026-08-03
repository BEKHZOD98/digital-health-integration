<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

> **Mashina tarjimasi, inson tomonidan tekshirilishi kerak.** Ushbu sahifa sun'iy intellekt yordamida ingliz tilidan avtomatik tarzda tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday tafovut yuzaga kelganda, ingliz tilidagi asl nusxa ustuvor hisoblanadi.
>
> Ushbu sahifada Narkologiya registriga oid ma'lumotlar FHIR resurslari ko'rinishida qanday ifodalanishi tavsiflangan. Unda bemorning ijtimoiy holati, bemorni dinamik kuzatuv guruhiga ro'yxatga olish, tibbiy tashriflar, vrachlar-konsultativ komissiyasi qarorlari, klinik holatlar va registr flaglarini ifodalash tartibi yoritilgan.

# Narkologiya registri resurslari

## Umumiy ma'lumot

Ushbu sahifada Narkologiya registri doirasida bemorning ijtimoiy holati, dinamik kuzatuv guruhi, tibbiy tashriflari, vrachlar-konsultativ komissiyasi qarorlari, klinik holatlari va registrga oid flag ma'lumotlarini FHIR resurslari yordamida ifodalash tartibi hujjatlashtiriladi.

Ma'lumotlar alohida FHIR resurslari ko'rinishida ifodalanadi. Resurslar bemor bilan hamda zarur hollarda tegishli tibbiy yordam epizodi, tashrif, tashkilot va tibbiyot xodimi roli bilan bog'lanadi.

Ushbu bo'limda quyidagi asosiy resurslar tavsiflanadi:

- `Observation` — bemorning ijtimoiy holatini qayd etadi.
- `EpisodeOfCare` — bemorning Narkologiya registridagi hisobini va dinamik kuzatuv guruhini ifodalaydi.
- `Encounter` — bemorning tibbiy tashrifi haqidagi ma'lumotlarni qayd etadi.
- `Observation` — vrachlar-konsultativ komissiyasi qarori yoki xulosasini qayd etadi.
- `Condition` — bemorning narkologiyaga oid klinik holatlari va tashxislarini qayd etadi.
- `Flag` — tibbiyot xodimlariga yetkazilishi kerak bo'lgan muhim narkologiya registri ma'lumotlarini, masalan, ijtimoiy xavflilik yoki majburiy davolanishni qayd etadi.

---

## Bemorning ijtimoiy holatini qayd etish (Observation)

Bemorning ijtimoiy holati `Observation` resursi orqali ifodalanadi.

Observation ijtimoiy holat kuzatuvini `82996008` SNOMED CT kodi bilan aniqlaydi. Bemorning aniq ijtimoiy holati `SocialStatusVS` ValueSet yordamida `valueCodeableConcept` elementida qayd etiladi.

| Qayd etiladigan ma'lumot | ValueSet | Namuna kodi | Saqlanadigan element |
| :--- | :--- | :--- | :--- |
| Observation holati | ObservationStatus | `final` | `status` |
| Observation turi | SocioeconomicObservationCodesVS (0.4.0) | `SNOMED CT#82996008` | `code` |
| Ijtimoiy holat | SocialStatusVS (0.4.0) | `regis0010.00001` (O'quvchi) | `valueCodeableConcept` |
| Bemor | - | `UZCorePatient` ga reference | `subject` |
| Kuzatuv sanasi | - | `2026-03-10` | `effectiveDateTime` |

Observation holati majburiy bo'lib, `ObservationStatus` ValueSet dan foydalanadi.

Observation kodi SNOMED CT `82996008` ga fixed qilingan.

Ijtimoiy holat `SocialStatusVS` dan tanlanadi.

| Kod | Tavsif |
| :--- | :--- |
| `regis0010.00001` | O'quvchi |
| `regis0010.00003` | Ishlaydi |
| `regis0010.00004` | Ishlamaydi |
| `regis0010.00006` | Nafaqaxo'r |

`subject` elementi ijtimoiy holati qayd etilayotgan bemorga reference beradi.

---

## Bemorni dinamik kuzatuv guruhiga ro'yxatga olish (EpisodeOfCare)

`EpisodeOfCare` resursi bemorning Narkologiya registridagi hisobini va bemor tegishli bo'lgan dinamik kuzatuv guruhini ifodalaydi.

Episode bemorning identifikatori, hisob holati, dinamik kuzatuv guruhi, ushbu epizod bilan bog'liq tashxislar, bemor, boshqaruvchi tashkilot, hisobga olingan davr va mas'ul tibbiyot xodimi rolini o'z ichiga oladi.

| Qayd etiladigan ma'lumot | ValueSet | Namuna kodi | Saqlanadigan element |
| :--- | :--- | :--- | :--- |
| Identifikator | - | `https://dhp.uz/fhir/core/sid/reg/uz/narko` | `identifier` |
| Hisob holati | EpisodeOfCareStatusVS (0.4.0) | `active` | `status` |
| Dinamik kuzatuv guruhi | Group | `narcr0001-00002` (Dispanser guruhi) | `type.extension[group]` |
| Tashxis | ICD-10 / UZ Core Condition | `UZCoreCondition` ga reference | `diagnosis.condition` |
| Tashxisdan foydalanish | Encounter Diagnosis Use | - | `diagnosis.use` |
| Bemor | - | `UZCorePatient` ga reference | `patient` |
| Boshqaruvchi tashkilot | - | `UZCoreOrganization` ga reference | `managingOrganization` |
| Hisobga olingan sana | - | `2026-02-12` | `period` |
| Mas'ul tibbiyot xodimi | - | `PractitionerRole` ga reference | `careManager` |

Bemor hisobga olinganda episode holati `active` bo'ladi.

Bemor hisobdan chiqarilganda holat `finished` ga o'zgartirilishi kerak.

Dinamik kuzatuv guruhi `EpisodeOfCare.type` elementidagi `group` extension orqali ifodalanadi.

Belgilangan guruh kodlari:

| Kod | SNOMED CT kodi | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- |
| `narcr0001-00001` | `302805002` | Профилактическая группа | Profilaktik guruh | Preventive group |
| `narcr0001-00002` | `25861000087109` | Диспансерная группа | Dispanser guruhi | Dispensary group |

Episode bir nechta tashxisni o'z ichiga olishi mumkin. Har bir tashxis bemorning tibbiy yordam epizodi bilan bog'liq `Condition` resursiga reference beradi.

---

## Tibbiy tashrifni qayd etish (Encounter)

`Encounter` resursi Narkologiya registri doirasida bemorning tibbiy tashrifi haqidagi ma'lumotlarni o'z ichiga oladi.

Encounter shifokor tomonidan qayd etilgan tibbiy tashrifni ifodalaydi va bemorning `EpisodeOfCare` resursi bilan bog'lanishi mumkin.

Tashrif davomida aniqlangan yoki ko'rib chiqilgan bir nechta tashxislar qayd etilishi mumkin.

| Qayd etiladigan ma'lumot | ValueSet | Namuna kodi | Saqlanadigan element |
| :--- | :--- | :--- | :--- |
| Tashrif identifikatori | - | - | `identifier` |
| Tashrif holati | Encounter Status translations | `completed` | `status` |
| Bemor | - | `UZCorePatient` ga reference | `subject` |
| Tibbiy yordam epizodi | - | `EpisodeOfCare` ga reference | `episodeOfCare` |
| Tashrifning haqiqiy davri | - | `2026-02-12` | `actualPeriod` |
| Ishtirokchi turi | Participant Type | `ATND` | `participant.type` |
| Tibbiyot xodimi | - | `UZCorePractitionerRole` ga reference | `participant.actor` |
| Tashxis | - | `Condition` ga reference | `diagnosis.condition` |
| Tashxisdan foydalanish | Encounter Diagnosis Use | `final` | `diagnosis.use` |

Tashrif holati quyidagi qiymatlardan biri bo'lishi mumkin:

- `in-progress`
- `on-hold`
- `completed`
- `cancelled`
- `entered-in-error`

`episodeOfCare` reference tashrifni bemorning narkologik hisob epizodi bilan bog'laydi.

Tashrif bir nechta tashxisni o'z ichiga olishi mumkin. Har bir tashxis `Condition` resursiga reference beradi va tegishli tashxisdan foydalanish qiymatiga ega bo'lishi mumkin.

---

## Vrachlar-konsultativ komissiyasi qarorini qayd etish (Observation)

Vrachlar-konsultativ komissiyasi qarori `Observation` resursi orqali ifodalanadi.

Resurs komissiya qarori, bemor, tegishli tibbiy tashrif, qaror qabul qilingan sana, komissiya a'zolari, mas'ul tibbiyot xodimi roli va qo'shimcha izohlarni o'z ichiga oladi.

| Qayd etiladigan ma'lumot | ValueSet | Namuna kodi | Saqlanadigan element |
| :--- | :--- | :--- | :--- |
| Identifikator | - | `https://dhp.uz/fhir/core/sid/reg/uz/narko` | `identifier` |
| Observation holati | Observation Status | `final` | `status` |
| Komissiya qarori turi | type-resource | `narcr0002-0001` | `code` |
| Bemor | - | `Patient` ga reference | `subject` |
| Tibbiy tashrif | - | `Encounter` ga reference | `encounter` |
| Komissiya qarori sanasi | - | `2026-03-10` | `effectiveDateTime` |
| Komissiya a'zolari | - | `Тошматов Тошмат Тошматович` | `valueString` |
| Ijrochi | - | `PractitionerRole` ga reference | `performer` |
| Komissiya izohi | - | `Пациент нарко больной` | `note` |

Observation kodi resursni vrachlar-konsultativ komissiyasi qarori sifatida aniqlaydi.

Belgilangan terminologik moslik:

| Kod | SNOMED CT kodi | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- |
| `narcr0002-0001` | `365923008` | Решение комиссии | Komissiya qarori | The commission's decision |

`subject` elementi bemorni aniqlaydi.

`encounter` elementi komissiya qarorini tegishli tibbiy tashrif bilan bog'laydi.

`performer` elementi komissiya qarori uchun mas'ul tibbiyot xodimi roliga reference beradi.

Komissiya haqidagi qo'shimcha ma'lumot `note` elementida qayd etilishi mumkin.

---

## Bemorning klinik holatini qayd etish (Condition)

`Condition` resursi Narkologiya registrida ro'yxatdan o'tgan bemorning klinik holatini ifodalaydi.

U narkologik tashxislarni va boshqa klinik jihatdan muhim holatlarni qayd etish uchun ishlatilishi mumkin.

Resurs klinik holat, zarur hollarda og'irlik darajasi, tashxis kodi, bemor, tegishli tibbiy tashrif, hisobga olingan sana va bemor haqidagi ma'lumotni taqdim etgan tashkilotni o'z ichiga oladi.

| Qayd etiladigan ma'lumot | ValueSet | Namuna kodi | Saqlanadigan element |
| :--- | :--- | :--- | :--- |
| Identifikator | - | `https://dhp.uz/fhir/core/sid/reg/uz/narco` | `identifier` |
| Klinik holat | Condition Clinical Status Codes | `active` | `clinicalStatus` |
| Nogironlik og'irligi | DisabilityVS | - | `severity` |
| Tashxis (ICD-10) | ConditionCodeVS (preferred) | `F15.1` | `code` |
| Bemor | - | `UZCorePatient` ga reference | `subject` |
| Tibbiy tashrif | - | `UZCoreEncounter` ga reference | `encounter` |
| Hisobga olingan sana | - | `2026-03-10` | `recordedDate` |
| Ma'lumotni taqdim etgan tashkilot | - | `UZCoreOrganization` ga reference | `participant.actor` |

Klinik holat majburiy hisoblanadi.

Bemor hisobga olinganda holat `active` bo'ladi.

Bemor hisobdan chiqarilganda holat `resolved` ga o'zgartirilishi kerak.

Tashxis `ConditionCodeVS` dan preferred binding bilan foydalanadi va bemorning ICD-10 bo'yicha narkologik tashxisini ifodalaydi.

### Nogironlik

Nogironlik uchun quyidagi qoidalar qo'llaniladi:

1. `severity` faqat nogironlik mavjudligi tanlangan holatda to'ldirilishi kerak.
2. Nogironlik mavjud bo'lganda alohida `Condition` resursi yaratilishi kerak.
3. Nogironlik holati uchun SNOMED CT `21134002` (`Disability`) kodi ishlatiladi.

### OIV va sil kasalligi

Agar narkologiya tizimida bemorda OIV yoki sil kasalligi mavjudligi ko'rsatilgan bo'lsa, har bir tegishli holat uchun alohida `Condition` resursi yaratilishi kerak.

Belgilangan qo'shimcha ICD-10 mosliklari:

- OIV: ICD-10 `B23` kodi
- Sil kasalligi: ICD-10 `A15.7` kodi

Agar Narkologiya registrida OIV yoki sil kasalligi mavjudligi ko'rsatilmagan bo'lsa, tegishli qo'shimcha `Condition` resursi yaratilmaydi.

Har bir holat `subject` orqali bemor bilan bog'lanadi.

Agar holat muayyan tibbiy tashrif vaqtida aniqlangan bo'lsa, `encounter` reference to'ldirilishi mumkin.

---

## Ijtimoiy xavflilik va majburiy davolanishni qayd etish (Flag)

`Flag` resursi tibbiyot xodimlariga yetkazilishi kerak bo'lgan muhim ma'lumotlarni qayd etish uchun ishlatiladi.

Narkologiya registrida u ijtimoiy xavflilik va majburiy davolanish kabi registr flaglarini qayd etish uchun ishlatiladi.

| Qayd etiladigan ma'lumot | ValueSet | Namuna kodi | Saqlanadigan element |
| :--- | :--- | :--- | :--- |
| Flag holati | Flag Status | `active` | `status` |
| Registr flagi | Registri-flags | `registri0001-00002` (Majburiy davolanish) | `code` |
| Bemor | - | `Patient` ga reference | `subject` |
| Amal qilish davri | - | `2026-03-12` | `period` |
| Tibbiy tashrif | - | `Encounter` ga reference | `encounter` |
| Muallif | - | `UZCorePractitionerRole` ga reference | `author` |

Flag holati majburiy bo'lib, quyidagi qiymatlardan biri bo'lishi mumkin:

- `active`
- `inactive`
- `entered-in-error`

Registr flaglari:

| Kod | SNOMED CT kodi | SNOMED nomi | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `registri0001-00001` | `389315000` | At risk of harming others | Социальная опасность | Ijtimoiy xavflilik | Social danger / Social risk |
| `registri0001-00002` | `52748007` | Involuntary hospital admission | Принудительное лечение | Majburiy davolanish | Compulsory treatment |

`subject` elementi registr flagiga tegishli bemorni aniqlaydi.

`encounter` elementi flagni muayyan tibbiy tashrif bilan bog'lash uchun ishlatilishi mumkin.

`author` elementi flagni qayd etish uchun mas'ul tibbiyot xodimi roliga reference beradi.

---

## Terminologiya xulosasi

Narkologiya registri resurslarida ishlatiladigan terminologiya quyida keltirilgan.

| Terminologiya | Resurs / Element | Maqsadi |
| :--- | :--- | :--- |
| `SocialStatusVS` | `Observation.valueCodeableConcept` | Bemorning ijtimoiy holati |
| `Group` | `EpisodeOfCare.type.extension[group]` | Dinamik kuzatuv guruhi |
| `EpisodeOfCareStatusVS` | `EpisodeOfCare.status` | Narkologik hisob holati |
| `type-resource` | `Observation.code` | Vrachlar-konsultativ komissiyasi qarori |
| `ConditionCodeVS` | `Condition.code` | Narkologik tashxis |
| `DisabilityVS` | `Condition.severity` | Nogironlik bilan bog'liq og'irlik darajasi |
| `Registri-flags` | `Flag.code` | Narkologiya registri flaglari |

---

## Resurslar o'rtasidagi bog'lanishlar

Narkologiya registrining odatiy yozuvi resurslarni quyidagicha bog'lashi mumkin:

- `Patient` markaziy obyekt hisoblanadi.
- `EpisodeOfCare` bemorning narkologik hisobini va dinamik kuzatuv guruhini ifodalaydi.
- `Encounter` tibbiy tashrifni qayd etadi va tegishli `EpisodeOfCare` ga reference berishi mumkin.
- `Condition` bemor, tashrif yoki tibbiy yordam epizodi bilan bog'liq tashxislarni qayd etadi.
- `Observation` bemorning ijtimoiy holatini qayd etadi.
- Ikkinchi `Observation` vrachlar-konsultativ komissiyasi qarorini qayd etadi va tegishli `Encounter` ga reference berishi mumkin.
- `Flag` ijtimoiy xavflilik yoki majburiy davolanish kabi muhim Narkologiya registri ma'lumotlarini qayd etadi.

Ushbu tuzilma bemorning narkologik hisob holati, klinik tashxislari, ijtimoiy holati, tibbiy tashriflari, komissiya qarorlari va muhim registr flaglarini o'zaro bog'langan FHIR resurslari sifatida ifodalash imkonini beradi.