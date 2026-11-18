ValueSet: OrdersFundingResolutionVS
Id: orders-funding-resolution-vs
Title: "Orders funding resolution"
Description: "Legal resolutions under which the requested service is funded."
* insert IntegrationsValueSet(orders-funding-resolution-vs)
* ^status = #draft
* ^experimental = true
* include codes from system OrdersFundingResolutionCS
