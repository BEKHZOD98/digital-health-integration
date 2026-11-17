ValueSet: BloodTransfusionValueVS
Id: blood-transfusion-value-vs
Title: "Blood transfusion compatibility result"
Description: "Blood transfusion compatibility results"
* insert IntegrationsValueSet(blood-transfusion-value-vs)
* ^status = #draft
* ^experimental = true
* include codes from system BloodTransfusionValueCS
