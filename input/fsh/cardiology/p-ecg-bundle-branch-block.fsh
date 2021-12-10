// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: ECGBundleBranchBlock
Parent: Observation
Id: ecg-bundle-branch-block
Title: "ECG Bundle Branch Block"
Description: "Bundle branch block findings from electrocardiogram"
* insert napkon-metadata(2021-11-17, #active, 1.0.0)
* insert mii-patient-reference
* obeys value-or-data-absent-reason
* bodySite = $sct#80891009 "Heart structure (body structure)"
* code 1..1 MS
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] from ECGBundleBranchBlock (required)
* value[x] only boolean
* valueBoolean MS
* effective[x] 1..1 MS

Instance: ECGBundleBranchBlock
InstanceOf: ecg-bundle-branch-block
Usage: #example
Title: "ECG Bundle Branch Block"
Description: "Example: Complete left bundle branch block"
* status = #final
* subject = Reference(ExamplePatient)
* code = $sct#733534002 "Electrocardiographic complete left bundle branch block (finding)"
* valueBoolean = true
* effectiveDateTime = "2021-11-09"

Instance: ECGNoBundleBranchBlock
InstanceOf: ecg-bundle-branch-block
Usage: #example
Title: "ECG No Bundle Branch Block"
Description: "Example: No bundle branch block"
* status = #final
* subject = Reference(ExamplePatient)
* code = $ncard#ecg-bundle-branch-block "ECG: Bundle branch block" // Schenkelblock
* valueBoolean = false
* effectiveDateTime = "2021-11-09"

Instance: ECGNoBundleBranchBlockUnknown
InstanceOf: ecg-bundle-branch-block
Usage: #example
Title: "ECG Bundle Branch Block Unknown"
Description: "Example: Unknown status (presence) of a bundle branch block"
* status = #final
* subject = Reference(ExamplePatient)
* code = $ncard#ecg-bundle-branch-block "ECG: Bundle branch block" // Schenkelblock
* dataAbsentReason = $cs-data-absent-reason#unknown
* effectiveDateTime = "2021-11-09"
