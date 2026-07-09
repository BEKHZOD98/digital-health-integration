ValueSet: DMEDDischargeDispositionVS
Id: dmed-discharge-disposition-vs
Title: "DMED Discharge Disposition ValueSet"
Description: "Allowed discharge disposition codes for UZ Core Encounter 066."

* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"

* $discharge-disposition-home-cs#mserv-0004-00002 "Vafot etdi"
* $discharge-disposition-home-cs#mserv-0004-00003 "Self letft from hospital"
* $discharge-disposition-home-cs#mserv-0004-00004 "Discharged"

* $encounter-discharge-disposition#other-hcf "Other healthcare facility"

* include codes from system DMEDDischargeDispositionCS