CodeSystem: HepatitisICDCS
Id: hep-icd-cs
Title: "Hepatitis ICD-10 CodeSystem"
Description: "CodeSystem supplement for hepatitis ICD-10 codes"

* ^experimental = true
* ^content = #supplement
* ^supplements = $icd-10 
* ^version = "5.0.0"
* ^language = #en


* #B15 "Acute hepatitis A"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Острый гепатит A"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oq virusli gepatit A"

* #B15.0 "Hepatitis A with hepatic coma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Острый гепатит A с гепатальной комой"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oq virusli gepatit A gepatal komaga ega"

* #B15.9 "Hepatitis A without hepatic coma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Острый гепатит A без гепатальной комы"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oq virusli gepatit A gepatal komasiz"

* #B16 "Acute hepatitis B"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Острый гепатит B"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oq virusli gepatit B"  

* #B16.0 "Acute hepatitis B with delta-agent (coinfection) with hepatic coma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Острый гепатит B с дельта-агентом (коинфекция) и гепатальной комой"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oq virusli gepatit B delta agenti bilan (coinfeksiya) va gepatal komaga bilan"

* #B16.1 "Acute hepatitis B with delta-agent (coinfection) without hepatic coma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Острый гепатит B с дельта-агентом (коинфекция) без гепатальной комы"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oq virusli gepatit B delta agenti bilan (coinfeksiya) va gepatal komasiz"

* #B16.2 "Acute hepatitis B without delta-agent with hepatic coma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Острый гепатит B без дельта-агента c гепатальной комы"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oq virusli gepatit B delta agentisiz va gepatal koma bilan"

* #B16.9 "Acute hepatitis B without delta-agent and without hepatic coma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Острый гепатит B без дельта-агента и без гепатальной комы"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oq virusli gepatit B delta agentisiz va gepatal komasiz"   

* #B17 "Other acute viral hepatitis"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие острые вирусные гепатиты"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Boshqa o'tkir virusli gepatitlar"

* #B17.0 "Acute delta-(super)infection in chronic hepatitis B"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Острый дельта-(гепатит D) инфекция (суперинфекция хронического носителя гепатита B)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oq gelta-(gepatit D) (B gepatiti surunkali tashuvchisining superinfektsiyasi)"

* #B17.1 "Acute hepatitis C"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Острый гепатит C"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oq virusli gepatit C"

* #B17.2 "Acute hepatitis E"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Острый гепатит E"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oq virusli gepatit E"  

* #B17.8 "Other specified acute viral hepatitis"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие уточненные острые вирусные гепатиты"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Boshqa aniqlangan o'tkir virusli gepatit"

* #B18 "Chronic viral hepatitis"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хронические вирусные гепатиты"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Surunkali virusli gepatitlar"

* #B18.0 "Chronic viral hepatitis B with delta-agent"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хронический вирусный гепатит B с дельта-агентом"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Surunkali virusli gepatit B delta-agent bilan"

* #B18.1 "Chronic viral hepatitis B without delta-agent"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хронический вирусный гепатит B без дельта-агента"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Surunkali virusli gepatit B delta-agentisiz"

* #B18.2 "Chronic viral hepatitis C"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хронический вирусный гепатит C"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Surunkali virusli gepatit C"   

* #B18.8 "Other chronic viral hepatitis"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие хронические вирусные гепатиты"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Boshqa surunkali virusli gepatitlar"   

* #B18.9 "Chronic viral hepatitis, unspecified"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хронический вирусный гепатит неуточненный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Aniqlanmayan surunkali virusli gepatit"

* #B19 "Unspecified viral hepatitis"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неуточненный вирусный гепатит"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Aniqlanmagan virusli gepatit"

* #B19.0 "Unspecified viral hepatitis with hepatic coma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неуточненный вирусный гепатит с гепатальной комой"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Aniqlanmagan virusli gepatit gepatal koma bilan"

* #B19.9 "Unspecified viral hepatitis without hepatic coma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неуточненный вирусный гепатит без гепатальной комы"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Aniqlanmagan virusli gepatit gepatatal komasiz"

* #K74.0 "Hepatic fibrosis"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цирроз печени"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Jigar sirrozi"

* #K74.6 "Other and unspecified cirrhosis of liver"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другой и неуточненный цирроз печени"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Boshqa va aniqlanmagan jigar sirrozi"