ValueSet: DHISBodySiteVS
Id: dhis-body-site-vs
Title: "DHIS Body Site ValueSet"
Description: "Local value set for body sites used by the DHIS information system, with Russian and English designations."
* insert IntegrationsValueSet(dhis-body-site-vs)
* ^experimental = true
* ^language = #uz

* include codes from system dhis-body-site-cs
* include codes from valueset $bodySite-condition
