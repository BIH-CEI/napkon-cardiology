// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

Profile: MedicationARB
Parent: MedicationStatement
Id: medication-angiotensin-receptor-blocker
Title: "Medication ARB"
Description: "MMedication requirements in the context of cardiology module"

* insert napkon-metadata(2021-11-04, #draft, 0.1.0)

* medication[x] only CodeableConcept
* medicationCodeableConcept from MedicationARB
* subject only Reference(Patient)

Instance: MedicationARB
InstanceOf: medication-angiotensin-receptor-blocker
Usage: #example
Title: "Medication ARB"
Description: "Example of profile Medication ARB in the context of cardiology module"
* status = #stopped
* medicationCodeableConcept = $atcde#C09CA03 "Valsartan"
* subject = Reference(ExamplePatient)