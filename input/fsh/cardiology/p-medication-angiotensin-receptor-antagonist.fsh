// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin
Profile: MedicationAngiotensinReceptorAntagonist
Parent: $mii-medication-statement
Id: medication-angiotensin-receptor-antagonist
Title: "Medication Angiotensin Receptor Antagonist"
Description: "Medication requirements in the context of cardiology module"
* insert napkon-metadata(2021-11-04, #active, 1.0.0)
* medication[x] only CodeableConcept
* medicationCodeableConcept
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 0..1 and atcde 0..1
  * coding[sct] from medication-angiotensin-receptor-antagonist (required)
  * coding[atcde] from medication-angiotensin-receptor-antagonist-atc (required)

Instance: MedicationAngiotensinReceptorAntagonistATC
InstanceOf: medication-angiotensin-receptor-antagonist
Usage: #example
Title: "Medication Angiotensin Receptor Antagonist"
Description: "Example of profile medication-angiotensin-receptor-antagonist in the context of cardiology module"
* status = #stopped
* medicationCodeableConcept = $atcde#C09CA03 "Valsartan"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2021-11-09"

Instance: MedicationAngiotensinReceptorAntagonistSCT
InstanceOf: medication-angiotensin-receptor-antagonist
Usage: #example
Title: "Medication Angiotensin Receptor Antagonist"
Description: "Example of profile medication-angiotensin-receptor-antagonist in the context of cardiology module"
* status = #stopped
* medicationCodeableConcept = $sct#108581009 "Product containing valsartan (medicinal product)"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2021-11-09"
