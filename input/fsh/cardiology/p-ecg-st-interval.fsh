// Author: Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: ECGSTInterval
Parent: Observation
Id: ecg-st-interval
Title: "ECG ST Interval"
Description: "ST interval from electrocardiogram"
* insert napkon-metadata(2021-11-17, #draft, 0.1.0)
* insert mii-patient-reference
* bodySite = $sct#80891009 "Heart structure (body structure)"
* code 1..1 MS
* code = $sct#164928009 "Electrocardiogram: ST interval (observable entity)"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from ECGSTInterval (required)
* effective[x] only dateTime
* effectiveDateTime 1.. MS

Instance: ECGSTInterval
InstanceOf: ecg-st-interval
Usage: #example
Title: "ECG ST Interval"
Description: "Example: ST segment elevation"
* status = #final
* subject = Reference(ExamplePatient)
* valueCodeableConcept = $sct#76388001 "ST segment elevation (finding)"
* effectiveDateTime = "2021-11-09"
