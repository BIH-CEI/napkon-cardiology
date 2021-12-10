// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: ECGQTInterval
Parent: Observation
Id: ecg-qt-interval
Title: "ECG QT Interval"
Description: "QT Interval duration from electrocardiogram"
* insert napkon-metadata(2021-11-17, #active, 1.0.0)
* insert mii-patient-reference
* obeys value-or-data-absent-reason
* bodySite = $sct#80891009 "Heart structure (body structure)"
* code 1..1 MS
* code = $sct#301117000 "QT interval duration (observable entity)"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from ECGQTInterval (required)
* effective[x] 1..1 MS

Instance: ECGQTInterval
InstanceOf: ecg-qt-interval
Usage: #example
Title: "ECG QT Interval"
Description: "Example: Normal QT interval"
* status = #final
* subject = Reference(ExamplePatient)
* valueCodeableConcept = $sct#164955000 "Electrocardiogram: Q-T interval normal (finding)"
* effectiveDateTime = "2021-11-09"
