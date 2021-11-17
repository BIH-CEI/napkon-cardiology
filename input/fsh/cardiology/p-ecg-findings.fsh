// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: ECGFindings
Parent: $gecco-base-condition
Id: ecg-findings
Title: "ECG Findings"
Description: "Other findings from electrocardiogram"
* insert napkon-metadata(2021-11-17, #draft, 0.1.0)
* insert mii-patient-reference
* code.coding[sct] from ECGFindings (required)

Instance: SinusRhythmConfirmed
InstanceOf: ecg-findings
Usage: #example
Title: "Sinus Rhythm Confirmed"
Description: "Example: Sinus Rhythm Confirmed"
* subject = Reference(ExamplePatient)
* code = $sct#251150006 "Sinus rhythm (finding)"
* recordedDate = "2021-11-09"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"

Instance: InvertedTWaveRefuted
InstanceOf: ecg-findings
Usage: #example
Title: "Inverted T Wave Refuted"
Description: "Example: Inverted T Wave refuted"
* subject = Reference(ExamplePatient)
* code = $sct#59931005 "Inverted T wave (finding)"
* recordedDate = "2021-11-09"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted
* verificationStatus.coding[snomed] = $sct#410594000 "Definitely NOT present (qualifier value)"

Instance: AtrialEctopicsUnknown
InstanceOf: ecg-findings
Usage: #example
Title: "Atrial Ectopics Unknown"
Description: "Example: Unknown status (presence) of Atrial ectopics"
* subject = Reference(ExamplePatient)
* code = $sct#164885009 "Electrocardiographic atrial ectopics (finding)"
* recordedDate = "2021-11-09"
* insert uncertainty-of-presence
