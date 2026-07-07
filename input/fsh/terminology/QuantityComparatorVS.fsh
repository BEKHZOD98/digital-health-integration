ValueSet: QuantityComparatorVS
Id: quantity-comparator-vs
Title: "Quantity comparator ValueSet"
Description: "ValueSet for quantity comparator"
* ^url = "https://terminology.dhp.uz/fhir/integrations/ValueSet/quantity-comparator-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(QuantityComparatorCS)

* $comparator#<
* $comparator#<=
* $comparator#>=
* $comparator#>
* $comparator#ad