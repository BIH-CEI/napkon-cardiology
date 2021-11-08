// Author: Gregor Lichtner, Larissa Röhrig
// Berlin Institute of Health | Charité
Profile:  EchocardiographyFindings
Parent: $gecco-base-condition
Id: echocardiography-findings
Title: "Echocardiography Findings"
Description: "Findings from echocardiography"
* insert napkon-metadata(2021-11-03, #draft, 0.1.0)
* extension contains condition-diseaseCourse named diseaseCourse 0..1 MS
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] = $sct#394579002 "Cardiology (qualifier value)"
* code 1..1 MS
* code from echocardiography-findings (required)

// for responses of confirmed
Instance: echo-finding-confirmed
InstanceOf: echocardiography-findings
Usage: #example
Title: "Echocardiography finding - confirmed"
Description: "Example of a confirmed finding from echocardiography"
* extension[diseaseCourse].valueCodeableConcept = $sct#255314001 "Progressive (qualifier value)"
* code = $sct#56786000	"Pulmonic valve stenosis (disorder)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"

// instance for no explicitly excluded
Instance: echo-finding-refuted
InstanceOf: echocardiography-findings
Usage: #example
Title: "Echocardiography finding - refuted"
Description: "Example of a refuted finding from echocardiography"
* code = $sct#56786000 "Pulmonic valve stenosis (disorder)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021"
* extension[diseaseCourse].valueCodeableConcept = $sct#410594000 "Definitely NOT present (qualifier value)"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted
* verificationStatus.coding[snomed] = $sct#410594000 "Definitely NOT present (qualifier value)"

// instance for condition status unknown
Instance: echo-finding-uncertain
InstanceOf: echocardiography-findings
Usage: #example
Title: "Echocardiography finding - unknown"
Description: "Example of a finding from echocardiography of which the presence is unknown"
* insert uncertainty-of-presence
* extension[diseaseCourse].valueCodeableConcept = $sct#261665006 "Unknown (qualifier value)"
* code = $sct#56786000	"Pulmonic valve stenosis (disorder)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021"
