// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: COVID19Complications
Parent: $gecco-base-condition
Id: complications-covid19
Title: "Complications of COVID-19"
Description: "Complications in the context of COVID-19"
* insert napkon-metadata(2021-11-17, #draft, 0.1.0)
* insert mii-patient-reference
* category 1.. MS
  * coding MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains complication 1..1 MS
  * coding[complication] = $sct#116223007 "Complication (disorder)"
  * coding[complication].system 1.. MS
  * coding[complication].code 1.. MS
* code.coding[sct] from covid19-complications (required)
* extension contains $ext-condition-dueTo named dueTo 1..1
* extension[dueTo].valueCodeableConcept 1..1
* extension[dueTo].valueCodeableConcept = $sct#840539006 "Disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"

Instance: MyocarditisConfirmed
InstanceOf: complications-covid19
Usage: #example
Title: "Myocarditis Confirmed"
Description: "Example: Myocarditis confirmed"
* subject = Reference(ExamplePatient)
* code = $sct#37925008 "Interstitial myocarditis (disorder)"
* recordedDate = "2021-11-09"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"

Instance: CardiogenicShockRefuted
InstanceOf: complications-covid19
Usage: #example
Title: "Cardiogenic shock Refuted"
Description: "Example: Cardiogenic shock refuted"
* subject = Reference(ExamplePatient)
* code = $sct#89138009 "Cardiogenic shock (disorder)"
* recordedDate = "2021-11-09"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted
* verificationStatus.coding[snomed] = $sct#410594000 "Definitely NOT present (qualifier value)"

Instance: BacterialRespiratoryInfectionUnknown
InstanceOf: complications-covid19
Usage: #example
Title: "Bacterial Respiratory Infection Unknown"
Description: "Example: Unknown status (presence) of a Bacterial Respiratory Infection"
* subject = Reference(ExamplePatient)
* code = $sct#312117008 "Bacterial respiratory infection (disorder)"
* recordedDate = "2021-11-09"
* insert uncertainty-of-presence
