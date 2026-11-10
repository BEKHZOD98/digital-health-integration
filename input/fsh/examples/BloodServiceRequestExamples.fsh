Instance: example-blood-laboratory-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Laboratory Order"
Description: "Donor laboratory order selecting bilirubin and ALT tests. Referenced resources are maintained by the source system."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* category[dhpCategory] = $lab-categories-cs#lab-category-04 "Biokimyo"
* code.concept = $sct#108252007 "Laboratory procedure"
* subject = Reference(Patient/donor-123)
* encounter = Reference(Encounter/donation-visit-001)
* authoredOn = "2026-11-10T09:05:00+05:00"
* requester = Reference(Practitioner/donor-physician)
* specimen = Reference(Specimen/tube-purple-001)
* orderDetail.parameter[0].code = $loinc#1975-2 "Bilirubin.total [Mass/volume] in Serum or Plasma"
* orderDetail.parameter[=].valueBoolean = true
* orderDetail.parameter[+].code = $loinc#1742-6 "Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
* orderDetail.parameter[=].valueBoolean = true

Instance: example-blood-immunology-laboratory-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Immunology Laboratory Order"
Description: "Donor immunology laboratory order selecting ABO group and Rh typing. Referenced resources are maintained by the source system."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* category[dhpCategory] = $lab-categories-cs#lab-category-05 "Immunologiya"
* code.concept = $sct#108252007 "Laboratory procedure"
* subject = Reference(Patient/donor-123)
* encounter = Reference(Encounter/donation-visit-001)
* authoredOn = "2026-11-10T09:05:00+05:00"
* requester = Reference(Practitioner/donor-physician)
* specimen = Reference(Specimen/tube-purple-001)
* orderDetail.parameter[0].code = $loinc#883-9 "ABO group [Type] in Blood"
* orderDetail.parameter[=].valueBoolean = true
* orderDetail.parameter[+].code = $loinc#10331-7 "Rh [Type] in Blood"
* orderDetail.parameter[=].valueBoolean = true

Instance: example-blood-transfusion-infections-laboratory-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Transfusion-Transmissible Infections Laboratory Order"
Description: "Donor laboratory order selecting hepatitis C antibodies, syphilis RPR, hepatitis B surface antigen and an HIV antibody panel. Assay selection is provisional, as in the integration specification. Referenced resources are maintained by the source system."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* category[dhpCategory] = $lab-categories-cs#lab-category-20 "Infeksion diagnostika"
* code.concept = $sct#108252007 "Laboratory procedure"
* subject = Reference(Patient/donor-123)
* encounter = Reference(Encounter/donation-visit-001)
* authoredOn = "2026-11-10T09:05:00+05:00"
* requester = Reference(Practitioner/donor-physician)
* specimen = Reference(Specimen/tube-purple-001)
* orderDetail.parameter[0].code = $loinc#16128-1 "Hepatitis C virus Ab [Presence] in Serum"
* orderDetail.parameter[=].valueBoolean = true
* orderDetail.parameter[+].code = $loinc#20507-0 "Reagin Ab [Presence] in Serum by RPR"
* orderDetail.parameter[=].valueBoolean = true
* orderDetail.parameter[+].code = $loinc#5195-3 "Hepatitis B virus surface Ag [Presence] in Serum"
* orderDetail.parameter[=].valueBoolean = true
* orderDetail.parameter[+].code = $loinc#95523-7 "HIV 1 and 2 Ab panel - Serum or Plasma by Immunoassay"
* orderDetail.parameter[=].valueBoolean = true

Instance: example-blood-bacteriology-laboratory-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Bacteriology Laboratory Order"
Description: "Donor laboratory order selecting Brucella antibodies and malaria smear microscopy. Laboratory grouping follows the integration specification. Referenced specimens represent all donor samples sent to this laboratory; no dedicated bacteriology tube is required."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* category[dhpCategory] = $lab-categories-cs#lab-category-08 "Bakteriologiya"
* code.concept = $sct#108252007 "Laboratory procedure"
* subject = Reference(Patient/donor-123)
* encounter = Reference(Encounter/donation-visit-001)
* authoredOn = "2026-11-10T09:05:00+05:00"
* requester = Reference(Practitioner/donor-physician)
* specimen[0] = Reference(Specimen/tube-purple-001)
* specimen[+] = Reference(Specimen/donor-serum-001)
* orderDetail.parameter[0].code = $loinc#30202-6 "Brucella sp Ab [Presence] in Serum"
* orderDetail.parameter[=].valueBoolean = true
* orderDetail.parameter[+].code = $loinc#32700-7 "Microscopic observation [Identifier] in Blood by Malaria smear"
* orderDetail.parameter[=].valueBoolean = true

Instance: example-blood-hematology-laboratory-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Hematology Laboratory Order"
Description: "Donor hematology laboratory order selecting an automated complete blood count panel. Referenced resources are maintained by the source system."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* category[dhpCategory] = $lab-categories-cs#lab-category-02 "Gematologiya"
* code.concept = $sct#108252007 "Laboratory procedure"
* subject = Reference(Patient/donor-123)
* encounter = Reference(Encounter/donation-visit-001)
* authoredOn = "2026-11-10T09:05:00+05:00"
* requester = Reference(Practitioner/donor-physician)
* specimen = Reference(Specimen/tube-purple-001)
* orderDetail.parameter[0].code = $loinc#58410-2 "CBC panel - Blood by Automated count"
* orderDetail.parameter[=].valueBoolean = true

Instance: example-blood-component-processing-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Component Processing"
Description: "One request selecting washing and irradiation for a blood component. The overall service code is provisional and requires terminology approval."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* code.concept = $sct#64108007 "Blood unit processing"
* subject = Reference(Patient/donor-123)
* authoredOn = "2026-11-10T10:00:00+05:00"
* requester = Reference(Practitioner/processing-requester)
* focus = Reference(InventoryItem/blood-component-789)
* note.text = "Ehtiyotkorlik bilan qayta ishlang."
* orderDetail.parameter[0].code = ProcessingOperationCS#bld-operation-0001 "Yuvish"
* orderDetail.parameter[=].valueBoolean = true
* orderDetail.parameter[+].code = ProcessingOperationCS#bld-operation-0002 "Nurlantirish"
* orderDetail.parameter[=].valueBoolean = true
