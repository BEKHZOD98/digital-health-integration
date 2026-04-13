CodeSystem: LaboratoryObservationPanelCS
Id: lab-observation-pan-cs
Title: "Laboratory Observation Panels and Analytes"
<<<<<<< HEAD
Description: "Code system defining laboratory observation panels and individual analytes used in Ministry of Health Uzbekistan ."
* ^experimental = true
* ^caseSensitive = true
* ^language = #uz
=======
Description: "Code system defining laboratory observation panels and individual analytes used in Uzbekistan."
* insert OriginalCodeSystemDraft(lab-observation-pan-cs)
>>>>>>> 6a3f730 (initial commit)

* #lab-pan-A "Siydikning makrosopik tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Макроскопическое исследование мочи"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urine macroscopic analysis"

<<<<<<< HEAD
  * #lab-pan-1 "Miqdori"
=======
  * #lab-1 "Miqdori"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество"
    * ^designation[+].language = #en
    * ^designation[=].value = "Urine volume [Volume]"

<<<<<<< HEAD
  * #lab-pan-2 "Rangi"
=======
  * #lab-2 "Rangi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цвет"
    * ^designation[+].language = #en
    * ^designation[=].value = "Color of Urine"

<<<<<<< HEAD
  * #lab-pan-3 "Shaffofligi"
=======
  * #lab-3 "Shaffofligi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Прозрачность"
    * ^designation[+].language = #en
    * ^designation[=].value = "Appearance of Urine"

<<<<<<< HEAD
  * #lab-pan-4 "Nisbiy zichligi"
=======
  * #lab-4 "Nisbiy zichligi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Относительная плотность"
    * ^designation[+].language = #en
    * ^designation[=].value = "Specific gravity of Urine by Refractometry"

<<<<<<< HEAD
  * #lab-pan-5 "Reaksiya"
=======
  * #lab-5 "Reaksiya"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Реакция"
    * ^designation[+].language = #en
    * ^designation[=].value = "Urine pH"

<<<<<<< HEAD
  * #lab-pan-6 "Oqsil"
=======
  * #lab-6 "Oqsil"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Белок"
    * ^designation[+].language = #en
    * ^designation[=].value = "Protein [Mass/volume] in Urine by Test strip"

<<<<<<< HEAD
  * #lab-pan-7 "Glyukoza"
=======
  * #lab-7 "Glyukoza"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Глюкоза"
    * ^designation[+].language = #en
    * ^designation[=].value = "Glucose [Mass/volume] in Urine by Test strip"

<<<<<<< HEAD
  * #lab-pan-8 "Keton tanachalari"
=======
  * #lab-8 "Keton tanachalari"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Кетоновые тела"
    * ^designation[+].language = #en
    * ^designation[=].value = "Ketones [Mass/volume] in Urine by Test strip"

<<<<<<< HEAD
  * #lab-pan-9 "Qon borligini aniqlash ryeaksiyasi"
=======
  * #lab-9 "Qon borligini aniqlash ryeaksiyasi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Реакция на наличие крови"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hemoglobin [Presence] in Urine by Test strip"

<<<<<<< HEAD
  * #lab-pan-10 "Bilirubin"
=======
  * #lab-10 "Bilirubin"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Билирубин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bilirubin [Presence] in Urine by Test strip"

<<<<<<< HEAD
  * #lab-pan-11 "Urobilinoidlar"
=======
  * #lab-11 "Urobilinoidlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Уробилиноген"
    * ^designation[+].language = #en
    * ^designation[=].value = "Urobilinogen [Presence] in Urine by Test strip"

<<<<<<< HEAD
  * #lab-pan-12 "O't kislotasi"
=======
  * #lab-12 "O't kislotasi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Желчные кислоты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bile acids [Presence] in Urine"

* #lab-pan-AA "Siydikning mikroskopik tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопическое исследование мочи"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urine microscopic analysis"

<<<<<<< HEAD
  * #lab-pan-13 "Epiteliy: yassi"
=======
  * #lab-13 "Epiteliy: yassi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эпителий: плоский"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells.squamous [#/area] in Urine sediment by Microscopy HPF"

<<<<<<< HEAD
  * #lab-pan-14 "Epiteliy: o‘tuvchi"
=======
  * #lab-14 "Epiteliy: o‘tuvchi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эпителий: переходный"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells.transitional [#/area] in Urine sediment by Microscopy HPF"

<<<<<<< HEAD
  * #lab-pan-15 "Epiteliy: buyrak epiteliyasi"
=======
  * #lab-15 "Epiteliy: buyrak epiteliyasi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эпителий: почечный"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells.renal [#/area] in Urine sediment by Microscopy HPF"

<<<<<<< HEAD
  * #lab-pan-16 "Leykotsitlar"
=======
  * #lab-16 "Leykotsitlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейкоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [#/area] in Urine sediment by Microscopy HPF"

<<<<<<< HEAD
  * #lab-pan-17 "Eritrotsitlar o‘zgargan"
=======
  * #lab-17 "Eritrotsitlar o‘zgargan"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритроциты изменённые"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocytes dysmorphic [#/area] in Urine sediment by Microscopy HPF"

<<<<<<< HEAD
  * #lab-pan-18 "Eritrotsitlar o‘zgarmagan"
=======
  * #lab-18 "Eritrotsitlar o‘zgarmagan"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритроциты неизменённые"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocytes [#/area] in Urine sediment by Microscopy HPF"

<<<<<<< HEAD
  * #lab-pan-19 "Silindrlar: gialinli"
=======
  * #lab-19 "Silindrlar: gialinli"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цилиндры: гиалиновые"
    * ^designation[+].language = #en
    * ^designation[=].value = "Casts.hyaline [#/area] in Urine sediment by Microscopy LPF"

<<<<<<< HEAD
  * #lab-pan-20 "Silindrlar: mumsimon"
=======
  * #lab-20 "Silindrlar: mumsimon"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цилиндры: восковидные"
    * ^designation[+].language = #en
    * ^designation[=].value = "Casts.waxy [#/area] in Urine sediment by Microscopy LPF"

<<<<<<< HEAD
  * #lab-pan-21 "Silindrlar: donador"
=======
  * #lab-21 "Silindrlar: donador"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цилиндры: зернистые"
    * ^designation[+].language = #en
    * ^designation[=].value = "Casts.granular [#/area] in Urine sediment by Microscopy LPF"

<<<<<<< HEAD
  * #lab-pan-22 "Silindrlar: eritrotsitar"
=======
  * #lab-22 "Silindrlar: eritrotsitar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цилиндры: эритроцитарные"
    * ^designation[+].language = #en
    * ^designation[=].value = "Casts.red blood cells [#/area] in Urine sediment by Microscopy LPF"

<<<<<<< HEAD
  * #lab-pan-23 "Silindrlar: leykotsitar"
=======
  * #lab-23 "Silindrlar: leykotsitar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цилиндры: лейкоцитарные"
    * ^designation[+].language = #en
    * ^designation[=].value = "Casts.white blood cells [#/area] in Urine sediment by Microscopy LPF"

<<<<<<< HEAD
  * #lab-pan-24 "Silindrlar: epitelial"
=======
  * #lab-24 "Silindrlar: epitelial"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цилиндры: эпителиальные"
    * ^designation[+].language = #en
    * ^designation[=].value = "Casts.epithelial cells [#/area] in Urine sediment by Microscopy LPF"

<<<<<<< HEAD
  * #lab-pan-25 "Shilliq"
=======
  * #lab-25 "Shilliq"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Слизь"
    * ^designation[+].language = #en
    * ^designation[=].value = "Mucus [Presence] in Urine sediment by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-26 "Tuzlar"
=======
  * #lab-26 "Tuzlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Соли"
    * ^designation[+].language = #en
    * ^designation[=].value = "Crystals [Presence] in Urine sediment by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-27 "Bakteriyalar"
=======
  * #lab-27 "Bakteriyalar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Бактерии"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bacteria [Presence] in Urine sediment by Light microscopy"

* #lab-pan-B "Najasning makroskopik tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Макроскопическое исследование кала"
  * ^designation[+].language = #en
  * ^designation[=].value = "Macroscopic stool analysis"

<<<<<<< HEAD
  * #lab-pan-28 "Miqdori"
=======
  * #lab-28 "Miqdori"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество"
    * ^designation[+].language = #en
    * ^designation[=].value = "Stool volume [Type]"

<<<<<<< HEAD
  * #lab-pan-29 "Konsistensiyasi"
=======
  * #lab-29 "Konsistensiyasi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Консистенция"
    * ^designation[+].language = #en
    * ^designation[=].value = "Stool consistency [Type]"

<<<<<<< HEAD
  * #lab-pan-30 "Shakli"
=======
  * #lab-30 "Shakli"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Форма"
    * ^designation[+].language = #en
    * ^designation[=].value = "Stool form [Type]"

<<<<<<< HEAD
  * #lab-pan-31 "Hidi"
=======
  * #lab-31 "Hidi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Запах"
    * ^designation[+].language = #en
    * ^designation[=].value = "Stool odor [Type]"

<<<<<<< HEAD
  * #lab-pan-32 "Rangi"
=======
  * #lab-32 "Rangi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цвет"
    * ^designation[+].language = #en
    * ^designation[=].value = "Stool color [Type]"

<<<<<<< HEAD
  * #lab-pan-33 "Muhit (pH reaksiyasi)"
=======
  * #lab-33 "Muhit (pH reaksiyasi)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Среда (реакция pH)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Stool pH"

<<<<<<< HEAD
  * #lab-pan-34 "Shilliq"
=======
  * #lab-34 "Shilliq"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Слизь"
    * ^designation[+].language = #en
    * ^designation[=].value = "Mucus [Presence] in Stool"

<<<<<<< HEAD
  * #lab-pan-35 "Qon"
=======
  * #lab-35 "Qon"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Кровь"
    * ^designation[+].language = #en
    * ^designation[=].value = "Blood [Presence] in Stool"

<<<<<<< HEAD
  * #lab-pan-36 "Hazm bo‘lmagan ovqat qoldiqlari"
=======
  * #lab-36 "Hazm bo‘lmagan ovqat qoldiqlari"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Непереваренные остатки пищи"
    * ^designation[+].language = #en
    * ^designation[=].value = "Undigested food [Presence] in Stool"

<<<<<<< HEAD
  * #lab-pan-37 "Yashirin qonga reaksiya"
=======
  * #lab-37 "Yashirin qonga reaksiya"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Реакция на скрытую кровь"
    * ^designation[+].language = #en
    * ^designation[=].value = "Occult blood [Presence] in Stool by Guaiac test"

<<<<<<< HEAD
  * #lab-pan-38 "Sterkobilinga reaksiya"
=======
  * #lab-38 "Sterkobilinga reaksiya"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Реакция на стеркобилин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Stercobilin [Presence] in Stool"

<<<<<<< HEAD
  * #lab-pan-39 "Bilirubinga reaksiya"
=======
  * #lab-39 "Bilirubinga reaksiya"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Реакция на билирубин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bilirubin [Presence] in Stool"

* #lab-pan-BB "Najasning mikroskopik tekshiruvi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопическое исследование кала"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microscopic stool analysis"

<<<<<<< HEAD
  * #lab-pan-40 "Mushak tolalari: ko‘ndalang chiziqli"
=======
  * #lab-40 "Mushak tolalari: ko‘ndalang chiziqli"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Мышечные волокна:С исчерченностью"
    * ^designation[+].language = #en
    * ^designation[=].value = "Muscle fibers striated [Presence] in Stool by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-41 "Mushak tolalari: ko‘ndalang chiziqsiz"
=======
  * #lab-41 "Mushak tolalari: ko‘ndalang chiziqsiz"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Мышечные волокна:Без исчерченности"
    * ^designation[+].language = #en
    * ^designation[=].value = "Muscle fibers non-striated [Presence] in Stool by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-42 "Biriktiruvchi to‘qima"
=======
  * #lab-42 "Biriktiruvchi to‘qima"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Соединительная ткань"
    * ^designation[+].language = #en
    * ^designation[=].value = "Connective tissue [Presence] in Stool by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-43 "Neytral yog‘"
=======
  * #lab-43 "Neytral yog‘"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Жир нейтральный"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neutral fat [Presence] in Stool by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-44 "Yog‘ kislotalari"
=======
  * #lab-44 "Yog‘ kislotalari"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Жирные кислоты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Fatty acids [Presence] in Stool by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-45 "Sovunlar"
=======
  * #lab-45 "Sovunlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Мыла"
    * ^designation[+].language = #en
    * ^designation[=].value = "Soaps [Presence] in Stool by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-46 "O‘simlik kletchatkasi (hazm bo‘ladigan)"
=======
  * #lab-46 "O‘simlik kletchatkasi (hazm bo‘ladigan)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Растительная клетчатка перевариваемая"
    * ^designation[+].language = #en
    * ^designation[=].value = "Plant fibers digested [Presence] in Stool by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-47 "Kraxmal"
=======
  * #lab-47 "Kraxmal"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Крахмал"
    * ^designation[+].language = #en
    * ^designation[=].value = "Starch granules [Presence] in Stool by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-48 "Yodofil flora"
=======
  * #lab-48 "Yodofil flora"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Йодофильная флора"
    * ^designation[+].language = #en
    * ^designation[=].value = "Iodophilic bacteria [Presence] in Stool by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-49 "Kristallar"
=======
  * #lab-49 "Kristallar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Кристаллы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Crystals [Presence] in Stool by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-50 "Shilliq"
=======
  * #lab-50 "Shilliq"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Слизь"
    * ^designation[+].language = #en
    * ^designation[=].value = "Mucus [Presence] in Stool by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-51 "Epiteliy"
=======
  * #lab-51 "Epiteliy"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эпителий"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells [Presence] in Stool by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-52 "Leykotsitlar"
=======
  * #lab-52 "Leykotsitlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейкоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [Presence] in Stool by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-53 "Eritrotsitlar"
=======
  * #lab-53 "Eritrotsitlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритроциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocytes [Presence] in Stool by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-54 "Sodda parazitlar (protozoylar)"
=======
  * #lab-54 "Sodda parazitlar (protozoylar)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Простейшие"
    * ^designation[+].language = #en
    * ^designation[=].value = "Protozoa [Presence] in Stool by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-55 "Gelmint tuxumlari"
=======
  * #lab-55 "Gelmint tuxumlari"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Яйца глистов"
    * ^designation[+].language = #en
    * ^designation[=].value = "Ova (helminth) [Presence] in Stool by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-56 "Achitqi zamburug‘lar"
=======
  * #lab-56 "Achitqi zamburug‘lar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Дрожжевые грибы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Yeast [Presence] in Stool by Light microscopy"

* #lab-pan-C "Sitologik tahlil (mazok)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цитологическое исследование(мазок)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cytology study of genital specimen by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-57 "Leykotsitlar"
=======
  * #lab-57 "Leykotsitlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейкоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [Presence] in Genital specimen by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-58 "Epitelial hujayralar"
=======
  * #lab-58 "Epitelial hujayralar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эпителиалные клетки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells [Presence] in Genital specimen by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-59 "Mikroflora"
=======
  * #lab-59 "Mikroflora"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Микрофлора"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bacteria [Presence] in Genital specimen by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-60 "Gonokokklar"
=======
  * #lab-60 "Gonokokklar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гонококки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neisseria gonorrhoeae [Presence] in Genital specimen by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-61 "Trichomonadalar"
=======
  * #lab-61 "Trichomonadalar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Трихомонады"
    * ^designation[+].language = #en
    * ^designation[=].value = "Trichomonas vaginalis [Presence] in Genital specimen by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-62 "Zamburug‘lar"
=======
  * #lab-62 "Zamburug‘lar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Грибы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Yeast [Presence] in Genital specimen by Light microscopy"

* #lab-pan-D "Qon koagulogrammasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Коагулограммы крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood Coagulation panel"

<<<<<<< HEAD
  * #lab-pan-63 "Protrombin indeks"
=======
  * #lab-63 "Protrombin indeks"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Протромбиновый индекс"
    * ^designation[+].language = #en
    * ^designation[=].value = "Prothrombin activity (Quick) [Ratio] in Platelet poor plasma by Coagulation assay"

<<<<<<< HEAD
  * #lab-pan-64 "Protrombin vaqti"
=======
  * #lab-64 "Protrombin vaqti"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Протромбиновое время"
    * ^designation[+].language = #en
    * ^designation[=].value = "Prothrombin time (PT) [Time] in Platelet poor plasma by Coagulation assay"

<<<<<<< HEAD
  * #lab-pan-65 "Tromin vaqti (TB)"
=======
  * #lab-65 "Tromin vaqti (TB)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тромбиновое время (ТВ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Thrombin time (TT) [Time] in Platelet poor plasma by Coagulation assay"

<<<<<<< HEAD
  * #lab-pan-66 "Fibrinogen"
=======
  * #lab-66 "Fibrinogen"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Фибриноген"
    * ^designation[+].language = #en
    * ^designation[=].value = "Fibrinogen [Mass/volume] in Platelet poor plasma by Coagulation assay"

<<<<<<< HEAD
  * #lab-pan-67 "Fibrin-monomer eruvchi komplekslari (FMEK)"
=======
  * #lab-67 "Fibrin-monomer eruvchi komplekslari (FMEK)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Растворимые фибрин-мономерные комплексы (РФМК)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Fibrin monomer [Presence] in Platelet poor plasma by Hemagglutination"

<<<<<<< HEAD
  * #lab-pan-68 "Plazmaning geparinga tolerantligi"
=======
  * #lab-68 "Plazmaning geparinga tolerantligi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Толерантность плазмы к гепарину"
    * ^designation[+].language = #en
    * ^designation[=].value = "Clotting time of Blood by Heparin protamine titration"

<<<<<<< HEAD
  * #lab-pan-69 "Rekalsifikatsiya vaqti"
=======
  * #lab-69 "Rekalsifikatsiya vaqti"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Время рекальцификации"
    * ^designation[+].language = #en
    * ^designation[=].value = "Recalcification time in Platelet poor plasma by Coagulation assay"

<<<<<<< HEAD
  * #lab-pan-70 "МНО"
=======
  * #lab-70 "МНО"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "МНО (Международное нормализованное отношение)"
    * ^designation[+].language = #en
    * ^designation[=].value = "INR (International normalized ratio) in Platelet poor plasma by Coagulation assay"

<<<<<<< HEAD
  * #lab-pan-71 "Trombotest"
=======
  * #lab-71 "Trombotest"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тромботест"
    * ^designation[+].language = #en
    * ^designation[=].value = "Thrombotest [Interpretation] in Platelet poor plasma"

<<<<<<< HEAD
  * #lab-pan-72 "Qisman faollashtirilgan tromboplastin vaqti (ҚФТВ)"
=======
  * #lab-72 "Qisman faollashtirilgan tromboplastin vaqti (ҚФТВ)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Частично активированное тромбопластиновое время (ЧАСТВ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Activated partial thromboplastin time (APTT) [Time] in Platelet poor plasma by Coagulation assay"

<<<<<<< HEAD
  * #lab-pan-73 "Etanol"
=======
  * #lab-73 "Etanol"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Этанол"
    * ^designation[+].language = #en
    * ^designation[=].value = "Ethanol [Presence] in Blood"

* #lab-pan-E "Umumiy qon tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Общий анализ крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "CBC panel"

<<<<<<< HEAD
  * #lab-pan-74 "Gemoglobin (HB)"
=======
  * #lab-74 "Gemoglobin (HB)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гемоглобин (HB)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hemoglobin [Mass/volume] in Blood"

<<<<<<< HEAD
  * #lab-pan-75 "Eritrotsitlar (RBC)"
=======
  * #lab-75 "Eritrotsitlar (RBC)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритроциты (RBC)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocytes [#/volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-76 "Rang ko‘rsatkichi"
=======
  * #lab-76 "Rang ko‘rsatkichi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цветовой показатель"
    * ^designation[+].language = #en
    * ^designation[=].value = ""

<<<<<<< HEAD
  * #lab-pan-77 "Eritrotsitlarning o‘rtacha hajmi (MCV)"
=======
  * #lab-77 "Eritrotsitlarning o‘rtacha hajmi (MCV)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Средний объём эритроцитов (MCV)"
    * ^designation[+].language = #en
    * ^designation[=].value = "MCV [Entitic volume] by Automated count"

<<<<<<< HEAD
  * #lab-pan-78 "1 dona eritrotsitdagi gemoglobin miqdori (MCH)"
=======
  * #lab-78 "1 dona eritrotsitdagi gemoglobin miqdori (MCH)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Среднее содержание гемоглобина в одном эритроците (MCH)"
    * ^designation[+].language = #en
    * ^designation[=].value = "MCH [Entitic mass] by Automated count"

<<<<<<< HEAD
  * #lab-pan-79 "Eritrotsitdagi gemoglobin konsentratsiyasi (MCHC)"
=======
  * #lab-79 "Eritrotsitdagi gemoglobin konsentratsiyasi (MCHC)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Средняя концентрация гемоглобина в эритроците (MCHC)"
    * ^designation[+].language = #en
    * ^designation[=].value = "MCHC [Mass/volume] by Automated count"

<<<<<<< HEAD
  * #lab-pan-80 "Eritrotsitlar anizotsitozi (RDW-CV)"
=======
  * #lab-80 "Eritrotsitlar anizotsitozi (RDW-CV)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Анизоцитоз эритроцитов (RDW-CV)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocyte distribution width (RDW-CV) [Ratio] by Automated count"

<<<<<<< HEAD
  * #lab-pan-81 "Gematokrit (HCT)"
=======
  * #lab-81 "Gematokrit (HCT)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гематокрит (HCT)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hematocrit [Volume Fraction] of Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-82 "Trombotsitlar (PLT)"
=======
  * #lab-82 "Trombotsitlar (PLT)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тромбоциты (PLT)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Platelets [#/volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-83 "Trombotsitlarning o‘rtacha hajmi (MPV)"
=======
  * #lab-83 "Trombotsitlarning o‘rtacha hajmi (MPV)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Средний объём тромбоцитов (MPV)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Mean platelet volume [Entitic volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-84 "Trombotsitlar anizotsitozi (PDW)"
=======
  * #lab-84 "Trombotsitlar anizotsitozi (PDW)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Анизоцитоз тромбоцитов (PDW)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Platelet distribution width [Entitic volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-85 "Trombokrit (PCT)"
=======
  * #lab-85 "Trombokrit (PCT)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тромбокрит (PCT)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Plateletcrit [Volume Fraction] of Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-86 "Leykotsitlar (WBC)"
=======
  * #lab-86 "Leykotsitlar (WBC)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейкоциты (WBC)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [#/volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-87 "Miyelotsitlar"
=======
  * #lab-87 "Miyelotsitlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Миелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myelocytes [#/volume] in Blood by Manual count"

<<<<<<< HEAD
  * #lab-pan-88 "Metamiyelotsitlar"
=======
  * #lab-88 "Metamiyelotsitlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Метамиелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Metamyelocytes/100 leukocytes in Blood by Manual count"

<<<<<<< HEAD
  * #lab-pan-89 "Tayoqchasimon yadroli neytrofillar"
=======
  * #lab-89 "Tayoqchasimon yadroli neytrofillar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Палочкоядерные нейтрофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neutrophils.band form/100 leukocytes in Blood by Manual count"

<<<<<<< HEAD
  * #lab-pan-90 "Segment yadroli neytrofillar"
=======
  * #lab-90 "Segment yadroli neytrofillar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Сегментоядерные нейтрофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neutrophils [#/volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-91 "Eozinofillar"
=======
  * #lab-91 "Eozinofillar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эозинофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Eosinophils [#/volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-92 "Bazofillar"
=======
  * #lab-92 "Bazofillar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Базофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Basophils [#/volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-93 "Monotsitlar"
=======
  * #lab-93 "Monotsitlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Моноциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Monocytes/100 leukocytes in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-94 "Limfotsitlar"
=======
  * #lab-94 "Limfotsitlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лимфоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lymphocytes [#/volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-95 "Plazmatik hujayralar"
=======
  * #lab-95 "Plazmatik hujayralar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Плазматические клетки"
    * ^designation[+].language = #en
    * ^designation[=].value = ""

<<<<<<< HEAD
  * #lab-pan-96 "Eritrotsitlarning cho‘kish tezligi (ECHT)"
=======
  * #lab-96 "Eritrotsitlarning cho‘kish tezligi (ECHT)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Скорость оседания эритроцитов (СОЭ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocyte sedimentation rate (ESR) by Westergren method"

<<<<<<< HEAD
  * #lab-pan-97 "Anizotsitoz (mikrotsitlar, makrotsitlar, megalotsitlar)"
=======
  * #lab-97 "Anizotsitoz (mikrotsitlar, makrotsitlar, megalotsitlar)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Анизоцитоз (микроциты, макроциты, мегалоциты)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Platelet anisocytosis [Presence] in Blood by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-98 "Poykilotsitoz"
=======
  * #lab-98 "Poykilotsitoz"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Пойкилоцитоз"
    * ^designation[+].language = #en
    * ^designation[=].value = "Poikilocytosis [Presence] in Blood by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-99 "Eritrotsitlarning bazofil donadorligi"
=======
  * #lab-99 "Eritrotsitlarning bazofil donadorligi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Базофильная зернистость эритроцитов"
    * ^designation[+].language = #en
    * ^designation[=].value = "Basophilic stippling [Presence] in Blood by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-100 "Polixromatofiliya"
=======
  * #lab-100 "Polixromatofiliya"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Полихроматофилия"
    * ^designation[+].language = #en
    * ^designation[=].value = "Polychromasia [Presence] in Blood by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-101 "Jolli tanachalari"
=======
  * #lab-101 "Jolli tanachalari"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тельца Жолли"
    * ^designation[+].language = #en
    * ^designation[=].value = "Howell-Jolly bodies [Presence] in Blood by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-102 "Kebot halqalari"
=======
  * #lab-102 "Kebot halqalari"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Кольца Кебота"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cabot rings [Presence] in Blood by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-103 "Eritronormoblastlar (100 ta leykotsitga nisbatan)"
=======
  * #lab-103 "Eritronormoblastlar (100 ta leykotsitga nisbatan)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритронормобласты (на 100 лейкоцитов)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Nucleated erythrocytes/Leukocytes [Ratio] in Blood by Manual count"

<<<<<<< HEAD
  * #lab-pan-104 "Megaloblastlar"
=======
  * #lab-104 "Megaloblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Мегалобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Megaloblasts/cells in Bone marrow"

<<<<<<< HEAD
  * #lab-pan-105 "Yadro gipersegmentatsiyasi"
=======
  * #lab-105 "Yadro gipersegmentatsiyasi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гиперсегментация ядер"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neutrophils.hypersegmented [Presence] in Blood by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-106 "Toksogen donadorlik"
=======
  * #lab-106 "Toksogen donadorlik"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Токсическая зернистость"
    * ^designation[+].language = #en
    * ^designation[=].value = "Toxic granules [Presence] in Blood by Light microscopy"

* #lab-pan-CC "Общий анализ крови"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Umumiy qon tahlili"
  * ^designation[+].language = #en
  * ^designation[=].value = "CBC panel"

<<<<<<< HEAD
  * #lab-pan-107 "Leykositlar (WBC)"
=======
  * #lab-107 "Leykositlar (WBC)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейкоциты (WBC)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [#/volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-108 "Barcha neurofil elementlar (Neu#)"
=======
  * #lab-108 "Barcha neurofil elementlar (Neu#)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Абсолютное количество нейтрофилов (Neu#)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neutrophils [#/volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-109 "Limfotsitlar soni (Lym#)"
=======
  * #lab-109 "Limfotsitlar soni (Lym#)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Абсолютное количество лимфоцитов (Lym#)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lymphocytes [#/volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-110 "Monotsitlar soni (Mon#)"
=======
  * #lab-110 "Monotsitlar soni (Mon#)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Абсолютное количество моноцитов (Mon#)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Monocytes [#/volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-111 "Eozinofillar soni (Eos#)"
=======
  * #lab-111 "Eozinofillar soni (Eos#)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Абсолютное количество эозинофилов (Eos#)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Eosinophils [#/volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-112 "Bazofillar soni (Bas#)"
=======
  * #lab-112 "Bazofillar soni (Bas#)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Абсолютное количество базофилов (Bas#)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Basophils [#/volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-113 "Neytrofillar yetilish indeksi (Neu%)"
=======
  * #lab-113 "Neytrofillar yetilish indeksi (Neu%)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Нейтрофилы (Neu%)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neutrophils/100 leukocytes in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-114 "Limfotsitlar (Lym%)"
=======
  * #lab-114 "Limfotsitlar (Lym%)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лимфоциты (Lym%)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lymphocytes/100 leukocytes in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-115 "Monositlar (Mon%)"
=======
  * #lab-115 "Monositlar (Mon%)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Моноциты (Mon%)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Monocytes/100 leukocytes in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-116 "Eozinofillar (Eos%)"
=======
  * #lab-116 "Eozinofillar (Eos%)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эозинофилы (Eos%)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Eosinophils/100 leukocytes in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-117 "Bazofillar (Bas%)"
=======
  * #lab-117 "Bazofillar (Bas%)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Базофилы (Bas%)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Basophils/100 leukocytes in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-118 "Eritrotsitlar (RBC)"
=======
  * #lab-118 "Eritrotsitlar (RBC)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритроциты (RBC)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocytes [#/volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-119 "Gemoglobin (HGB)"
=======
  * #lab-119 "Gemoglobin (HGB)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гемоглобин (HGB)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hemoglobin [Mass/volume] in Blood"

<<<<<<< HEAD
  * #lab-pan-120 "Gematokrit (HCT)"
=======
  * #lab-120 "Gematokrit (HCT)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гематокрит (HCT)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hematocrit [Volume Fraction] of Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-121 "Eritrotsit o'rtacha hajmi (MCV)"
=======
  * #lab-121 "Eritrotsit o'rtacha hajmi (MCV)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Средний объем эритроцита (MCV)"
    * ^designation[+].language = #en
    * ^designation[=].value = "MCV [Entitic volume] by Automated count"

<<<<<<< HEAD
  * #lab-pan-122 "1 dona eritrotsitdagi gemoglobinning miqdori (MCH)"
=======
  * #lab-122 "1 dona eritrotsitdagi gemoglobinning miqdori (MCH)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Среднее содержание гемоглобина в эритроците (MCH)"
    * ^designation[+].language = #en
    * ^designation[=].value = "MCH [Entitic mass] by Automated count"

<<<<<<< HEAD
  * #lab-pan-123 "Eritrotsitdagi gemoglobin konsentratsiyasi (MCHC)"
=======
  * #lab-123 "Eritrotsitdagi gemoglobin konsentratsiyasi (MCHC)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Средняя концентрация гемоглобина в эритроците (MCHC)"
    * ^designation[+].language = #en
    * ^designation[=].value = "MCHC [Mass/volume] by Automated count"

<<<<<<< HEAD
  * #lab-pan-124 "Eritrotsitlar anizotsitozi (RDW-CV)"
=======
  * #lab-124 "Eritrotsitlar anizotsitozi (RDW-CV)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Ширина распределения эритроцитов по объему (RDW-CV)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocyte distribution width (RDW-CV) [Ratio] by Automated count"

<<<<<<< HEAD
  * #lab-pan-125 "Eritrotsit hajmi standart og‘ishi (RDW-SD)"
=======
  * #lab-125 "Eritrotsit hajmi standart og‘ishi (RDW-SD)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Стандартное отклонение распределения эритроцитов по объему (RDW-SD)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocyte distribution width (RDW-SD) [Entitic volume] by Automated count"

<<<<<<< HEAD
  * #lab-pan-126 "Trombotsitlar (PLT)"
=======
  * #lab-126 "Trombotsitlar (PLT)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тромбоциты (PLT)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Platelets [#/volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-127 "Trombotsitlar o'rtacha hajmi (MPV)"
=======
  * #lab-127 "Trombotsitlar o'rtacha hajmi (MPV)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Средний объем тромбоцитов (MPV)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Mean platelet volume [Entitic volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-128 "Trombotsitlar anizotsitozi (PDW)"
=======
  * #lab-128 "Trombotsitlar anizotsitozi (PDW)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Ширина распределения тромбоцитов (PDW)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Platelet distribution width [Entitic volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-129 "Trombokrit (PCT)"
=======
  * #lab-129 "Trombokrit (PCT)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тромбокрит (PCT)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Plateletcrit [Volume Fraction] of Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-130 "Yirik trombotsitlar soni (P-LCC)"
=======
  * #lab-130 "Yirik trombotsitlar soni (P-LCC)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество крупных тромбоцитов (P-LCC)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Platelet large cell count [#/volume] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-131 "Yirik trombotsitlar ulushi (P-LCR)"
=======
  * #lab-131 "Yirik trombotsitlar ulushi (P-LCR)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Доля крупных тромбоцитов (P-LCR)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Platelet large cell ratio [#] in Blood by Automated count"

<<<<<<< HEAD
  * #lab-pan-132 "Eritrotsitning cho'kish tezligi (ЭЧТ)"
=======
  * #lab-132 "Eritrotsitning cho'kish tezligi (ЭЧТ)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Скорость оседания эритроцитов (СОЭ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocyte sedimentation rate (ESR) by Westergren method"

<<<<<<< HEAD
  * #lab-pan-133 "IMG#"
=======
  * #lab-133 "IMG#"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "IMG#"
    * ^designation[+].language = #en
    * ^designation[=].value = "Immature granulocytes [#/volume] in Blood by Automated count (IMG#)"

<<<<<<< HEAD
  * #lab-pan-134 "NRBC#"
=======
  * #lab-134 "NRBC#"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "NRBC#"
    * ^designation[+].language = #en
    * ^designation[=].value = "Nucleated erythrocytes/Leukocytes [Ratio] in Blood (NRBC#)"

<<<<<<< HEAD
  * #lab-pan-135 "NRBC%"
=======
  * #lab-135 "NRBC%"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "NRBC%"
    * ^designation[+].language = #en
    * ^designation[=].value = "Nucleated erythrocytes/Leukocytes [Ratio] in Blood (NRBC%)"

<<<<<<< HEAD
  * #lab-pan-136 "Miyelositlar"
=======
  * #lab-136 "Miyelositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Миелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myelocytes [#/volume] in Blood"

<<<<<<< HEAD
  * #lab-pan-137 "Metamiyelositlar"
=======
  * #lab-137 "Metamiyelositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Метамиелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Metamyelocytes [Presence] in Blood"

<<<<<<< HEAD
  * #lab-pan-138 "Tayoqcha yadroli neytrofil"
=======
  * #lab-138 "Tayoqcha yadroli neytrofil"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Tayoqcha yadroli neytrofil"
    * ^designation[+].language = #en
    * ^designation[=].value = "Band form neutrophils/Leukocytes in Blood"

<<<<<<< HEAD
  * #lab-pan-139 "Plazmatik hujayralar"
=======
  * #lab-139 "Plazmatik hujayralar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Плазматические клетки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Plasma cells/Leukocytes in Blood"

* #lab-pan-F "Biokimyoviy qon tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Биохимическое исследование крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Comprehensive metabolic 2000 panel – Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-140 "Umumiy oqsil"
=======
  * #lab-140 "Umumiy oqsil"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Общий белок"
    * ^designation[+].language = #en
    * ^designation[=].value = "Protein [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-141 "Albumin"
=======
  * #lab-141 "Albumin"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Альбумин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Albumin [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-142 "Xolesterin (umumiy)"
=======
  * #lab-142 "Xolesterin (umumiy)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Холестерин (общий)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cholesterol [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-143 "Triglitseridlar"
=======
  * #lab-143 "Triglitseridlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Триглицериды"
    * ^designation[+].language = #en
    * ^designation[=].value = "Triglyceride [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-144 "Glyukoza"
=======
  * #lab-144 "Glyukoza"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Глюкоза"
    * ^designation[+].language = #en
    * ^designation[=].value = "Glucose [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-145 "Mochevina"
=======
  * #lab-145 "Mochevina"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Мочевина"
    * ^designation[+].language = #en
    * ^designation[=].value = "Urea nitrogen [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-146 "Kreatinin"
=======
  * #lab-146 "Kreatinin"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Креатинин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Creatinine [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-147 "Umumiy bilirubin"
=======
  * #lab-147 "Umumiy bilirubin"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Билирубин общий"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bilirubin.total [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-148 "To‘g‘ri (bog‘langan) bilirubin"
=======
  * #lab-148 "To‘g‘ri (bog‘langan) bilirubin"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Билирубин прямой (связанный)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bilirubin.direct [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-149 "Noto‘g‘ri (erkin) bilirubin"
=======
  * #lab-149 "Noto‘g‘ri (erkin) bilirubin"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Билирубин непрямой (свободный)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bilirubin.indirect [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-150 "Alaninaminotransferaza (ALT)"
=======
  * #lab-150 "Alaninaminotransferaza (ALT)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Аланинаминотрансфераза (АЛТ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-151 "Aspartataminotransferaza (AST)"
=======
  * #lab-151 "Aspartataminotransferaza (AST)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Аспартатаминотрансфераза (АСТ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-152 "Laktatdegidrogenaza (LDG)"
=======
  * #lab-152 "Laktatdegidrogenaza (LDG)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лактатдегидрогеназа (ЛДГ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-153 "Gammaglutamiltransferaza (GGT)"
=======
  * #lab-153 "Gammaglutamiltransferaza (GGT)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гаммаглутамилтрансфераза (ГГТ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Gamma glutamyl transferase [Enzymatic activity/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-154 "Alfa-amilaza"
=======
  * #lab-154 "Alfa-amilaza"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Альфа-амилаза"
    * ^designation[+].language = #en
    * ^designation[=].value = "Amylase [Enzymatic activity/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-155 "Ishqoriy fosfataza (IF)"
=======
  * #lab-155 "Ishqoriy fosfataza (IF)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Щелочная фосфатаза (ИФ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-156 "Kaliy"
=======
  * #lab-156 "Kaliy"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Калий"
    * ^designation[+].language = #en
    * ^designation[=].value = "Potassium [Moles/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-157 "Natriy"
=======
  * #lab-157 "Natriy"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Натрий"
    * ^designation[+].language = #en
    * ^designation[=].value = "Sodium [Moles/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-158 "Kalsiy"
=======
  * #lab-158 "Kalsiy"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Кальций"
    * ^designation[+].language = #en
    * ^designation[=].value = "Calcium [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-159 "Temir"
=======
  * #lab-159 "Temir"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Железо"
    * ^designation[+].language = #en
    * ^designation[=].value = "Iron [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-160 "Fosfor"
=======
  * #lab-160 "Fosfor"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Фосфор"
    * ^designation[+].language = #en
    * ^designation[=].value = "Phosphate [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-161 "Xlor"
=======
  * #lab-161 "Xlor"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Хлор"
    * ^designation[+].language = #en
    * ^designation[=].value = "Chloride [Moles/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-162 "Magniy"
=======
  * #lab-162 "Magniy"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Магний"
    * ^designation[+].language = #en
    * ^designation[=].value = "Magnesium [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-163 "Eritrotsitlardagi magniy"
=======
  * #lab-163 "Eritrotsitlardagi magniy"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Магний в эритроцитах"
    * ^designation[+].language = #en
    * ^designation[=].value = "Magnesium [Moles/volume] in Red Blood Cells"
    
* #lab-pan-G "Gormonal qon tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гормональное исследование крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hormone studies (panel) – Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-164 "T3"
=======
  * #lab-164 "T3"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Т3"
    * ^designation[+].language = #en
    * ^designation[=].value = "Triiodothyronine (T3) [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-165 "T4"
=======
  * #lab-165 "T4"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Т4"
    * ^designation[+].language = #en
    * ^designation[=].value = "Thyroxine (T4) [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-166 "TTG"
=======
  * #lab-166 "TTG"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "ТТГ"
    * ^designation[+].language = #en
    * ^designation[=].value = "Thyrotropin (TSH) [Units/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-167 "Estradiol"
=======
  * #lab-167 "Estradiol"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эстрадиол"
    * ^designation[+].language = #en
    * ^designation[=].value = "Estradiol (E2) [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-168 "Testosteron"
=======
  * #lab-168 "Testosteron"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тестостерон"
    * ^designation[+].language = #en
    * ^designation[=].value = "Testosterone [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-169 "Kortizol"
=======
  * #lab-169 "Kortizol"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Кортизол"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cortisol [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-170 "Prolaktin"
=======
  * #lab-170 "Prolaktin"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Пролактин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Prolactin [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-171 "LG"
=======
  * #lab-171 "LG"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "ЛГ"
    * ^designation[+].language = #en
    * ^designation[=].value = "Luteinizing hormone (LH) [Units/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-172 "FSG"
=======
  * #lab-172 "FSG"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "ФСГ"
    * ^designation[+].language = #en
    * ^designation[=].value = "Follicle stimulating hormone (FSH) [Units/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-173 "Progesteron"
=======
  * #lab-173 "Progesteron"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Прогестерон"
    * ^designation[+].language = #en
    * ^designation[=].value = "Progesterone [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-174 "PSA"
=======
  * #lab-174 "PSA"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "ПСА"
    * ^designation[+].language = #en
    * ^designation[=].value = "Prostate specific Ag (PSA) [Mass/volume] in Serum or Plasma"

* #lab-pan-H "Spermogramma tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исследование спермограммы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spermogram analysis"

<<<<<<< HEAD
  * #lab-pan-175 "Hajm"
=======
  * #lab-175 "Hajm"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Объём"
    * ^designation[+].language = #en
    * ^designation[=].value = "Semen volume [Volume]"

<<<<<<< HEAD
  * #lab-pan-176 "Rangi"
=======
  * #lab-176 "Rangi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цвет"
    * ^designation[+].language = #en
    * ^designation[=].value = "Semen color [Type]"

<<<<<<< HEAD
  * #lab-pan-177 "Hidi"
=======
  * #lab-177 "Hidi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Запах"
    * ^designation[+].language = #en
    * ^designation[=].value = "Semen odor [Type]"

<<<<<<< HEAD
  * #lab-pan-178 "Suyulish vaqti"
=======
  * #lab-178 "Suyulish vaqti"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Время разжижения"
    * ^designation[+].language = #en
    * ^designation[=].value = "Semen liquefaction time"

<<<<<<< HEAD
  * #lab-pan-179 "Kislotalilik (pH"
=======
  * #lab-179 "Kislotalilik (pH"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Кислотность (pH)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Semen pH"

<<<<<<< HEAD
  * #lab-pan-180 "Qovushqoqlik"
=======
  * #lab-180 "Qovushqoqlik"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Вязкость"
    * ^designation[+].language = #en
    * ^designation[=].value = "Semen viscosity [Presence]"

<<<<<<< HEAD
  * #lab-pan-181 "1 ml dagi spermatozoidlar soni"
=======
  * #lab-181 "1 ml dagi spermatozoidlar soni"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество сперматозоидов в 1 мл"
    * ^designation[+].language = #en
    * ^designation[=].value = "Spermatozoa [#/volume] in Semen"

<<<<<<< HEAD
  * #lab-pan-182 "Umumiy hajmdagi spermatozoidlar soni"
=======
  * #lab-182 "Umumiy hajmdagi spermatozoidlar soni"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество сперматозоидов в общем объёме"
    * ^designation[+].language = #en
    * ^designation[=].value = "Spermatozoa total count [#] in Ejaculate"

<<<<<<< HEAD
  * #lab-pan-183 "Harakatchanlik - faol"
=======
  * #lab-183 "Harakatchanlik - faol"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Подвижность — активные"
    * ^designation[+].language = #en
    * ^designation[=].value = "Spermatozoa progressive motility [#/volume] in Semen"

<<<<<<< HEAD
  * #lab-pan-184 "Harakatchanlik - sust"
=======
  * #lab-184 "Harakatchanlik - sust"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Подвижность — вялые"
    * ^designation[+].language = #en
    * ^designation[=].value = "Spermatozoa non-progressive motility [#/volume] in Semen"

<<<<<<< HEAD
  * #lab-pan-185 "Harakatchanlik - harakatsiz"
=======
  * #lab-185 "Harakatchanlik - harakatsiz"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Подвижность — неподвижные"
    * ^designation[+].language = #en
    * ^designation[=].value = "Spermatozoa immotile [#/volume] in Semen"

<<<<<<< HEAD
  * #lab-pan-186 "Tirik spermatozoidlar"
=======
  * #lab-186 "Tirik spermatozoidlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Живые сперматозоиды"
    * ^designation[+].language = #en
    * ^designation[=].value = "Spermatozoa viability [#/volume] in Semen by Stain"

<<<<<<< HEAD
  * #lab-pan-187 "Patologik shakldagi sermatozoidlar"
=======
  * #lab-187 "Patologik shakldagi sermatozoidlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Патологические формы сперматозоидов"
    * ^designation[+].language = #en
    * ^designation[=].value = "Spermatozoa abnormal forms [#/volume] in Semen"

<<<<<<< HEAD
  * #lab-pan-188 "Spermatogenez epiteliysi"
=======
  * #lab-188 "Spermatogenez epiteliysi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эпителий сперматогенеза"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells [Presence] in Semen"

<<<<<<< HEAD
  * #lab-pan-189 "Leykositlar"
=======
  * #lab-189 "Leykositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейкоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [#/volume] in Semen"

<<<<<<< HEAD
  * #lab-pan-190 "Letsitin donachalari"
=======
  * #lab-190 "Letsitin donachalari"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лецитиновые зёрна"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lecithin bodies [Presence] in Semen by Microscopy"

<<<<<<< HEAD
  * #lab-pan-191 "Agglyutinatsiya"
=======
  * #lab-191 "Agglyutinatsiya"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Агглютинация"
    * ^designation[+].language = #en
    * ^designation[=].value = "Spermatozoa agglutination [Presence] in Semen"

<<<<<<< HEAD
  * #lab-pan-192 "Fruktoza"
=======
  * #lab-192 "Fruktoza"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Фруктоза"
    * ^designation[+].language = #en
    * ^designation[=].value = "Fructose [Moles/volume] in Semen"

<<<<<<< HEAD
  * #lab-pan-193 "Limon kislotasi"
=======
  * #lab-193 "Limon kislotasi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лимонная кислота"
    * ^designation[+].language = #en
    * ^designation[=].value = "Citric acid [Moles/volume] in Semen"

* #lab-pan-I "Balg'am tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ мокроты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sputum analysis"

<<<<<<< HEAD
  * #lab-pan-194 "Miqdori"
=======
  * #lab-194 "Miqdori"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество"
    * ^designation[+].language = #en
    * ^designation[=].value = "Sputum volume [Volume]"

<<<<<<< HEAD
  * #lab-pan-195 "Hidi"
=======
  * #lab-195 "Hidi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Запах"
    * ^designation[+].language = #en
    * ^designation[=].value = "Sputum odor [Type]"

<<<<<<< HEAD
  * #lab-pan-196 "Rangi"
=======
  * #lab-196 "Rangi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цвет"
    * ^designation[+].language = #en
    * ^designation[=].value = "Sputum color [Type]"

<<<<<<< HEAD
  * #lab-pan-197 "Xususiyati (ta'rifi)"
=======
  * #lab-197 "Xususiyati (ta'rifi)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Характер (описание)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Sputum gross description"

<<<<<<< HEAD
  * #lab-pan-198 "Aralashmalar"
=======
  * #lab-198 "Aralashmalar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Примеси"
    * ^designation[+].language = #en
    * ^designation[=].value = "Sputum inclusions [Type]"

<<<<<<< HEAD
  * #lab-pan-199 "Konsistensiyasi"
=======
  * #lab-199 "Konsistensiyasi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Консистенция"
    * ^designation[+].language = #en
    * ^designation[=].value = "Sputum consistency [Type]"

<<<<<<< HEAD
  * #lab-pan-200 "Epiteliy"
=======
  * #lab-200 "Epiteliy"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эпителий"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells [Presence] in Sputum by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-201 "Alveolyar makrofaglar"
=======
  * #lab-201 "Alveolyar makrofaglar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Альвеолярные макрофаги"
    * ^designation[+].language = #en
    * ^designation[=].value = "Macrophages [Presence] in Sputum by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-202 "Leykositlar"
=======
  * #lab-202 "Leykositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейкоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [#/area] in Sputum by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-203 "Eritrositalr"
=======
  * #lab-203 "Eritrositalr"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритроциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocytes [Presence] in Sputum by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-204 "Tolalar"
=======
  * #lab-204 "Tolalar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Волокна"
    * ^designation[+].language = #en
    * ^designation[=].value = "Fibers [Presence] in Sputum by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-205 "Elastik tolalar"
=======
  * #lab-205 "Elastik tolalar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эластические волокна"
    * ^designation[+].language = #en
    * ^designation[=].value = "Elastic fibers [Presence] in Sputum by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-206 "Kalsiylangan (toshga aylangan zarrachalar)"
=======
  * #lab-206 "Kalsiylangan (toshga aylangan zarrachalar)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Обызвествлённые (окаменевшие частицы)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Calcified bodies [Presence] in Sputum by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-207 "Tuberkulyoz mikrobakteriyalari"
=======
  * #lab-207 "Tuberkulyoz mikrobakteriyalari"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Микобактерии туберкулёза"
    * ^designation[+].language = #en
    * ^designation[=].value = "Mycobacterium tuberculosis [Presence] in Sputum by Microscopy (Ziehl–Neelsen stain)"

<<<<<<< HEAD
  * #lab-pan-208 "Eozinofillar"
=======
  * #lab-208 "Eozinofillar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эозинофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Eosinophils [#/area] in Sputum by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-209 "Zamburug'lar"
=======
  * #lab-209 "Zamburug'lar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Грибы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Fungi [Presence] in Sputum by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-210 "Boshqa flora"
=======
  * #lab-210 "Boshqa flora"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Другая флора"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bacteria [Presence] in Sputum by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-211 "Kurshman spirallari"
=======
  * #lab-211 "Kurshman spirallari"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Спирали Куршмана"
    * ^designation[+].language = #en
    * ^designation[=].value = "Curschmann's spirals [Presence] in Sputum by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-212 "Sharko-Leyden kristallari"
=======
  * #lab-212 "Sharko-Leyden kristallari"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Кристаллы Шарко–Лейдена"
    * ^designation[+].language = #en
    * ^designation[=].value = "Charcot–Leyden crystals [Presence] in Sputum by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-213 "Atipik belgili hujayralar"
=======
  * #lab-213 "Atipik belgili hujayralar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Клетки с атипичными признаками"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells atypical [Presence] in Sputum by Cytology"

* #lab-pan-J "Prostata bezi shirasi tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ секрета предстательной железы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prostate gland juice analysis"

<<<<<<< HEAD
  * #lab-pan-214 "Miqdori"
=======
  * #lab-214 "Miqdori"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество"
    * ^designation[+].language = #en
    * ^designation[=].value = "Prostatic fluid volume [Volume]"

<<<<<<< HEAD
  * #lab-pan-215 "Rangi"
=======
  * #lab-215 "Rangi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цвет"
    * ^designation[+].language = #en
    * ^designation[=].value = "Prostatic fluid color [Type]"

<<<<<<< HEAD
  * #lab-pan-216 "Shaffofligi"
=======
  * #lab-216 "Shaffofligi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Прозрачность"
    * ^designation[+].language = #en
    * ^designation[=].value = "Prostatic fluid clarity [Type]"

<<<<<<< HEAD
  * #lab-pan-217 "Konsistensiyasi"
=======
  * #lab-217 "Konsistensiyasi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Консистенция"
    * ^designation[+].language = #en
    * ^designation[=].value = "Prostatic fluid consistency [Type]"

<<<<<<< HEAD
  * #lab-pan-218 "Leykositlar"
=======
  * #lab-218 "Leykositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейкоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [#/area] in Prostatic fluid by Microscopy HPF"

<<<<<<< HEAD
  * #lab-pan-219 "Eritrositlar"
=======
  * #lab-219 "Eritrositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритроциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocytes [Presence] in Prostatic fluid by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-220 "Epiteliy"
=======
  * #lab-220 "Epiteliy"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эпителий"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells [Presence] in Prostatic fluid by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-221 "Makrofaglar"
=======
  * #lab-221 "Makrofaglar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Макрофаги"
    * ^designation[+].language = #en
    * ^designation[=].value = "Macrophages [Presence] in Prostatic fluid by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-222 "Letsitin donachalari"
=======
  * #lab-222 "Letsitin donachalari"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лецитиновые зёрна"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lecithin bodies [Presence] in Prostatic fluid by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-223 "Amiloid tanachalar"
=======
  * #lab-223 "Amiloid tanachalar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Амилоидные тельца"
    * ^designation[+].language = #en
    * ^designation[=].value = "Amyloid bodies [Presence] in Prostatic fluid by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-224 "Spermatozoidlar"
=======
  * #lab-224 "Spermatozoidlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Сперматозоиды"
    * ^designation[+].language = #en
    * ^designation[=].value = "Spermatozoa [Presence] in Prostatic fluid by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-225 "Trixomonadalar"
=======
  * #lab-225 "Trixomonadalar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Трихомонады"
    * ^designation[+].language = #en
    * ^designation[=].value = "Trichomonas vaginalis [Presence] in Prostatic fluid by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-226 "Gonokokklar"
=======
  * #lab-226 "Gonokokklar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гонококки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neisseria gonorrhoeae [Presence] in Prostatic fluid by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-227 "Boshqa flora"
=======
  * #lab-227 "Boshqa flora"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Другая флора"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bacteria [Presence] in Prostatic fluid by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-228 "Atipik belgili hujayralar"
=======
  * #lab-228 "Atipik belgili hujayralar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Клетки с атипичными признаками"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epithelial cells atypical [Presence] in Prostatic fluid by Cytology"

* #lab-pan-K "TORCH-infeksiya tahlili"
  * ^designation[0].language = #ru
<<<<<<< HEAD
  * ^designation[=].value = "Анализ на TORCH-инфекцию"
  * ^designation[+].language = #en
  * ^designation[=].value = "TORCH-infection analysis"

  * #lab-pan-229 "Xlamidiya (IgG antitanachalar)"
=======
  * ^designation[=].value = " Анализ на TORCH-инфекцию"
  * ^designation[+].language = #en
  * ^designation[=].value = "TORCH-infection analysis"

  * #lab-229 "Xlamidiya (IgG antitanachalar)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Хламидия (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Chlamydia trachomatis IgG Ab [Presence] in Serum by Immunoassay"

<<<<<<< HEAD
  * #lab-pan-230 "Toksopazmoz (IgG antitanachalar)"
=======
  * #lab-230 "Toksopazmoz (IgG antitanachalar)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Токсоплазмоз (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Toxoplasma gondii IgG Ab [Presence] in Serum by Immunoassay"

<<<<<<< HEAD
  * #lab-pan-231 "Sitomegalovirus (IgG antitanachalar)"
=======
  * #lab-231 "Sitomegalovirus (IgG antitanachalar)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цитомегаловирус (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cytomegalovirus IgG Ab [Presence] in Serum by Immunoassay"

<<<<<<< HEAD
  * #lab-pan-232 "Oddiy gerpes virusi (IgG antitanachalar)"
=======
  * #lab-232 "Oddiy gerpes virusi (IgG antitanachalar)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Вирус простого герпеса (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Herpes simplex virus 1+2 IgG Ab [Presence] in Serum by Immunoassay"

<<<<<<< HEAD
  * #lab-pan-233 "Ureaplazma"
=======
  * #lab-233 "Ureaplazma"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Уреаплазма"
    * ^designation[+].language = #en
    * ^designation[=].value = "Ureaplasma urealyticum DNA [Presence] in Specimen by NAA with probe detection"

* #lab-pan-L "O'n ikki barmoqli ichak shirasi tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исследование дуоденального сока"
  * ^designation[+].language = #en
  * ^designation[=].value = "Duodenal juice analysis"

<<<<<<< HEAD
  * #lab-pan-234 "Oshqozon tarkibi hajmi"
=======
  * #lab-234 "Oshqozon tarkibi hajmi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Объем желудочного содержимого"
    * ^designation[+].language = #en
    * ^designation[=].value = "Gastric juice volume"

<<<<<<< HEAD
  * #lab-pan-235 "Erkin HCl"
=======
  * #lab-235 "Erkin HCl"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Свободная HCl"
    * ^designation[+].language = #en
    * ^designation[=].value = "Gastric free hydrochloric acid"

<<<<<<< HEAD
  * #lab-pan-236 "Umumiy kislotalilik"
=======
  * #lab-236 "Umumiy kislotalilik"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Общая кислотность"
    * ^designation[+].language = #en
    * ^designation[=].value = "Total gastric acidity"

<<<<<<< HEAD
  * #lab-pan-237 "O'n ikki barmoq ichakka o'tish vaqti"
=======
  * #lab-237 "O'n ikki barmoq ichakka o'tish vaqti"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Время перехода в дуоденум"
    * ^designation[+].language = #en
    * ^designation[=].value = "Time to duodenal passage"

<<<<<<< HEAD
  * #lab-pan-238 "Rentgen nazorati"
=======
  * #lab-238 "Rentgen nazorati"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Рентген контроль"
    * ^designation[+].language = #en
    * ^designation[=].value = "X-ray control performed"

<<<<<<< HEAD
  * #lab-pan-239 "A porsiya - ajralish vaqti"
=======
  * #lab-239 "A porsiya - ajralish vaqti"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция A – время выделения"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid portion A excretion time"

<<<<<<< HEAD
  * #lab-pan-240 "A porsiya - hajmi"
=======
  * #lab-240 "A porsiya - hajmi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция A – объем"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid portion A volume"

<<<<<<< HEAD
  * #lab-pan-241 "A porsiya - rangi"
=======
  * #lab-241 "A porsiya - rangi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция A – цвет"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid portion A color"

<<<<<<< HEAD
  * #lab-pan-242 "A porsiya - shaffofligi"
=======
  * #lab-242 "A porsiya - shaffofligi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция A – прозрачность"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid clarity"

<<<<<<< HEAD
  * #lab-pan-243 "A porsiya - mikroskopiya"
=======
  * #lab-243 "A porsiya - mikroskopiya"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция A – микроскопия"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid microscopy"

<<<<<<< HEAD
  * #lab-pan-244 "B porsiya - ajralish vaqti"
=======
  * #lab-244 "B porsiya - ajralish vaqti"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция B – время выделения"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid portion B excretion time"

<<<<<<< HEAD
  * #lab-pan-245 "B porsiya - hajmi"
=======
  * #lab-245 "B porsiya - hajmi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция B – объем"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid portion B volume"

<<<<<<< HEAD
  * #lab-pan-246 "B porsiya - rangi"
=======
  * #lab-246 "B porsiya - rangi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция B – цвет"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid portion B color"

<<<<<<< HEAD
  * #lab-pan-247 "B porsiya - billurbin ko'rsatgichi"
=======
  * #lab-247 "B porsiya - billurbin ko'rsatgichi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция B – билирубин индекс"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bilirubin index in duodenal fluid"

<<<<<<< HEAD
  * #lab-pan-248 "B porsiya - mikroskopiya"
=======
  * #lab-248 "B porsiya - mikroskopiya"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция B – микроскопия"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid microscopy"

<<<<<<< HEAD
  * #lab-pan-249 "C porsiya - ajralish vaqti"
=======
  * #lab-249 "C porsiya - ajralish vaqti"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция C – время выделения"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid portion C excretion time"

<<<<<<< HEAD
  * #lab-pan-250 "C porsiya - hajmi"
=======
  * #lab-250 "C porsiya - hajmi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция C – объем"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid portion C volume"

<<<<<<< HEAD
  * #lab-pan-251 "C porsiya rangi"
=======
  * #lab-251 "C porsiya rangi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция C – цвет"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid portion C color"

<<<<<<< HEAD
  * #lab-pan-252 "C porsiya  - shaffofligi"
=======
  * #lab-252 "C porsiya  - shaffofligi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция C – прозрачность"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid clarity"

<<<<<<< HEAD
  * #lab-pan-253 "C porsiya - mikroskopiya"
=======
  * #lab-253 "C porsiya - mikroskopiya"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Порция C – микроскопия"
    * ^designation[+].language = #en
    * ^designation[=].value = "Duodenal fluid microscopy"

<<<<<<< HEAD
  * #lab-pan-254 "Billurbin"
=======
  * #lab-254 "Billurbin"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Билирубин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bilirubin.total [Mass/volume] in Body fluid"

<<<<<<< HEAD
  * #lab-pan-255 "O't kislotalari"
=======
  * #lab-255 "O't kislotalari"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Желчные кислоты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bile acid [Moles/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-256 "Xolesterin"
=======
  * #lab-256 "Xolesterin"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Холестерин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cholesterol [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-257 "Xolat-xolestering koeffisenti"
=======
  * #lab-257 "Xolat-xolestering koeffisenti"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Холато-холестериновый коэффициент"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cholate-cholesterol ratio"

<<<<<<< HEAD
  * #lab-pan-258 "Flora A, B, C"
=======
  * #lab-258 "Flora A, B, C"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Флора A, B, C"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bacterial flora in bile"

* #lab-pan-M "Orqa miya suyuqligi (MS) tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исследование цереброспинальной жидкости (ликвора)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cerebrospinal fluid (CSF) analysis"

<<<<<<< HEAD
  * #lab-pan-259 "Miqdori"
=======
  * #lab-259 "Miqdori"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cerebrospinal fluid volume [Volume]"

<<<<<<< HEAD
  * #lab-pan-260 "Sentrefugadan keyingi rangi"
=======
  * #lab-260 "Sentrefugadan keyingi rangi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цвет после центрифугирования"
    * ^designation[+].language = #en
    * ^designation[=].value = "CSF color [Type]"

<<<<<<< HEAD
  * #lab-pan-261 "Sentrefugagacha ksantoxromiya"
=======
  * #lab-261 "Sentrefugagacha ksantoxromiya"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Ксантохромия до центрифугирования"
    * ^designation[+].language = #en
    * ^designation[=].value = "CSF xanthochromia [Presence]"

<<<<<<< HEAD
  * #lab-pan-262 "Sentrefugadan keyingi shaffofligi"
=======
  * #lab-262 "Sentrefugadan keyingi shaffofligi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Прозрачность после центрифугирования"
    * ^designation[+].language = #en
    * ^designation[=].value = "CSF clarity [Type]"

<<<<<<< HEAD
  * #lab-pan-263 "Oqsil"
=======
  * #lab-263 "Oqsil"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Белок"
    * ^designation[+].language = #en
    * ^designation[=].value = "Protein [Mass/volume] in Cerebrospinal fluid"

<<<<<<< HEAD
  * #lab-pan-264 "Pandi reaksiyasi"
=======
  * #lab-264 "Pandi reaksiyasi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Реакция Панди"
    * ^designation[+].language = #en
    * ^designation[=].value = "Pandy test [Interpretation] in Cerebrospinal fluid"

<<<<<<< HEAD
  * #lab-pan-265 "Limfositlar"
=======
  * #lab-265 "Limfositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лимфоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lymphocytes [#/volume] in Cerebrospinal fluid by Manual count"

<<<<<<< HEAD
  * #lab-pan-266 "Eozinoffillar"
=======
  * #lab-266 "Eozinoffillar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эозинофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Eosinophils [#/volume] in Cerebrospinal fluid by Manual count"

<<<<<<< HEAD
  * #lab-pan-267 "Neytrofillar"
=======
  * #lab-267 "Neytrofillar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Нейтрофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neutrophils [#/volume] in Cerebrospinal fluid by Manual count"

<<<<<<< HEAD
  * #lab-pan-268 "Makrofaglar"
=======
  * #lab-268 "Makrofaglar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Макрофаги"
    * ^designation[+].language = #en
    * ^designation[=].value = "Macrophages [Presence] in Cerebrospinal fluid by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-269 "O'zgargan hujayralar"
=======
  * #lab-269 "O'zgargan hujayralar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Изменённые клетки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cells abnormal [Presence] in Cerebrospinal fluid by Cytology"

<<<<<<< HEAD
  * #lab-pan-270 "Poliblastlar"
=======
  * #lab-270 "Poliblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Полибласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Polynuclear cells [Presence] in Cerebrospinal fluid by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-271 "Plazmatik hujayralar"
=======
  * #lab-271 "Plazmatik hujayralar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Плазматические клетки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Plasma cells [Presence] in Cerebrospinal fluid by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-272 "Araxnoidal endoteliy hujayralari"
=======
  * #lab-272 "Araxnoidal endoteliy hujayralari"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Клетки арахноидального эндотелия"
    * ^designation[+].language = #en
    * ^designation[=].value = "Arachnoid cells [Presence] in Cerebrospinal fluid by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-273 "Ependima hujayralari"
=======
  * #lab-273 "Ependima hujayralari"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Клетки эпендимы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Ependymal cells [Presence] in Cerebrospinal fluid by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-274 "Donador sharlar"
=======
  * #lab-274 "Donador sharlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Зернистые шары"
    * ^designation[+].language = #en
    * ^designation[=].value = "Granular corpuscles [Presence] in Cerebrospinal fluid by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-275 "Zamburug'lar"
=======
  * #lab-275 "Zamburug'lar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Грибы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Fungi [Presence] in Cerebrospinal fluid by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-276 "Eritrositlar"
=======
  * #lab-276 "Eritrositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритроциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocytes [#/volume] in Cerebrospinal fluid by Manual count"

* #lab-pan-N "Suyak ilik punktati tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ пунктата костного мозга"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bone marrow aspirate analysis"

<<<<<<< HEAD
  * #lab-pan-277 "Miyelokariotsitlar soni"
=======
  * #lab-277 "Miyelokariotsitlar soni"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество миелокариоцитов"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myelokaryocytes [#/volume] in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-278 "Megakariotsitlar soni"
=======
  * #lab-278 "Megakariotsitlar soni"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Количество мегакариоцитов"
    * ^designation[+].language = #en
    * ^designation[=].value = "Megakaryocytes [Presence] in Bone marrow by Light microscopy"

<<<<<<< HEAD
  * #lab-pan-279 "Yetilmagan blastlar"
=======
  * #lab-279 "Yetilmagan blastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Незрелые бласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Blast cells immature [#/100 cells] in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-280 "Miyeloblastlar"
=======
  * #lab-280 "Miyeloblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Миелобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myeloblasts/100 leukocytes in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-281 "Promiyelotsitlar"
=======
  * #lab-281 "Promiyelotsitlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Промиелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Promyelocytes/100 leukocytes in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-282 "Miyelotsitlar"
=======
  * #lab-282 "Miyelotsitlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Миелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myelocytes/100 leukocytes in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-283 "Metamiyelotsitlar"
=======
  * #lab-283 "Metamiyelotsitlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Метамиелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Metamyelocytes/100 leukocytes in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-284 "Tayoqchayadrolilar"
=======
  * #lab-284 "Tayoqchayadrolilar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Палочкоядерные нейтрофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neutrophils.band form/100 leukocytes in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-285 "Segmentyadrolilar"
=======
  * #lab-285 "Segmentyadrolilar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Сегментоядерные нейтрофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neutrophils.segmented/100 leukocytes in Bone marrow by Manual count"

  // In Form 085, the analytes lab-pan-282, 283, 284, and 285 are repeated three times, and the only difference between them is the reference values. This should be taken into consideration during implementation in the Admin panel.

<<<<<<< HEAD
  * #lab-pan-294 "Limfoblastlar"
=======
  * #lab-294 "Limfoblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лимфобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lymphoblasts/100 leukocytes in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-295 "Prolimfotsitlar"
=======
  * #lab-295 "Prolimfotsitlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Пролимфоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Prolymphocytes/100 leukocytes in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-296 "Limfotsitlar"
=======
  * #lab-296 "Limfotsitlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лимфоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lymphocytes/100 leukocytes in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-297 "Monoblastlar"
=======
  * #lab-297 "Monoblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Монобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Monoblasts/100 leukocytes in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-298 "Promonotsitlar"
=======
  * #lab-298 "Promonotsitlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Промоноциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Promonocytes/100 leukocytes in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-299 "Monotsitlar"
=======
  * #lab-299 "Monotsitlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Моноциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Monocytes/100 leukocytes in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-300 "Leyko-eritroblastik nisbat"
=======
  * #lab-300 "Leyko-eritroblastik nisbat"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейко-эритробластическое соотношение"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myeloid/erythroid ratio in Bone marrow"

<<<<<<< HEAD
  * #lab-pan-301 "Neytrofillar yetilish indeksi"
=======
  * #lab-301 "Neytrofillar yetilish indeksi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Индекс созревания нейтрофилов"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neutrophil maturation index in Bone marrow"

<<<<<<< HEAD
  * #lab-pan-302 "Proeritroblastlar"
=======
  * #lab-302 "Proeritroblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Проэритробласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Proerythroblasts/100 erythroid cells in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-303 "Bazofil eritroblastlar"
=======
  * #lab-303 "Bazofil eritroblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Базофильные эритробласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythroblasts.basophilic/100 erythroid cells in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-304 "Polixromafil eritroblastlar"
=======
  * #lab-304 "Polixromafil eritroblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Полихроматофильные эритробласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythroblasts.polychromatophilic/100 erythroid cells in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-305 "Oksifil eritroblastlar"
=======
  * #lab-305 "Oksifil eritroblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Оксифильные эритробласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythroblasts.oxyphilic/100 erythroid cells in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-306 "Polixromatofil normoblastlar"
=======
  * #lab-306 "Polixromatofil normoblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Полихроматофильные нормобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Normoblasts.polychromatophilic/100 erythroid cells in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-307 "Oksifil normoblastlar"
=======
  * #lab-307 "Oksifil normoblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Оксифильные нормобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Normoblasts.oxyphilic/100 erythroid cells in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-308 "Promegaloblastlar"
=======
  * #lab-308 "Promegaloblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Промегалобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Megaloblasts.pro/100 erythroid cells in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-309 "Bazofil megaloblastlar"
=======
  * #lab-309 "Bazofil megaloblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Базофильные мегалобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Megaloblasts.basophilic/100 erythroid cells in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-310 "Polixromatofil megaloblastlar"
=======
  * #lab-310 "Polixromatofil megaloblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Полихроматофильные мегалобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Megaloblasts.polychromatophilic/100 erythroid cells in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-311 "Oksifil megaloblastlar"
=======
  * #lab-311 "Oksifil megaloblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Оксифильные мегалобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Megaloblasts.oxyphilic/100 erythroid cells in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-312 "Megakarioblastlar"
=======
  * #lab-312 "Megakarioblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Мегакариобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Megakaryoblasts/100 cells in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-313 "Promegakariotsitlar"
=======
  * #lab-313 "Promegakariotsitlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Промегакариоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Promegakaryocytes/100 cells in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-314 "Megokariotsitlar"
=======
  * #lab-314 "Megokariotsitlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Мегакариоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Megakaryocytes/100 cells in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-315 "Retikulyar hujayralar"
=======
  * #lab-315 "Retikulyar hujayralar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Ретикулярные клетки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Reticular cells [#/100 cells] in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-316 "Plazmoblastlar"
=======
  * #lab-316 "Plazmoblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Плазмобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Plasmablasts/100 leukocytes in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-317 "Proplazmotsitlar"
=======
  * #lab-317 "Proplazmotsitlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Проплазмоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Proplasmocytes/100 leukocytes in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-318 "Plazmotik xujayralar"
=======
  * #lab-318 "Plazmotik xujayralar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Плазматические клетки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Plasma cells/100 leukocytes in Bone marrow by Manual count"

<<<<<<< HEAD
  * #lab-pan-319 "Xujayralar mitozi granulopoez"
=======
  * #lab-319 "Xujayralar mitozi granulopoez"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Митоз клеток гранулопоэза"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myelopoiesis cells mitosis [Presence] in Bone marrow"

<<<<<<< HEAD
  * #lab-pan-320 "Eritropoez hujayra mitozi"
=======
  * #lab-320 "Eritropoez hujayra mitozi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Митоз клеток эритропоэза"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythropoiesis cells mitosis [Presence] in Bone marrow"

<<<<<<< HEAD
  * #lab-pan-321 "Eritroblast va normoblastlar sitoplazmasining yetilish indeksi"
=======
  * #lab-321 "Eritroblast va normoblastlar sitoplazmasining yetilish indeksi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Индекс зрелости цитоплазмы эритробластов и нормобластов"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cytoplasmic maturation index of erythroid cells in Bone marrow"

* #lab-pan-O "Antistreptolizin-0, S- reaktiv oqsili va revmatoid omiliga qonni tekshirish tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ крови на антистрептолизин-О, С-реактивный белок и ревматоидный фактор"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood analysis for antistreptolysin-0, S-reactive protein and rheumatoid factor"

<<<<<<< HEAD
  * #lab-pan-322 "S-reyeaktiv oqsil"
=======
  * #lab-322 "S-reyeaktiv oqsil"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "С-реактивный белок (CRP)"
    * ^designation[+].language = #en
    * ^designation[=].value = "C reactive protein [Presence] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-323 "Revmotoid omili"
=======
  * #lab-323 "Revmotoid omili"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Ревматоидный фактор (RF)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Rheumatoid factor [Presence] in Serum"

<<<<<<< HEAD
  * #lab-pan-324 "Antistriptolizin-O"
=======
  * #lab-324 "Antistriptolizin-O"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Антистрептолизин-O (ASO)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Streptolysin O Ab [Presence] in Serum"

* #lab-pan-P "Klinik - diagnostik laboratoriya miyelogramma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "КЛИНИК-ДИАГНОСТИК ЛАБОРАТОРИЯ МИЕЛОГРАММА"
  * ^designation[+].language = #en
  * ^designation[=].value = "Clinical - diagnostic laboratory myelogram"

<<<<<<< HEAD
  * #lab-pan-325 "Suyak ko'migi hujayralari"
=======
  * #lab-325 "Suyak ko'migi hujayralari"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Клетки костного мозга"
    * ^designation[+].language = #en
    * ^designation[=].value = "Bone marrow cells"

<<<<<<< HEAD
  * #lab-pan-326 "Blastlar"
=======
  * #lab-326 "Blastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Бласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Blasts"

<<<<<<< HEAD
  * #lab-pan-327 "Barcha neytrofil elementlar"
=======
  * #lab-327 "Barcha neytrofil elementlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Все нейтрофильные элементы"
    * ^designation[+].language = #en
    * ^designation[=].value = "All neutrophil elements"

<<<<<<< HEAD
  * #lab-pan-328 "Promiyelositlar"
=======
  * #lab-328 "Promiyelositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Промиелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Promyelocytes"

<<<<<<< HEAD
  * #lab-pan-329 "Miyelositlar"
=======
  * #lab-329 "Miyelositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Миелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myelocytes"

<<<<<<< HEAD
  * #lab-pan-330 "Metamiyelositlar"
=======
  * #lab-330 "Metamiyelositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Метамиелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Metamyelocytes"

<<<<<<< HEAD
  * #lab-pan-331 "Tayoqcha yadrolilar"
=======
  * #lab-331 "Tayoqcha yadrolilar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Палочкоядерные нейтрофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Band neutrophils"

<<<<<<< HEAD
  * #lab-pan-332 "Segment yadrolilar"
=======
  * #lab-332 "Segment yadrolilar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Сегментоядерные нейтрофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Segmented neutrophils"

<<<<<<< HEAD
  * #lab-pan-333 "Eozinofillar"
=======
  * #lab-333 "Eozinofillar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эозинофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Eosinophils"

<<<<<<< HEAD
  * #lab-pan-334 "- Miyelosit eozinofillar"
=======
  * #lab-334 "- Miyelosit eozinofillar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эозинофильные миелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "- Eosinophilic myelocytes"

<<<<<<< HEAD
  * #lab-pan-335 "- Metamiyelosit eozinofillar"
=======
  * #lab-335 "- Metamiyelosit eozinofillar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эозинофильные метамиелоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "- Eosinophilic metamyelocytes"

<<<<<<< HEAD
  * #lab-pan-336 "- Tayoqcha yadroli eozinofillar"
=======
  * #lab-336 "- Tayoqcha yadroli eozinofillar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Палочкоядерные эозинофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "- Band eosinophils"

<<<<<<< HEAD
  * #lab-pan-337 "- Segment yadroli eozinofillar"
=======
  * #lab-337 "- Segment yadroli eozinofillar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Сегментоядерные эозинофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "- Segmented eosinophils"

<<<<<<< HEAD
  * #lab-pan-338 "Bazofillar"
=======
  * #lab-338 "Bazofillar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Базофилы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Basophils"

<<<<<<< HEAD
  * #lab-pan-339 "Limfoblastlar"
=======
  * #lab-339 "Limfoblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лимфобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lymphoblasts"

<<<<<<< HEAD
  * #lab-pan-340 "Prolimfositlar"
=======
  * #lab-340 "Prolimfositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Пролимфоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Prolymphocytes"

<<<<<<< HEAD
  * #lab-pan-341 "Limfositlar"
=======
  * #lab-341 "Limfositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лимфоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Lymphocytes"

<<<<<<< HEAD
  * #lab-pan-342 "Monoblastlar"
=======
  * #lab-342 "Monoblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Монобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Monoblasts"

<<<<<<< HEAD
  * #lab-pan-343 "Promonositlar"
=======
  * #lab-343 "Promonositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Промоноциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Promonocytes"

<<<<<<< HEAD
  * #lab-pan-344 "Monositlar"
=======
  * #lab-344 "Monositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Моноциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Monocytes"

<<<<<<< HEAD
  * #lab-pan-345 "Plazmoblastlar"
=======
  * #lab-345 "Plazmoblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Плазмобласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Plasmablasts"

<<<<<<< HEAD
  * #lab-pan-346 "Proplazmositlar"
=======
  * #lab-346 "Proplazmositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Проплазмоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Proplasmacytes"

<<<<<<< HEAD
  * #lab-pan-347 "Plazmositlar"
=======
  * #lab-347 "Plazmositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Плазмоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Plasma cells"

<<<<<<< HEAD
  * #lab-pan-348 "Retikulyar hujayralar"
=======
  * #lab-348 "Retikulyar hujayralar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Ретикулярные клетки"
    * ^designation[+].language = #en
    * ^designation[=].value = "Reticular cells"

<<<<<<< HEAD
  * #lab-pan-349 "Barcha eritron elementlar"
=======
  * #lab-349 "Barcha eritron elementlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Все элементы эритрона"
    * ^designation[+].language = #en
    * ^designation[=].value = "All erythroid elements"

<<<<<<< HEAD
  * #lab-pan-350 "Eritroblastlar"
=======
  * #lab-350 "Eritroblastlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритробласты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythroblasts"

<<<<<<< HEAD
  * #lab-pan-351 "Pronormositlar"
=======
  * #lab-351 "Pronormositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Пронормоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Pronormocytes"

<<<<<<< HEAD
  * #lab-pan-352 "Bazofil normositlar"
=======
  * #lab-352 "Bazofil normositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Базофильные нормоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Basophilic normocytes"

<<<<<<< HEAD
  * #lab-pan-353 "Polixromotofil normositlar"
=======
  * #lab-353 "Polixromotofil normositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Полихроматофильные нормоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Polychromatophilic normocytes"

<<<<<<< HEAD
  * #lab-pan-354 "Oksifil normositlar"
=======
  * #lab-354 "Oksifil normositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Оксифильные нормоциты"
    * ^designation[+].language = #en
    * ^designation[=].value = "Oxyphilic normocytes"

<<<<<<< HEAD
  * #lab-pan-355 "Mitoz shakllari"
=======
  * #lab-355 "Mitoz shakllari"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Фигуры митоза"
    * ^designation[+].language = #en
    * ^designation[=].value = "Mitotic figures"

<<<<<<< HEAD
  * #lab-pan-356 "Indekslar"
=======
  * #lab-356 "Indekslar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Индексы"
    * ^designation[+].language = #en
    * ^designation[=].value = "Indices"

<<<<<<< HEAD
  * #lab-pan-357 "Leyko-eritroblastik nisbat"
=======
  * #lab-357 "Leyko-eritroblastik nisbat"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейко-эритробластическое соотношение"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukoerythroblastic ratio"

<<<<<<< HEAD
  * #lab-pan-358 "Eritrokariositlar yetilish indeksi"
=======
  * #lab-358 "Eritrokariositlar yetilish indeksi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Индекс созревания эритрокариоцитов"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrokaryocyte maturation index"

<<<<<<< HEAD
  * #lab-pan-359 "Neytrofillar yetilish indeksi"
=======
  * #lab-359 "Neytrofillar yetilish indeksi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Индекс созревания нейтрофилов"
    * ^designation[+].language = #en
    * ^designation[=].value = "Neutrophil maturation index"

* #lab-pan-Q "Qon zardobidagi lipoproteinlarni tekshirish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исследование сывороточных липопротеинов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Serum lipoprotein analysis"

<<<<<<< HEAD
  * #lab-pan-360 "Umumiy xolesterin"
=======
  * #lab-360 "Umumiy xolesterin"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Общий холестерин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cholesterol [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-361 "Triglitserid"
=======
  * #lab-361 "Triglitserid"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Триглицериды"
    * ^designation[+].language = #en
    * ^designation[=].value = "Triglyceride [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-362 "XS-LPVP"
=======
  * #lab-362 "XS-LPVP"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Холестерин ЛПВП (липопротеины высокой плотности)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cholesterol in LDL [Mass/volume] in Serum or Plasma by calculation"

<<<<<<< HEAD
  * #lab-pan-363 "XS-LPNP"
=======
  * #lab-363 "XS-LPNP"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Холестерин ЛПНП (липопротеины низкой плотности)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cholesterol in HDL [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-364 "XS-LPONP"
=======
  * #lab-364 "XS-LPONP"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Холестерин ЛПОНП (липопротеины очень низкой плотности)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cholesterol in VLDL [Mass/volume] in Serum or Plasma by calculation"

<<<<<<< HEAD
  * #lab-pan-365 "Xolesterin koeffisenti"
=======
  * #lab-365 "Xolesterin koeffisenti"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Коэффициент атерогенности (коэффициент холестерина)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cholesterol.total/Cholesterol in HDL [Mass Ratio] in Serum or Plasma"

* #lab-pan-R "Siydik shakliy elementlar soni tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исследование подсчета образцов мочи"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urine elemental count analysis"

<<<<<<< HEAD
  * #lab-pan-366 "Leykositlar"
=======
  * #lab-366 "Leykositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Лейкоциты в моче (тест-полоска)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leukocytes [#/volume] in Urine by Test strip"

<<<<<<< HEAD
  * #lab-pan-367 "Eritrositlar"
=======
  * #lab-367 "Eritrositlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Эритроциты в моче (тест-полоска)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Erythrocytes [#/volume] in Urine by Test strip"

<<<<<<< HEAD
  * #lab-pan-368 "Silindrlar"
=======
  * #lab-368 "Silindrlar"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цилиндры в осадке мочи"
    * ^designation[+].language = #en
    * ^designation[=].value = "Casts [#/area] in Urine sediment"

* #lab-pan-S "TORCH infeksiyasi IXLA  tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ на TORCH-инфекции методом ИХЛА"
  * ^designation[+].language = #en
  * ^designation[=].value = "TORCH infection IXLA analysis"

<<<<<<< HEAD
  * #lab-pan-369 "Cytomegalovirus Ig G"
=======
  * #lab-369 "Cytomegalovirus Ig G"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цитомегаловирус IgG"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cytomegalovirus IgG Ab [Presence] in Serum or Plasma by Immunoassay"

<<<<<<< HEAD
  * #lab-pan-370 "Gerpes simplex virus1/2 Ig G"
=======
  * #lab-370 "Gerpes simplex virus1/2 Ig G"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Вирус простого герпеса 1/2 типа IgG"
    * ^designation[+].language = #en
    * ^designation[=].value = "Herpes simplex virus 1+2 IgG Ab [Units/volume] in Serum by Immunoassay"

<<<<<<< HEAD
  * #lab-pan-371 "Toxoplasma gondii IgG"
=======
  * #lab-371 "Toxoplasma gondii IgG"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Toxoplasma gondil Ig G"
    * ^designation[+].language = #en
    * ^designation[=].value = "Toxoplasma gondii IgG Ab [Presence] in Serum"

<<<<<<< HEAD
  * #lab-pan-372 "Chlamydia pneumoniae IgG"
=======
  * #lab-372 "Chlamydia pneumoniae IgG"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Chlamedia pneumonia Ig G"
    * ^designation[+].language = #en
    * ^designation[=].value = "Chlamydophila pneumoniae IgG Ab [Presence] in Serum"

<<<<<<< HEAD
  * #lab-pan-373 "Mycoplasma hominis IgG"
=======
  * #lab-373 "Mycoplasma hominis IgG"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Mycoplasma hominis Ig G"
    * ^designation[+].language = #en
    * ^designation[=].value = "Mycoplasma hominis Ab [Presence] in Serum"

<<<<<<< HEAD
  * #lab-pan-374 "Ureaplasma urealyticum IgG"
=======
  * #lab-374 "Ureaplasma urealyticum IgG"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Ureaplasma urealyticum Ig G"
    * ^designation[+].language = #en
    * ^designation[=].value = "Ureaplasma urealyticum [Presence] in Specimen by Organism specific culture"

* #lab-pan-T "Neonatal retest skrining tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неонатальный ретест-скрининг анализ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neonatal retest screening analysis"

<<<<<<< HEAD
  * #lab-pan-375 "Immunoreaktiv tripsin (IRT)"
=======
  * #lab-375 "Immunoreaktiv tripsin (IRT)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Иммунореактивный трипсин (IRT)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Trypsinogen I Free [Mass/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-376 "Fenilalanin (PA)"
=======
  * #lab-376 "Fenilalanin (PA)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Фенилаланин (PA)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Phenylalanine [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-377 "Tireotrop gormon (TSH)"
=======
  * #lab-377 "Tireotrop gormon (TSH)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тиреотропный гормон (TSH)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Thyrotropin [Units/volume] in Serum or Plasma"

* #lab-pan-U "Immunoxemilyuminestsent tahlil (IXLA)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Иммунохемилюминесцентный анализ (ИХЛА)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Immunochemiluminescent analysis (IXLA)"

<<<<<<< HEAD
  * #lab-pan-378 "SA 125"
=======
  * #lab-378 "SA 125"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "CA 125"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cancer Ag 125 [Units/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-379 "HВsAg quant"
=======
  * #lab-379 "HВsAg quant"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "HBsAg количественный"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hepatitis B virus surface Ag [Presence] in Serum"

<<<<<<< HEAD
  * #lab-pan-380 "Anti-HCV"
=======
  * #lab-380 "Anti-HCV"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Антитела к вирусу гепатита C (Anti-HCV)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hepatitis C virus Ab [Presence] in Serum or Plasma by Immunoassay"

<<<<<<< HEAD
  * #lab-pan-381 "Insulin"
=======
  * #lab-381 "Insulin"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Инсулин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Insulin [Units/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-382 "Insulinga o'xshash o'sish omili (IGF-1)"
=======
  * #lab-382 "Insulinga o'xshash o'sish omili (IGF-1)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Инсулиноподобный фактор роста (IGF-1)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Insulin-like growth factor-I [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-383 "Somatotrop gormon (CH)"
=======
  * #lab-383 "Somatotrop gormon (CH)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Соматотропный гормон (СТГ)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Somatotropin [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-384 "Foliyevaya kislota (FA)"
=======
  * #lab-384 "Foliyevaya kislota (FA)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Фолиевая кислота (FA)"
    * ^designation[+].language = #en
    * ^designation[=].value = ""

<<<<<<< HEAD
  * #lab-pan-385 "25-ON Vitamin D"
=======
  * #lab-385 "25-ON Vitamin D"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "25-ОН витамин D"
    * ^designation[+].language = #en
    * ^designation[=].value = "25-Hydroxyvitamin D3+25-Hydroxyvitamin D2 [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-386 "Alfa-fetoprotein (CAFP)"
=======
  * #lab-386 "Alfa-fetoprotein (CAFP)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Альфа-фетопротеин (AFP)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Alpha-1-Fetoprotein [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-387 "Mioglobin"
=======
  * #lab-387 "Mioglobin"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Миоглобин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myoglobin [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-388 "Vitamin V 12"
=======
  * #lab-388 "Vitamin V 12"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Витамин B12"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cobalamin (Vitamin B12) [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-389 "Gomoctictein"
=======
  * #lab-389 "Gomoctictein"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гомоцистеин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Homocysteine [Moles/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-390 "Ferritin"
=======
  * #lab-390 "Ferritin"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Ферритин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Ferritin [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-391 "Кreatinkinaza -МВ"
=======
  * #lab-391 "Кreatinkinaza -МВ"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Креатинкиназа-МВ (CK-MB)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Creatine kinase.MB [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-392 "Troponin I"
=======
  * #lab-392 "Troponin I"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Тропонин I"
    * ^designation[+].language = #en
    * ^designation[=].value = "Troponin I.cardiac [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-393 "Prokalsitonin"
=======
  * #lab-393 "Prokalsitonin"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Прокальцитонин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Procalcitonin [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-394 "Kortizol"
=======
  * #lab-394 "Kortizol"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Кортизол"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cortisol [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-395 "HIV Ab/Ag Combi"
=======
  * #lab-395 "HIV Ab/Ag Combi"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Комбинированный тест на ВИЧ (HIV Ag/Ab Combo)"
    * ^designation[+].language = #en
    * ^designation[=].value = "HIV 1+2 Ab+HIV1 p24 Ag [Presence] in Serum or Plasma by Immunoassay"

* #lab-pan-V "Tandem mass-spektrometriya tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исследование методом тандемной масс-спектрометрии (MS/MS)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tandem mass spectrometry analysis"

<<<<<<< HEAD
  * #lab-pan-396 "ALA(alanine)"
=======
  * #lab-396 "ALA(alanine)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "ALA (аланин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Alanine [Moles/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-397 "ARG (arginine)"
=======
  * #lab-397 "ARG (arginine)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "ARG (аргинин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Arginine [Moles/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-398 "CIT (sitruliv)"
=======
  * #lab-398 "CIT (sitruliv)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "CIT (цитруллин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Citrulline [Moles/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-399 "GLY (glisin)"
=======
  * #lab-399 "GLY (glisin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "GLY (глицин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Glycine [Moles/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-400 "LEU (leysin)"
=======
  * #lab-400 "LEU (leysin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "LEU (лейцин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Leucine [Moles/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-401 "MET(metionin)"
=======
  * #lab-401 "MET(metionin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "MET (метионин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Methionine [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-402 "ORN (оrnitin)"
=======
  * #lab-402 "ORN (оrnitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "ORN (орнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Ornithine [Moles/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-403 "PHE (fenilalanin)"
=======
  * #lab-403 "PHE (fenilalanin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "PHE (фенилаланин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Phenylalanine [Moles/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-404 "PRO (prolin)"
=======
  * #lab-404 "PRO (prolin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "PRO (пролин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Proline [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-405 "SA (suksinilasiton)"
=======
  * #lab-405 "SA (suksinilasiton)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "SA (сукцинилацетон)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Succinylacetone [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-406 "TYR (tirozin)"
=======
  * #lab-406 "TYR (tirozin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "TYR (тирозин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Tyrosine [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-407 "VAL (valin)"
=======
  * #lab-407 "VAL (valin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "VAL (валин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Valine [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-408 "CO (erkin karnitin)"
=======
  * #lab-408 "CO (erkin karnitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "CO (свободный карнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Carnitine free (C0) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-409 "C2 (asetilkarnitil)"
=======
  * #lab-409 "C2 (asetilkarnitil)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C2 (ацетилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Acetylcarnitine (C2) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-410 "C3 (propionilkornitin)"
=======
  * #lab-410 "C3 (propionilkornitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C3 (пропионилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Propionylcarnitine (C3) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-411 "C4 (butirilkornitin)"
=======
  * #lab-411 "C4 (butirilkornitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C4 (бутирилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Butyrylcarnitine (C4) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-412 "С4ОН/C3DC"
=======
  * #lab-412 "С4ОН/C3DC"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C4OH/C3DC (гидроксибутирилкарнитин/малонилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Malonylcarnitine (C3-DC)+3-Hydroxybutyrylcarnitine (C4-OH) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-413 "С5 (izovalerilkornitin)"
=======
  * #lab-413 "С5 (izovalerilkornitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C5 (изовалерилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Isovalerylcarnitine (C5) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-414 "С5:1(tiglilkornitin)"
=======
  * #lab-414 "С5:1(tiglilkornitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C5:1 (тиглилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Tiglylcarnitine (C5:1) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-415 "С5DC\\C6OH"
=======
  * #lab-415 "С5DC\\C6OH"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C5DC/C6OH (глутарилкарнитин/гидроксигексаноилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Glutarylcarnitine (C5-DC)+3-Hydroxyhexanoylcarnitine (C6-OH) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-416 "C5OH\\C4DC"
=======
  * #lab-416 "C5OH\\C4DC"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C5OH/C4DC (гидроксиизовалерилкарнитин/сукцинилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Methylmalonylcarnitine (C4-DC)/3-Hydroxyisovalerylcarnitine (C5-OH) [Molar ratio] in DBS"

<<<<<<< HEAD
  * #lab-pan-417 "C6 (teksanoilkornitin)"
=======
  * #lab-417 "C6 (teksanoilkornitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C6 (гексаноилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hexanoylcarnitine (C6) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-418 "C6DC (teksanoilkornitin)"
=======
  * #lab-418 "C6DC (teksanoilkornitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C6DC (адипоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Adipoylcarnitine (C6-DC) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-419 "C8 (оktanoilkornitin)"
=======
  * #lab-419 "C8 (оktanoilkornitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C8 (октаноилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Octanoylcarnitine (C8) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-420 "C8: 1(oktenoilkornitin)"
=======
  * #lab-420 "C8: 1(oktenoilkornitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C8:1 (октеноилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Octenoylcarnitine (C8:1) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-421 "C10 (dikanoilkornitin)"
=======
  * #lab-421 "C10 (dikanoilkornitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C10 (деканоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Decanoylcarnitine (C10) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-422 "C10:1 (desinoilkornitin)"
=======
  * #lab-422 "C10:1 (desinoilkornitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C10:1 (деценоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Decenoylcarnitine (C10:1) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-423 "C10:2 (dekadienoilkornitin)"
=======
  * #lab-423 "C10:2 (dekadienoilkornitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C10:2 (декадиеноилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Decadienoylcarnitine (C10:2) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-424 "C12 (dodekanoilkornitin)"
=======
  * #lab-424 "C12 (dodekanoilkornitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C12 (додеканоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Dodecanoylcarnitine (C12) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-425 "C12:1 (deodesenoikornitin)"
=======
  * #lab-425 "C12:1 (deodesenoikornitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C12:1 (додеценоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Dodecenoylcarnitine (C12:1) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-426 "C1 (formilkarnitin)"
=======
  * #lab-426 "C1 (formilkarnitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C1 (формилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "C1 (Formylcarnitine)"

<<<<<<< HEAD
  * #lab-pan-427 "C14:1 (tetradesenoilkornitin)"
=======
  * #lab-427 "C14:1 (tetradesenoilkornitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C14:1 (тетрадценоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Tetradecenoylcarnitine (C14:1) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-428 "C14:2 (tetradekadienoilkornitin)"
=======
  * #lab-428 "C14:2 (tetradekadienoilkornitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C14:2 (тетрадцадиеноилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Tetradecadienoylcarnitine (C14:2) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-429 "C14OH (3-gidroksi- tetradekadienoilkornitin)"
=======
  * #lab-429 "C14OH (3-gidroksi- tetradekadienoilkornitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C14OH (3-гидрокситетрадеканоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "3-Hydroxytetradecanoylcarnitine (C14-OH) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-430 "С16 (Palmitoylcarnitine)"
=======
  * #lab-430 "С16 (Palmitoylcarnitine)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "С16 (пальмитоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Palmitoylcarnitine (C16) [Moles/volume] in Blood"

<<<<<<< HEAD
  * #lab-pan-431 "C16:1 (gексadetsenoil karnitin)"
=======
  * #lab-431 "C16:1 (gексadetsenoil karnitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "С16:1 (гексадеценоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "C16:1 (Hexadecenoylcarnitine)"

<<<<<<< HEAD
  * #lab-pan-432 "C16:1OH (3-gidroksi-gексadetsenoil karnitin)"
=======
  * #lab-432 "C16:1OH (3-gidroksi-gексadetsenoil karnitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "С16:1ОН (3-гидрокси-гексадеценоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "3-Hydroxypalmitoleylcarnitine (C16:1-OH) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-433 "C16OH (3-gidroksi-gексadekanoil karnitin)"
=======
  * #lab-433 "C16OH (3-gidroksi-gексadekanoil karnitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C16OH (3-гидрокси-гекадеканоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "3-Hydroxyhexanoylcarnitine (C6-OH) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-434 "C18 (stearoil karnitin)"
=======
  * #lab-434 "C18 (stearoil karnitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C18 (октадеканоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Stearoylcarnitine (C18) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-435 "C18:1 (oktadetsenoil karnitin)"
=======
  * #lab-435 "C18:1 (oktadetsenoil karnitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C18:1 (октадеценоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Oleoylcarnitine (C18:1) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-436 "C18:1OH (3-gidroksi-oktadetsenoil karnitin)"
=======
  * #lab-436 "C18:1OH (3-gidroksi-oktadetsenoil karnitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C18:1OH (3-гидрокси-октадеценоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "3-Hydroxyoleoylcarnitine (C18:1-OH) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-437 "C18:2 (linoleil karnitin)"
=======
  * #lab-437 "C18:2 (linoleil karnitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C18:2 (линолеилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Linoleoylcarnitine (C18:2) [Moles/volume] in DBS"

<<<<<<< HEAD
  * #lab-pan-438 "C18OH (3-gidroksi-oktadekanoil karnitin)"
=======
  * #lab-438 "C18OH (3-gidroksi-oktadekanoil karnitin)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "C18OH (3-гидрокси-октадеканоилкарнитин)"
    * ^designation[+].language = #en
    * ^designation[=].value = "3-Hydroxystearoylcarnitine (C18-OH) [Moles/volume] in DBS"

* #lab-pan-W "Vasserman reaksiyasiga qon tahlili va boshqalar (Zaxm uchun serologik reaksiyalar paneli)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализ крови на реакцию Вассермана и другие (панель серологических реакций на сифилис)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Treponema pallidum Ab [Presence] in Serum by Immunoassay"

<<<<<<< HEAD
  * #lab-pan-439 "Vasserman bo'yicha natija"
=======
  * #lab-439 "Vasserman bo'yicha natija"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Результат по Вассерману"
    * ^designation[+].language = #en
    * ^designation[=].value = "Reagin Ab [Presence] in Serum by VDRL"

<<<<<<< HEAD
  * #lab-pan-440 "Kan natija"
=======
  * #lab-440 "Kan natija"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Результат по Кану"
    * ^designation[+].language = #en
    * ^designation[=].value = "Reagin Ab [Presence] in Serum"

<<<<<<< HEAD
  * #lab-pan-441 "Zaks vitebskiy natija"
=======
  * #lab-441 "Zaks vitebskiy natija"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Результат по Заксу-Витебскому"
    * ^designation[+].language = #en
    * ^designation[=].value = "Reagin Ab [Presence] in Serum"

<<<<<<< HEAD
  * #lab-pan-442 "Zaks georgiy natija"
=======
  * #lab-442 "Zaks georgiy natija"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Результат по Заксу-Георгию"
    * ^designation[+].language = #en
    * ^designation[=].value = "Reagin Ab [Presence] in Serum"

<<<<<<< HEAD
  * #lab-pan-443 "Meynik natija"
=======
  * #lab-443 "Meynik natija"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Результат по Мейнику"
    * ^designation[+].language = #en
    * ^designation[=].value = "Reagin Ab [Presence] in Serum"

* #lab-pan-X "Klinik - diagnostik laboratoriya IXLA tahlili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Клинико-диагностическая лаборатория, ИХЛА анализ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Clinical diagnostic laboratory, CLIA (chemiluminescent immunoassay) analysis"

<<<<<<< HEAD
  * #lab-pan-444 "Cytomegalovirus Ig G"
=======
  * #lab-444 "Cytomegalovirus Ig G"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Цитомегаловирус (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cytomegalovirus immune globulin given [Volume]"

<<<<<<< HEAD
  * #lab-pan-445 "Gerpes simplex virus1/2 Ig G"
=======
  * #lab-445 "Gerpes simplex virus1/2 Ig G"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Вирус простого герпеса 1/2 типа (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Herpes simplex virus 1+2 IgG Ab [Units/volume] in Serum"

<<<<<<< HEAD
  * #lab-pan-446 "Toxoplasma gondil Ig G"
=======
  * #lab-446 "Toxoplasma gondil Ig G"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Токсоплазма (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Toxoplasma gondii IgG Ab [Presence] in Serum"

<<<<<<< HEAD
  * #lab-pan-447 "Chlamedia pneumonia Ig G"
=======
  * #lab-447 "Chlamedia pneumonia Ig G"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Хламидия пневмонии (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Chlamydophila pneumoniae IgG Ab [Units/volume] in Serum"

<<<<<<< HEAD
  * #lab-pan-448 "Mycoplasma hominis Ig G"
=======
  * #lab-448 "Mycoplasma hominis Ig G"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Микоплазма хоминис (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Mycoplasma pneumoniae IgG Ab [Presence] in Serum"

<<<<<<< HEAD
  * #lab-pan-449 "Ureaplasma urealyticum Ig G"
=======
  * #lab-449 "Ureaplasma urealyticum Ig G"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Уреаплазма уреалитикум (антитела IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Ureaplasma urealyticum [Presence] in Specimen by Organism specific culture"

<<<<<<< HEAD
  * #lab-pan-450 "Anti -dsDNA Ig G"
=======
  * #lab-450 "Anti -dsDNA Ig G"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Антитела к двуспиральной ДНК (IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "DNA double strand IgG Ab [Presence] in Serum"

<<<<<<< HEAD
  * #lab-pan-451 "Kollogen  C IV"
=======
  * #lab-451 "Kollogen  C IV"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Коллаген IV типа"
    * ^designation[+].language = #en
    * ^designation[=].value = "Collagen crosslinked C-telopeptide [Mass/volume] in Urine"

<<<<<<< HEAD
  * #lab-pan-452 "Gialuronovaya kislota (NA)"
=======
  * #lab-452 "Gialuronovaya kislota (NA)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гиалуроновая кислота"
    * ^designation[+].language = #en
    * ^designation[=].value = "Collagen type 4 Ag [Presence] in Tissue by Immune stain"

<<<<<<< HEAD
  * #lab-pan-453 "Foliyevaya kislota (FA)"
=======
  * #lab-453 "Foliyevaya kislota (FA)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Фолиевая кислота"
    * ^designation[+].language = #en
    * ^designation[=].value = "Folate [Mass/volume] in Blood"

<<<<<<< HEAD
  * #lab-pan-454 "Immunoglobulin Ig A"
=======
  * #lab-454 "Immunoglobulin Ig A"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Иммуноглобулин A (IgA)"
    * ^designation[+].language = #en
    * ^designation[=].value = "IgA [Presence] in Serum"

<<<<<<< HEAD
  * #lab-pan-455 "Immunoglobulin Ig M"
=======
  * #lab-455 "Immunoglobulin Ig M"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Иммуноглобулин M (IgM)"
    * ^designation[+].language = #en
    * ^designation[=].value = "IgM [Presence] in Serum"

<<<<<<< HEAD
  * #lab-pan-456 "Immunoglobulin Ig G"
=======
  * #lab-456 "Immunoglobulin Ig G"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Иммуноглобулин G (IgG)"
    * ^designation[+].language = #en
    * ^designation[=].value = "IgG [Presence] in Serum"

<<<<<<< HEAD
  * #lab-pan-457 "Anti-SSP (Anti-CCP)"
=======
  * #lab-457 "Anti-SSP (Anti-CCP)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Антитела к циклическому цитруллинированному пептиду (Anti-CCP)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Cyclic citrullinated peptide IgG Ab [Presence] in Serum"

<<<<<<< HEAD
  * #lab-pan-458 "25-ON Vitamin D"
=======
  * #lab-458 "25-ON Vitamin D"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "25-ОН витамин D"
    * ^designation[+].language = #en
    * ^designation[=].value = "25-Hydroxyvitamin D3+25-Hydroxyvitamin D2 [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-459 "Alfa-fetoprotein (CAFP)"
=======
  * #lab-459 "Alfa-fetoprotein (CAFP)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Альфа-фетопротеин (АФП)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Alpha-1-Fetoprotein [Presence] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-460 "Epshteyn-Barr (EBV VCA IgM)"
=======
  * #lab-460 "Epshteyn-Barr (EBV VCA IgM)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Вирус Эпштейна–Барр (VCA IgM)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Epstein Barr virus capsid IgM Ab [Units/volume] in Serum"

<<<<<<< HEAD
  * #lab-pan-461 "Mioglobin"
=======
  * #lab-461 "Mioglobin"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Миоглобин"
    * ^designation[+].language = #en
    * ^designation[=].value = "Myoglobin [Presence] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-462 "FT3 (свободный)"
=======
  * #lab-462 "FT3 (свободный)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "FT3 (свободный)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Triiodothyronine (T3) Free [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-463 "FT4 (свободный)"
=======
  * #lab-463 "FT4 (свободный)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "FT4 (свободный)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Thyroxine (T4) free [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-464 "Tireotrop gormon (TTG/TSH) [Birlik/hajm]"
=======
  * #lab-464 "Tireotrop gormon (TTG/TSH) [Birlik/hajm]"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Tиреотропный гормон (ТТГ/TSH) [концентраци"
    * ^designation[+].language = #en
    * ^designation[=].value = "Thyrotropin [Units/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-465 "Erkin triyodtironin (T3) [Zichlik]"
=======
  * #lab-465 "Erkin triyodtironin (T3) [Zichlik]"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Свободный трийодтиронин (T3) [концентрация]"
    * ^designation[+].language = #en
    * ^designation[=].value = "Triiodothyronine (T3) Free [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-466 "Erkin tiroksin (T4) [Zichlik]"
=======
  * #lab-466 "Erkin tiroksin (T4) [Zichlik]"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Свободный тироксин (T4) [концентрация]"
    * ^designation[+].language = #en
    * ^designation[=].value = "Thyroxine (T4) free [Mass/volume] in Serum or Plasma"

<<<<<<< HEAD
  * #lab-pan-467 "Gepatit V DNK(HVV) (sifatli)"
=======
  * #lab-467 "Gepatit V DNK(HVV) (sifatli)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Гепатит B ДНК(HBV), качественный"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hepatitis B virus DNA [Presence] in Serum or Plasma by NAA with probe detection"

<<<<<<< HEAD
  * #lab-pan-468 "Gepatit S RNK (HCV) (miqdoriy)"
=======
  * #lab-468 "Gepatit S RNK (HCV) (miqdoriy)"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "РНК вируса гепатита C (HCV), количественный"
    * ^designation[+].language = #en
    * ^designation[=].value = "Hepatitis C virus RNA [Units/volume] (viral load) in Serum or Plasma by NAA with probe detection"

<<<<<<< HEAD
  * #lab-pan-469 "Laboratoriya diagnostika boʻlimi Vitamin -D"
=======
  * #lab-469 "Laboratoriya diagnostika boʻlimi Vitamin -D"
>>>>>>> 6a3f730 (initial commit)
    * ^designation[0].language = #ru
    * ^designation[=].value = "Витамин D (отдел лабораторной диагностики)"
    * ^designation[+].language = #en
    * ^designation[=].value = "Vitamin D+Metabolites [Mass/volume] in Serum or Plasma"
