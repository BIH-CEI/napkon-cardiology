// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

// ValueSet
ValueSet: ComplicationsCOVID19
Id: complications-covid19
Title: "Complications due to COVID19"
Description:  "Complications due to COVID19 related to the cardiology module"

* insert napkon-metadata(2021-10-29, #draft, 0.1.0)

* ^url = "https://www.netzwerk-universitaetsmedizin.de/fhir/ValueSet/complications-covid19"

* $sct#50920009  "Myocarditis (disorder)"
//Alternative sct#1240531000000103 "Myocarditis due to disease caused by Severe acute respiratory syndrome coronavirus 2 (disorder)"

* $sct#27885002 "Complete atrioventricular block (disorder)"
* $sct#71908006  "Ventricular fibrillation (disorder)"
* $sct#89138009  "Cardiogenic shock (disorder)"
//Virale Co-Infektionen / Reaktivierung
// Teil 1 abbildbar, Teil 2 "Reaktivierung" nur schwer möglich
* $sct#34014006 "Viral disease (disorder)"
// Pulmonale bakterielle Superinfektionen fehlt
* $sct#373945007  "Pericardial effusion (disorder)"

// ToDo: Zwei Codes ergänzen