Instance: example-narko-encounter
InstanceOf: UZCoreEncounter
Title: "Narko Encounter Example"
Description: "Example of Narko encounter"
Usage: #example

* status = #completed "Completed"
* subject = Reference(example-salim)
* participant.type = $v3-ParticipationType#ATND "attender"
* type[nationalType] = encounter-type-cs#mserv-0001-00004 "Treatment services"
* participant.actor = Reference(PractitionerRole/example-psychiatrist-narcologist)
* actualPeriod
  * start = "2026-03-10T10:00:00Z"
  * end = "2026-03-10T11:00:00Z"
* diagnosis[0].condition = Reference(Condition/example-narko-condition)
* diagnosis[0].use = $encounter-diagnosis-use-cs#final "Final"