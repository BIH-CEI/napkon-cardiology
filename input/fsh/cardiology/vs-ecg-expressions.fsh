// Author: Sami Adnan
// Berlin Institute of Health | Charité
// This is an FSH profiling file under development. See sushi documentation for usage.

// ValueSet ECG Expressions
ValueSet: ECGExpressions
Id: ecg-expressions
Title: "Cardiology ECG Expressions ValueSet"
Description:  "ValueSet for ECG expressions such as findings, disorders, observable entities etc."
* insert napkon-metadata(2021-10-01, #draft, 0.1.0)
* ^url = "https://www.netzwerk-universitaetsmedizin.de/fhir/ValueSet/EcgCodes"


// Findings
* $sct#251150006 "Sinus rhythm (finding)"
* $sct#426783006 "Electrocardiogram: sinus rhythm (finding)"
* $sct#59931005 "Inverted T wave (finding)"
* $sct#251146004 "Low QRS voltages (finding)"


// Disorder
* $sct#17338001 "Ventricular premature beats (disorder)"
* $sct#63593006 "Supraventricular premature beats (disorder)"
* $sct#233917008 "Atrioventricular block (disorder)"
* $sct#6374002 "Bundle branch block (disorder)"


// Observable entity
* $sct#840643003 "Date of last examination (observable entity)"
* $sct#439272007 "Date of procedure (observable entity)"
* $sct#432213005 "Date of diagnosis (observable entity)"
* $sct#364075005 "Heart rate (observable entity)"
* $sct#251196003 "QRS Axis (observable entity)"
* $sct#251208001 "QRS complex duration (observable entity)"
* $sct#3030002 "ST segment (observable entity)"
* $sct#301117000 "QT interval duration (observable entity)"


// Redundency for Procedures
* include codes from system $sct where concept descendent-of #71388002 "Procedure (procedure)"
