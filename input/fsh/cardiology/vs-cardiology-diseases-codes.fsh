// Author: Sami Adnan
// Berlin Institute of Health | Charité
// This is an FSH profiling file under development. See sushi documentation for usage.

Alias: $CardiologyDiseasesCodes = https://www.netzwerk-universitaetsmedizin.de/fhir/ValueSet/CardiologyDiseasesCodes

// CAUTION! //
// Add Cardiology codes in this ValueSet, divide sections by commenting HEADER

// ValueSet HEADER
ValueSet: CardiologyDiseasesCodes
Id: cardiology-diseases-codes
Title: "ValueSet for Cardiology Module"
Description:  "Codes related to the Cardiology Module."
* insert napkon-metadata(2021-05-28, #draft, 0.1.0)
* ^url = $CardiologyDiseasesCodes // Path declared as Alias

// Codes for DISORDERS
* $sct#195080001 "Atrial fibrillation and flutter (disorder)"
* $sct#49436004  "Atrial fibrillation (disorder)"
* $sct#5370000   "Atrial flutter (disorder)"
* $sct#84114007  "Heart failure (disorder)"
* $sct#85898001  "Cardiomyopathy (disorder)"
* $sct#59494005  "Congenital septal defect of heart (disorder)"
* $sct#13213009  "Congenital heart disease (disorder)"
* $sct#17338001  "Ventricular premature beats (disorder)"
* $sct#63593006  "Supraventricular premature beats (disorder)"
* $sct#233917008 "Atrioventricular block (disorder)"
* $sct#6374002   "Bundle branch block (disorder)"
* $sct#266249003 "Ventricular hypertrophy (disorder)"
* $sct#373945007 "Pericardial effusion (disorder)"
* $sct#60234000  "Aortic valve regurgitation (disorder)"
* $sct#60573004  "Aortic valve stenosis (disorder)"
* $sct#48724000  "Mitral valve regurgitation (disorder)"
* $sct#79619009  "Mitral valve stenosis (disorder)"
* $sct#111287006 "Tricuspid valve regurgitation (disorder)"
* $sct#49915006  "Tricuspid valve stenosis (disorder)"
* $sct#91434003  "Pulmonic valve regurgitation (disorder)"
* $sct#56786000  "Pulmonic valve stenosis (disorder)"
* $sct#459055004 "Vegetation of heart (disorder)"

// Codes for FINDINGS
* $sct#164950005 "QRS complex normal (finding)"
* $sct#713427006 "Electrocardiographic complete right bundle branch block (finding)"
* $sct#164929001 "Electrocardiogram: ST interval normal (finding)"
* $sct#164955000 "Electrocardiogram: Q-T interval normal (finding)"
* $sct#164877000 "Electrocardiographic right ventricular hypertrophy (finding)"
* $sct#426783006 "Electrocardiogram: sinus rhythm (finding)"
* $sct#59931005  "Inverted T wave (finding)"
* $sct#251146004 "Low QRS voltages (finding)"
* $sct#366170001 "Finding of electrocardiogram QRS Axis (finding)"
* $sct#713655003 "Dependence on non-invasive ventilation (finding)"
* $sct#26141007  "ST segment depression (finding)"

// Codes for QUALIFIER VALUE
* $sct#258351006 "Grade 1 (qualifier value)"
* $sct#258353009 "Grade 3 (qualifier value)"
* $sct#373066001 "Yes (qualifier value)"
* $sct#373067005 "No (qualifier value)"
* $sct#261665006 "Unknown (qualifier value)"
* $sct#74964007  "Other (qualifier value)"
* $sct#297183000 "Revascularization - action (qualifier value)"
// work under progress...
