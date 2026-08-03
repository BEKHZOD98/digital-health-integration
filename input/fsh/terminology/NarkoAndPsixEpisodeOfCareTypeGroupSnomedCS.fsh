CodeSystem: NarkoAndPsixEpisodeOfCareTypeGroupSnomedCS
Id: narko-and-psix-episode-of-care-type-group-snomed-cs
Title: "Narko and Psix Episode Of Care Type Group SNOMED CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for EpisodeOfCare type group concepts used in narcology and psychiatry."

* insert SupplementCodeSystemDraft(
    narko-and-psix-episode-of-care-type-group-snomed-cs,
    $sct,
    2026.1.0
)

* #302805002 "Preventive monitoring (regime/therapy)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Профилактическая группа"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Profilaktik guruh"

* #25861000087109 "Mental health and addiction center (environment)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Диспансерная группа"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dispanser guruhi"

* #286794000 "Detained in hospital under the Mental Health Act 1983"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Стационарное принудительное лечение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Majburiy statsionar davolanish"