Instance: example-patient
InstanceOf: Patient
Usage: #example
Title: "example-patient"
Description: "Example of a patient"
* name
  * family = "Ибрагимов"
  * given = "Алишер"

Instance: example-practitioner
InstanceOf: Practitioner
Description: "Example of a practitioner"
Usage: #example
* language = #uz
* active = true
* name
  * use = #official
  * text = "Golibjon Eshnazarov"
  * family = "Eshnazarov"
  * given = "Golibjon"
  * suffix = "Golibjonovich"
* telecom
  * system = #phone
  * value = "975555555"
  * use = #mobile
* gender = #female
* birthDate = "1985-05-06"
