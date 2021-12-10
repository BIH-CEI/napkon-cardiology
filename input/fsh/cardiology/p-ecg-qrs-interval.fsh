// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: ECGQRSInterval
Parent: Observation
Id: ecg-qrs-interval
Title: "ECG QRS Interval"
Description: "QRS interval from electrocardiogram"
* insert napkon-metadata(2021-11-17, #active, 1.0.0)
* insert mii-patient-reference
* obeys value-or-data-absent-reason
* bodySite = $sct#80891009 "Heart structure (body structure)"
* code 1..1 MS
* code = $sct#39632005 "QRS interval, function (observable entity)"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from ECGQRSInterval (required)
* effective[x] 1..1 MS

Instance: ECGQRSInterval
InstanceOf: ecg-qrs-interval
Usage: #example
Title: "ECG QRS Interval"
Description: "Example: Wide QRS complex"
* status = #final
* subject = Reference(ExamplePatient)
* valueCodeableConcept = $sct#991002 "Wide QRS complex (finding)"
* effectiveDateTime = "2021-11-09"
