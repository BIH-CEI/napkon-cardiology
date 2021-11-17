// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: ECGAtrioventricularBlock
Parent: $gecco-base-condition
Id: ecg-atrioventricular-block
Title: "ECG Atrioventricular Block"
Description: "Atrioventricular block finding from electrocardiogram"
* insert napkon-metadata(2021-11-17, #draft, 0.1.0)
* insert mii-patient-reference
* code.coding[sct] from ECGAtrioventricularBlock (required)

Instance: ECGAtrioventricularBlockConfirmed
InstanceOf: ecg-atrioventricular-block
Usage: #example
Title: "ECG Atrioventricular Block Confirmed"
Description: "Example: Atrioventricular block (complete = grade III) confirmed"
* subject = Reference(ExamplePatient)
* code = $sct#27885002 "Complete atrioventricular block (disorder)"
* recordedDate = "2021-11-09"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#confirmed
* verificationStatus.coding[snomed] = $sct#410605003 "Confirmed present (qualifier value)"

Instance: ECGAtrioventricularBlockRefuted
InstanceOf: ecg-atrioventricular-block
Usage: #example
Title: "ECG Atrioventricular Block Refuted"
Description: "Example: Atrioventricular block refuted"
* subject = Reference(ExamplePatient)
* code = $sct#233917008 "Atrioventricular block (disorder)"
* recordedDate = "2021-11-09"
* verificationStatus.coding[conditionVerificationStatus] = $cs-condition-ver-status#refuted
* verificationStatus.coding[snomed] = $sct#410594000 "Definitely NOT present (qualifier value)"

Instance: ECGAtrioventricularBlockUnknown
InstanceOf: ecg-atrioventricular-block
Usage: #example
Title: "ECG Atrioventricular Block Unknown"
Description: "Example: Unknown status (presence) of an atrioventricular block"
* subject = Reference(ExamplePatient)
* code = $sct#233917008 "Atrioventricular block (disorder)"
* recordedDate = "2021-11-09"
* insert uncertainty-of-presence
