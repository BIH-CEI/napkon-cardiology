Profile: Cardiomyopathy
Parent: Condition
Id: cardiomyopathy
Title: "Cardiomyopathy"
Description: "Occurrence of Cardiomyopathy (disorder)"
* insert napkon-metadata(2021-10-29, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] = $sct#85898001  "Cardiomyopathy (disorder)"
* code 1..1 MS
* code from cardiology-diseases-codes (required)

Instance: cardiomyopathy-instance
InstanceOf: cardiomyopathy
Usage: #example
Title: "cardiomyopathy-instance"
Description: "Example of a cardiomyopathy"
* code = $sct#85898001  "Cardiomyopathy (disorder)"
* subject = Reference(ExamplePatient)