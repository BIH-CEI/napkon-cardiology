// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Extension: diseaseCourse
Id: condition-diseaseCourse
Title: "diseaseCourse"
Description: "The clinical course of the disease (how the disease behaves over time), such as acute versus chronic."
* insert napkon-metadata("2021-11-08", #draft, 0.1.0)
* . ^short = "The clinical course of the disease"
* . ^definition = "The clinical course of the disease (how the disease behaves over time), such as acute versus chronic."
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from condition-course (example)
* value[x] ^binding.extension.url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* value[x] ^binding.extension.valueString = "ConditionCourse"
* value[x] ^binding.description = "Codes that describe the clinical course of the disease."
