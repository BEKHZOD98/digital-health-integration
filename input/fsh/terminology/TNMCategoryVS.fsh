ValueSet: TNMCategoryVS
Id: tnm-category-vs
Title: "TNM Category ValueSet"
Description: "TNM category classification codes for clinical and pathological T, N, and M staging."

* ^url = "https://dhp.uz/fhir/integrations/ValueSet/tnm-category-vs"
* ^status = #draft
* ^experimental = true

* include codes from system cancer-stage-cn-pn-cs
* include codes from system cancer-stage-ct-pt-cs
* include codes from system cancer-stage-cm-pm-cs