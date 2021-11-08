Alias: $gecco-base-condition = https://www.netzwerk-universitaetsmedizin.de/fhir/StructureDefinition/gecco-base-condition

Profile:  ChronicalCardiologicalDiseases
Parent: $gecco-base-condition
Id: chronical-cardiological-diseases
Title: "Chronical Cardiological Diseases"
Description: "Occurrence of Chronical Cardiological Diseases"
* insert napkon-metadata(2021-11-03, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] = $sct#394579002 "Cardiology (qualifier value)"
* code 1..1 MS
* code from cardiology-chronic-diseases-codes (required)


// need to change instance

Instance: chronical-cardiological-diseases-instance
InstanceOf: chronical-cardiological-diseases
Usage: #example
Title: "chronical-cardiological-diseases-instance"
Description: "Chronical Cardiological Diseases"
* code = $sct#84114007	"Heart failure"
* subject = Reference(ExamplePatient)
* recordedDate = "2021"
