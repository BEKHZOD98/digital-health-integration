ValueSet: OrdersServiceRequestCodeVS
Id: orders-service-request-code-vs
Title: "Orders service request code"
Description: "UZ Core orderable services together with the hospital referral used by Orders."
* insert IntegrationsValueSet(orders-service-request-code-vs)
* ^status = #draft
* ^experimental = true
* include codes from valueset https://terminology.dhp.uz/fhir/core/ValueSet/service-request-code-vs
* $sct#310449005 "Referral to hospital"
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(OrdersSnomedSupplementCS)
