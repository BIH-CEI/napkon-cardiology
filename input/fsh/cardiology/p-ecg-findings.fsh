// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: ECGFindings
Parent: Observation
Id: ecg-findings
Title: "ECG Findings"
Description: "Other findings from electrocardiogram"
* insert napkon-metadata(2021-11-17, #active, 1.0.0)
* insert mii-patient-reference
* obeys value-or-data-absent-reason
* bodySite = $sct#80891009 "Heart structure (body structure)"
* code 1..1 MS
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] from ECGFindings (required)
* value[x] only boolean
* valueBoolean MS
* effective[x] 1..1 MS

Instance: SinusRhythmConfirmed
InstanceOf: ecg-findings
Usage: #example
Title: "Sinus Rhythm Confirmed"
Description: "Example: Sinus Rhythm Confirmed"
* status = #final
* subject = Reference(ExamplePatient)
* code = $sct#251150006 "Sinus rhythm (finding)"
* valueBoolean = true
* effectiveDateTime = "2021-11-09"

Instance: InvertedTWaveRefuted
InstanceOf: ecg-findings
Usage: #example
Title: "Inverted T Wave Refuted"
Description: "Example: Inverted T Wave refuted"
* status = #final
* subject = Reference(ExamplePatient)
* code = $sct#59931005 "Inverted T wave (finding)"
* valueBoolean = false
* effectiveDateTime = "2021-11-09"

Instance: AtrialEctopicsUnknown
InstanceOf: ecg-findings
Usage: #example
Title: "Atrial Ectopics Unknown"
Description: "Example: Unknown status (presence) of Atrial ectopics"
* status = #final
* subject = Reference(ExamplePatient)
* code = $sct#164885009 "Electrocardiographic atrial ectopics (finding)"
* dataAbsentReason = $cs-data-absent-reason#unknown
* effectiveDateTime = "2021-11-09"
