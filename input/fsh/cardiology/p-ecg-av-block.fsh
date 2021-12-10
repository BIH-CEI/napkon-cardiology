// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: ECGAtrioventricularBlock
Parent: Observation
Id: ecg-atrioventricular-block
Title: "ECG Atrioventricular Block"
Description: "Atrioventricular block finding from electrocardiogram"
* insert napkon-metadata(2021-11-17, #draft, 0.1.0)
* insert mii-patient-reference
* obeys value-or-data-absent-reason
* bodySite = $sct#80891009 "Heart structure (body structure)"
* code 1..1 MS
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] from ECGAtrioventricularBlock (required)
* value[x] only boolean
* valueBoolean MS
* effective[x] 1..1 MS

Instance: ECGAtrioventricularBlockConfirmed
InstanceOf: ecg-atrioventricular-block
Usage: #example
Title: "ECG Atrioventricular Block Confirmed"
Description: "Example: Atrioventricular block (complete = grade III) confirmed"
* status = #final
* subject = Reference(ExamplePatient)
* code = $sct#27885002 "Complete atrioventricular block (disorder)"
* valueBoolean = true
* effectiveDateTime = "2021-11-09"

Instance: ECGAtrioventricularBlockRefuted
InstanceOf: ecg-atrioventricular-block
Usage: #example
Title: "ECG Atrioventricular Block Refuted"
Description: "Example: Atrioventricular block refuted"
* status = #final
* subject = Reference(ExamplePatient)
* code = $sct#233917008 "Atrioventricular block (disorder)"
* valueBoolean = false
* effectiveDateTime = "2021-11-09"

Instance: ECGAtrioventricularBlockUnknown
InstanceOf: ecg-atrioventricular-block
Usage: #example
Title: "ECG Atrioventricular Block Unknown"
Description: "Example: Unknown status (presence) of an atrioventricular block"
* status = #final
* subject = Reference(ExamplePatient)
* code = $sct#233917008 "Atrioventricular block (disorder)"
* dataAbsentReason = $cs-data-absent-reason#unknown
* effectiveDateTime = "2021-11-09"
