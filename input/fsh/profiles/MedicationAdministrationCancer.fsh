Profile: MedicationAdmCancerChemotherapy
// there is no UZCoreMedicationAdministration, so I used MedicationAdministration 
Parent: MedicationAdministration
Id: medication-adm-cancer-chemotherapy
Title: "Medication Administration Cancer Chemotherapy"
Description: "Medication administration profile for documenting chemotherapy treatment."

* ^experimental = true
* ^status = #active

* status MS

* medication MS
* medication from NameDrugVS (required)

* subject MS
* subject only Reference(UZCorePatient)

* encounter MS
* encounter only Reference(EncounterCancer)

* occurence[x] only dateTime
* occurenceDateTime	 1..1 MS

* reason MS
* reason only CodeableReference(ConditionCancerPrimary)

* dosage MS

* dosage.method 0..1 MS
* dosage.method from DrugAdministrationVS (required)

* dosage.dose MS

* dosage.dose.value 0..1 MS

* dosage.dose.unit 0..1 MS
* dosage.dose.unit from UnitsDrugVS (required)


Instance: medication-adm-cancer-chemotherapy-example
InstanceOf: MedicationAdmCancerChemotherapy
Usage: #example
Description: "Example chemotherapy medication administration."

* status = #completed

* medication = $cancer-cs#cancr0029.00002 "Actinomycin"

* subject = Reference(example-patient-john)

* encounter = Reference(encounter-cancer-example)

* occurenceDateTime = "2025-10-10"

* reason[0].reference = Reference(condition-cancer-primary-example)

* dosage.method = $cancer-cs#cancr0030.00002  "Intravenous"

* dosage.dose.value = 20
* dosage.dose.unit = $cancer-cs#cancr0032.00008 