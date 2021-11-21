// Author: Larissa Röhrig, Gregor Lichtner
// Berlin Institute of Health | Charité
ValueSet: ChronicCardiologicDiseasesICD
Id: chronic-cardiologic-diseases-icd
Title: "Cardiology Chronic Diseases"
Description: "Cardiology Chronic Diseases Codes"
* insert napkon-metadata(2021-11-17, #draft, 0.1.0)
* codes from system $icd10-gm where concept is-a #I48 "Vorhofflimmern und Vorhofflattern" and child exists false // Vorhofflimmern, Vorhofflattern
* codes from system $icd10-gm where concept is-a #I50 "Herzinsuffizienz" and child exists false // Herzinsuffizienz
* codes from system $icd10-gm where concept is-a #I42 "Kardiomyopathie" and child exists false // Kardiomyopathie

// Angeborener Herzfehler
* codes from system $icd10-gm where concept is-a #Q20 "Angeborene Fehlbildungen der Herzhöhlen und verbindender Strukturen" and child exists false
* codes from system $icd10-gm where concept is-a #Q21 "Angeborene Fehlbildungen der Herzsepten" and child exists false
* codes from system $icd10-gm where concept is-a #Q22 "Angeborene Fehlbildungen der Pulmonal- und der Trikuspidalklappe" and child exists false
* codes from system $icd10-gm where concept is-a #Q23 "Angeborene Fehlbildungen der Aorten- und der Mitralklappe" and child exists false
* codes from system $icd10-gm where concept is-a #Q24 "Sonstige angeborene Fehlbildungen des Herzens" and child exists false

// Zustand nach Revaskularisation
* codes from system $icd10-gm where concept is-a #Z95 "Vorhandensein von kardialen oder vaskulären Implantaten oder Transplantaten" and child exists false
