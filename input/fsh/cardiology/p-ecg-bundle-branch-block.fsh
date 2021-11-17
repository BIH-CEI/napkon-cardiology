// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: ECGBundleBranchBlock
Parent: Observation
Id: ecg-bundle-branch-block
Title: "ECG Bundle Branch Block"
Description: ""
* insert napkon-metadata(2021-11-17, #draft, 0.1.0)
* insert mii-patient-reference
* bodySite = $sct#80891009 "Heart structure (body structure)"
* code 1..1 MS
* code = $sct#271921002 "Electrocardiogram finding (observable entity)"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from ECGBundleBranchBlock (required)
* effective[x] only dateTime
* effectiveDateTime 1.. MS

Instance: ECGBundleBranchBlock
InstanceOf: ecg-bundle-branch-block
Usage: #example
Title: "ECG Bundle Branch Block"
Description: ""
* status = #final
* subject = Reference(ExamplePatient)
* valueCodeableConcept = $sct#733534002 "Electrocardiographic complete left bundle branch block (finding)"
* effectiveDateTime = "2021-11-09"
