Profile: AtrialFibrillation
Parent: Condition
Id: atrial-fibrillation
Title: "Atrial fibrillation"
Description: "Occurrence of Atrial fibrillation (disorder)"
* insert napkon-metadata(2021-10-29, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] = $sct#49436004  "Atrial fibrillation (disorder)"
* code 1..1 MS
* code from cardiology-diseases-codes (required)

Instance: atrial-fibrillation-instance
InstanceOf: atrial-fibrillation
Usage: #example
Title: "atrial-fibrillation-instance"
Description: "Example of a atrial fibrillation"
* code = $sct#49436004  "Atrial fibrillation (disorder)"
* subject = Reference(ExamplePatient)