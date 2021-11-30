// Author: Larissa Röhrig, Gregor Lichtner
// Berlin Institute of Health | Charité
ValueSet: ChronicCardiologicDiseasesSCT
Id: chronic-cardiologic-diseases-sct
Title: "Cardiology Chronic Diseases"
Description: "Cardiology Chronic Diseases Codes"
* insert napkon-metadata(2021-11-17, #draft, 0.1.0)
* include codes from system $sct where concept is-a #49436004 "Atrial fibrillation (disorder)" // Vorhofflimmern - ok
* include codes from system $sct where concept is-a #5370000 "Atrial flutter (disorder)" // Vorhofflattern - ok
* include codes from system $sct where concept is-a #399261000 "History of coronary artery bypass grafting (situation)" // Zustand nach Revaskularisation - ok
* include codes from system $sct where concept is-a #84114007 "Heart failure (disorder)" // Herzinsuffizienz - ok (synonymous of cardiac insuffiency)
* include codes from system $sct where concept is-a #85898001 "Cardiomyopathy (disorder)" // Kardiomyopathie - ok
* include codes from system $sct where concept is-a #13213009 "Congenital heart disease (disorder)" // Angeborener Herzfehler - ok
