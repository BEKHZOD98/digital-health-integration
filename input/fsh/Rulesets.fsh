
Instance: example-hcv-response
InstanceOf: UZCoreQuestionnaireResponse
Description: "Example of anamnesis responses completed by the patient for hepatitis B and C treatment questionnaire"
Usage: #example

* status = #completed
* subject = Reference(example-salim)
* authored = "2026-03-19T12:00:00Z"
* author = Reference(muratova-gulshoda-role)

* item[0]
  * linkId = "hx-tx-hcv-hbv"
  * text = "Has treatment for HCV/HBV been conducted in the past (in the patient's history)?"
  * answer[0]
    * valueBoolean = true
    
    * item[0]
      * linkId = "hx-tx-hvc-hbv-meds"
      * text = "What medications were taken against HCV/HBV?"
      * answer[0]
        * valueString = "Sofosbuvir + Declatasvir"

* item[1]
  * linkId = "pregnancy-trimester"
  * text = "Pregnancy duration"
  * answer[0]
    * valueCoding = http://snomed.info/sct#255246003 "First trimester"


Instance: HepatitisQuestionnaireExample
InstanceOf: UZCoreQuestionnaire
Usage: #example

* identifier.value = "hepatitis-questionnaire-example"
* title = "HEPATITIS QUESTIONNAIRE"
* subjectType = #Patient
* description = "Clinical Structured Form"
* status = #active

* item.linkId = "grp-1"
* item.text = "GENERAL INFORMATION"
* item.type = #group

* item.item[0].linkId = "hx-tx-hcv-hbv"
* item.item[0].text = "Have you previously received treatment for HCV/HBV?"
* item.item[0].type = #boolean

* item.item[1].linkId = "hx-tx-hcv-hbv-meds"
* item.item[1].text = "What medications were taken for HCV/HBV?"
* item.item[1].type = #string

* item.item[1].enableWhen.question = "hx-tx-hcv-hbv"
* item.item[1].enableWhen.operator = #=
* item.item[1].enableWhen.answerBoolean = true



RuleSet: IntegrationsValueSet(id)
// A ValueSet's canonical is on the terminology host regardless of whether it
// draws from an original or a supplement code system, so one URL rule covers all.
* ^url = "https://terminology.dhp.uz/fhir/integrations/ValueSet/{id}"

RuleSet: IntAndUzAddressRules
* address MS
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "country"
* address ^slicing.rules = #open
* address ^slicing.description = "Address slicing based on country to support Uzbek and international addresses"
* address contains uzAddress 0..* MS and i18nAddress 0..* MS

* address[uzAddress]
  * ^short = "An Uzbekistan address"
  * type and use and text and line and city and district and state and country and period MS
  * type from https://terminology.dhp.uz/fhir/core/ValueSet/address-type-vs (required)
  * use from https://terminology.dhp.uz/fhir/core/ValueSet/address-use-vs (required)
  * use ^short = "Type of address, home | temp"
  * district from https://terminology.dhp.uz/fhir/core/ValueSet/regions-vs (required)
  * state from https://terminology.dhp.uz/fhir/core/ValueSet/state-vs (required)
  * city from https://terminology.dhp.uz/fhir/core/ValueSet/mahalla-vs (required)
  * text ^short = "Text part of the address provided by DPM. Mahalla name, street, house number, apartment number"
  * line ^short = "Text street name provided by DPM"
  * district ^short = "District or city code"
  * state ^short = "Region code"
  * city ^short = "Mahalla code (citizens' assembly)"
  * country 1..
  * country = $iso-3166#UZ
  * country ^short = "Country code (ISO 3166-1 2 letter code)"
  * period ^short = "Time period when the address was/is used"

* address[i18nAddress]
  * ^short = "An international, non-Uzbekistan address"
  * type and use and text and line and city and district and state and country and period MS
  * type from https://terminology.dhp.uz/fhir/core/ValueSet/address-type-vs (required)
  * use from https://terminology.dhp.uz/fhir/core/ValueSet/address-use-vs (required)
  * use ^short = "Type of address, home | temp"
  // * country from https://terminology.dhp.uz/fhir/core/ValueSet/iso-3166-2-vs-sans-uz (required)
  * country from https://dhp.uz/fhir/integrations/ValueSet/iso-3166-2-vs-sans-uz (required)
  * country 1..
  * country ^short = "Country code (ISO 3166-1 2 letter code)"
  * text ^short = "Text part of the address"
  * line ^short = "Street name or address line"
  * district ^short = "District, county, or administrative division"
  * state ^short = "State, province, or region"
  * city ^short = "City or locality"
  * period ^short = "Time period when the address was/is used"

RuleSet: UzAddressRules
* address MS
  * type and use and text and line and city and district and state and country and period MS
  * type from https://terminology.dhp.uz/fhir/core/ValueSet/address-type-vs (required)
  * use from https://terminology.dhp.uz/fhir/core/ValueSet/address-use-vs (required)
  * use ^short = "Type of address, home | temp"
  * country from https://terminology.dhp.uz/fhir/core/ValueSet/iso-3166-2-vs (required)
  * district from https://terminology.dhp.uz/fhir/core/ValueSet/regions-vs (required)
  * state from https://terminology.dhp.uz/fhir/core/ValueSet/state-vs (required)
  * city from https://terminology.dhp.uz/fhir/core/ValueSet/mahalla-vs (required)

  * country ^short = "Country code"
  * text ^short = "Text part of the address"
  * line ^short = "Street name or address line"
  * district ^short = "District, county, or administrative division"
  * state ^short = "State, province, or region"
  * city ^short = "City or locality"
  * period ^short = "Time period when the address was/is used"

RuleSet: MultilingualName(entityType)
* name 1..1 MS
  * ^short = "{entityType} name (in Uzbek language)"
  * extension contains translation named translation 0..* MS
    * ^short = "{entityType} name (in Russian and English languages)"

RuleSet: HumanName
* name MS
  * use and text and family and given and suffix and period MS

RuleSet: TaxIdentifier
* identifier[taxId]
  * ^short = "Unique identifier of the organization in Soliq"
  * system 1..1 MS
  * system = $organization-tax-id-system
  * type 1..1 MS
  * type = $identifier-type#TAX "Tax ID number"
  * use = #official
  * value 1..1 MS

RuleSet: OriginalCodeSystemDraft(id)
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/{id}"
* ^status = #draft
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz
* ^experimental = true

RuleSet: OriginalCodeSystem(id)
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/{id}"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz
* ^experimental = false

RuleSet: SupplementCodeSystemDraft(id, supplements, version)
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/{id}"
* ^status = #draft
* ^content = #supplement
* ^supplements = {supplements}
* ^version = "{version}"
* ^language = #en
* ^experimental = true


RuleSet: SupplementCodeSystem(id, supplements, version)
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/{id}"
* ^status = #active
* ^content = #supplement
* ^supplements = {supplements}
* ^version = "{version}"
* ^language = #en
* ^experimental = false