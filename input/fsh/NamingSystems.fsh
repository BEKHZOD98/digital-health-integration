Instance: doc-form-number
InstanceOf: NamingSystem
Description: "Official form numbers for standardized clinical documents in Uzbekistan"
Usage: #definition
* name = "UzbekistanDocumentFormNumber"
* status = #active
* kind = #identifier
* publisher = "Uzinfocom"
* responsible = "Ministry of Health of the Republic of Uzbekistan"
* date = "2026-02-03"
* description = "Form numbers for standardized clinical documents (e.g., 053, 086, 094, 095, 138)"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used in Composition.identifier or CarePlan.identifier when a document corresponds to a standardized form"
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* uniqueId[=].preferred = true

Instance: doc-template-number
InstanceOf: NamingSystem
Description: "Template numbers for clinical document templates in Uzbekistan"
Usage: #definition
* name = "UzbekistanDocumentTemplateNumber"
* status = #active
* kind = #identifier
* publisher = "Uzinfocom"
* responsible = "Ministry of Health of the Republic of Uzbekistan"
* date = "2026-02-03"
* description = "Template numbers for clinical document templates (distinct from form numbers)"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used in Composition.identifier or CarePlan.identifier to identify the template used"
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/doc/uz/template-number"
* uniqueId[=].preferred = true



//mine
// Instance: pid-uz-ni
// InstanceOf: NamingSystem
// Title: "Uzbekistan National ID NamingSystem"
// Description: "NamingSystem for Uzbekistan National ID numbers"
// Usage: #definition
// * name = "UzbekistanNationalId"
// * status = #active
// * kind = #identifier
// * publisher = "Uzinfocom"
// * responsible = "Ministry of Health of the Republic of Uzbekistan"
// * date = "2024-01-01"
// * jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
// * description = "This NamingSystem defines the canonical identifier system for Uzbekistan National 
// Identification Numbers (NIN). These identifiers are uniquely assigned to citizens and residents of 
// Uzbekistan and are used for patient identification across healthcare systems, including electronic 
// health records, insurance, and national registries."
// * usage = "Used in Patient.identifier for Uzbekistan National ID"
// * uniqueId[0].type = #uri
// * uniqueId[0].value = "https://dhp.uz/fhir/core/sid/pid/uz/ni"
// * uniqueId[0].preferred = true

// Instance: pid-uz-passport-local
// InstanceOf: NamingSystem
// Title: "Uzbekistan Local Passport NamingSystem"
// Description: "NamingSystem for Uzbekistan local passport identifiers"
// Usage: #definition
// * name = "UzbekistanLocalPassport"
// * status = #active
// * kind = #identifier
// * publisher = "Uzinfocom"
// * responsible = "Ministry of Health of the Republic of Uzbekistan"
// * date = "2024-01-01"
// * jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
// * description = "This NamingSystem defines the canonical identifier system 
// for Uzbekistan local passport numbers. These identifiers are used for 
// patient identification in healthcare settings when a local passport number 
// is available and preferred over the national ID."
// * usage = "Used in Patient.identifier for local passport numbers"
// * uniqueId[0].type = #uri
// * uniqueId[0].value = "https://dpm.uz/identifier/passport-local"
// * uniqueId[0].preferred = true

// Instance: pid-uz-healthcard
// InstanceOf: NamingSystem
// Title: "Uzbekistan Health Card NamingSystem"
// Description: "NamingSystem for Uzbekistan health card identifiers"
// Usage: #definition
// * name = "UzbekistanHealthCard"
// * status = #active
// * kind = #identifier
// * publisher = "Uzinfocom"
// * responsible = "Ministry of Health of the Republic of Uzbekistan"
// * date = "2024-01-01"
// * jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
// * description = "This NamingSystem defines the identifier system 
// for health card or health insurance numbers issued within 
// Uzbekistan. These identifiers are used to link patients to 
// healthcare coverage, benefits, and service eligibility within 
// national or regional health programs."
// * usage = "Used in Patient.identifier for health insurance or health card numbers"
// * uniqueId[0].type = #uri
// * uniqueId[0].value = "https://gov.uz/ssv/identifier/healthcard"
// * uniqueId[0].preferred = true

Instance: cancer-chemotherapy-ns
InstanceOf: NamingSystem
Description: "NamingSystem for cancer chemotherapy identifiers"
Usage: #definition
* name = "CancerChemotherapy"
* status = #active
* kind = #identifier
* publisher = "Uzinfocom"
* responsible = "Ministry of Health of the Republic of Uzbekistan"
* date = "2024-01-01"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* description = "This NamingSystem defines the identifier system 
for tracking chemotherapy treatments in cancer patients. These 
identifiers are used in Observation.identifier or Procedure.identifier 
to link records to specific chemotherapy regimens, cycles, or protocols 
as part of cancer care management."
* usage = "Used in Observation.identifier or Procedure.identifier for chemotherapy tracking"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/cancer/chemotherapy"
* uniqueId[0].preferred = true

Instance: cancer-tnm-ns
InstanceOf: NamingSystem
Description: "NamingSystem for TNM classification identifiers"
Usage: #definition
* name = "CancerTNM"
* status = #active
* kind = #identifier
* publisher = "Uzinfocom"
* responsible = "Ministry of Health of the Republic of Uzbekistan"
* date = "2024-01-01"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* description = "This NamingSystem defines identifiers associated with 
TNM (Tumor, Node, Metastasis) cancer staging classifications. 
These identifiers are used to uniquely reference staging 
assessments in oncology records and support consistent 
interpretation and exchange of cancer staging data."
* usage = "Used in Observation.identifier for TNM cancer staging classification"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/cancer/tnm"
* uniqueId[0].preferred = true

//mine
Instance: organization-code
InstanceOf: NamingSystem
Description: "NamingSystem defining the canonical URI for organization codes used in Uzbekistan healthcare systems."
Usage: #definition
* name = "OrganizationCode"
* status = #active
* kind = #identifier
* date = "2026-04-22"
* publisher = "UZINFOCOM"
* responsible = "UZINFOCOM"
* description = "Identifier system for organization codes."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/core/sid/uz/organization-code"
* uniqueId[0].preferred = true



Instance: department-code-ns
InstanceOf: NamingSystem
Usage: #definition

* name = "DepartmentCodeNamingSystem"
* status = #active
* kind = #identifier
* date = "2026-05-07"
* publisher = "Uzinfocom"
* responsible = "UZINFOCOM"
* description = "NamingSystem for Uzbekistan department codes"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/core/sid/uz/department-code"
* uniqueId[0].preferred = true


Instance: medical-record-number-system
InstanceOf: NamingSystem
Usage: #definition

* url = "https://dhp.uz/fhir/integrations/NamingSystem/medical-record-number-system"
* name = "UzbekistanMedicalRecordNumberSystem"
* status = #active
* kind = #identifier
* date = "2026-06-22"
* publisher = "Uzinfocom"
* responsible = "Uzinfocom"
* description = "Identifier system used for medical record numbers assigned to encounters and inpatient records in the Digital Health Platform."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number"
* uniqueId[=].preferred = true
Instance: screening-identifier-system
InstanceOf: NamingSystem
Description: "Identifier system for the Cervical Cancer Screening Quality Assessment and Monitoring and Early Breast Cancer Detection Information System"
Usage: #definition
* url = "https://dhp.uz/fhir/integrations/NamingSystem/screening-identifier-system"
* name = "ScreeningIdentifierSystem"
* status = #active
* kind = #identifier
* date = "2026-06-03"
* publisher = "Uzinfocom"
* responsible = "Uzinfocom"
* usage = "Business-identifier system for clinical and administrative records within the Cervical Cancer Screening Quality Assessment and Monitoring and Early Breast Cancer Detection Information System (e.g. Observation, Encounter, DiagnosticReport, ServiceRequest, Condition, QuestionnaireResponse, PractitionerRole). Person identities use the pid/pro systems instead."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/core/sid/uz/screening"
* uniqueId[0].preferred = true

Instance: screening-patient-identifier-system
InstanceOf: NamingSystem
Description: "Patient identifier system for the Cervical Cancer Screening Quality Assessment and Monitoring and Early Breast Cancer Detection Information System"
Usage: #definition
* url = "https://dhp.uz/fhir/integrations/NamingSystem/screening-patient-identifier-system"
* name = "ScreeningPatientIdentifierSystem"
* status = #active
* kind = #identifier
* date = "2026-06-24"
* publisher = "Uzinfocom"
* responsible = "Uzinfocom"
* usage = "Identifier assigned to patients by the screening information system. Follows the dhp.uz patient identifier namespace (sid/pid)."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/core/sid/pid/uz/screening"
* uniqueId[0].preferred = true

Instance: screening-practitioner-identifier-system
InstanceOf: NamingSystem
Description: "Practitioner identifier system for the Cervical Cancer Screening Quality Assessment and Monitoring and Early Breast Cancer Detection Information System"
Usage: #definition
* url = "https://dhp.uz/fhir/integrations/NamingSystem/screening-practitioner-identifier-system"
* name = "ScreeningPractitionerIdentifierSystem"
* status = #active
* kind = #identifier
* date = "2026-06-24"
* publisher = "Uzinfocom"
* responsible = "Uzinfocom"
* usage = "Identifier assigned to healthcare professionals by the screening information system. Follows the dhp.uz practitioner identifier namespace (sid/pro)."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/core/sid/pro/uz/screening"
* uniqueId[0].preferred = true
