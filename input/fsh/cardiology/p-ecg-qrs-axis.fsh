// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: ECGQRSAxis
Parent: Observation
Id: ecg-qrs-axis
Title: "ECG QRS Axis"
Description: "QRS Axis orientiation from electrocardiogram"
* insert napkon-metadata(2021-11-17, #active, 1.0.0)
* insert mii-patient-reference
* obeys value-or-data-absent-reason
* bodySite = $sct#80891009 "Heart structure (body structure)"
* code 1..1 MS
* code = $sct#251202000 "Electrocardiographic complex characteristic (observable entity)"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains napkon 1..1
  * coding[napkon] from ECGQRSAxis (required)
* effective[x] 1..1 MS

Instance: ECGQRSAxis
InstanceOf: ecg-qrs-axis
Usage: #example
Title: "ECG QRS Axis"
Description: "Example: QRS Axis steep type"
* status = #final
* subject = Reference(ExamplePatient)
* valueCodeableConcept.coding[napkon] = $ncard#ecg-qrs-axis-steep-type
* effectiveDateTime = "2021-11-09"
