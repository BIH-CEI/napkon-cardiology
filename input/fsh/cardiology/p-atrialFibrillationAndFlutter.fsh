Profile: AtrialFibrillationAndFlutter
Parent: Condition
Id: atrial-fibrillation-and-flutter
Title: "Atrial fibrillation and flutter"
Description: "Occurrence of Atrial fibrillation and flutter (disorder)"
* insert napkon-metadata(2021-10-29, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] = $sct#195080001 "Atrial fibrillation and flutter (disorder)"
* code 1..1 MS
* code from cardiology-diseases-codes (required)

Instance: atrial-fibrillation-and-flutter-instance
InstanceOf: atrial-fibrillation-and-flutter
Usage: #example
Title: "cardiomyopathy-instance"
Description: "Example of a cardiomyopathy"
* code = $sct#195080001 "Atrial fibrillation and flutter (disorder)"
* subject = Reference(ExamplePatient)