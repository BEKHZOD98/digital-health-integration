ValueSet: BloodDonorComponentValueVS
Id: blood-donor-component-value-vs
Title: "Blood donor component value"
Description: "Donation types, ABO blood groups, RhD types and ICD-10 diagnoses used in blood donor observation components"
* insert IntegrationsValueSet(blood-donor-component-value-vs)
* ^status = #draft
* ^experimental = true
* include codes from valueset DonationTypeVS
* include codes from valueset $blood-group-vs
* include codes from valueset $blood-rh-vs
* include codes from system $icd-10
