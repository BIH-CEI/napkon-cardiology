// Author: Larissa Röhrig, Gregor Lichtner
// Berlin Institute of Health | Charité
Profile:  ChronicCardiologicDisease
Parent: $gecco-base-condition
Id: chronic-cardiologic-disease
Title: "Chronic Cardiologic Diseases"
Description: "Occurrence of Chronic Cardiologic Diseases"
* insert napkon-metadata(2021-11-03, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] = $sct#394579002 "Cardiology (qualifier value)"
* code.coding[sct] from chronic-cardiologic-diseases-sct (required)
* code.coding[icd10-gm] from chronic-cardiologic-diseases-icd (required)

Instance: chronic-cardiologic-diseases-instance
InstanceOf: chronic-cardiologic-disease
Usage: #example
Title: "chronic-cardiologic-diseases-instance"
Description: "Chronical Cardiological Diseases"
* code = $sct#84114007	"Heart failure"
* subject = Reference(ExamplePatient)
* recordedDate = "2021"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"
