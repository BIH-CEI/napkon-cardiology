// Author: Larissa Röhrig, Gregor Lichtner
// Berlin Institute of Health | Charité
ValueSet: EchocardiographyFindingsICD
Id: echocardiography-findings-icd
Title: "Echocardiography Findings ICD10 GM"
Description: "Codes for Echocardiography Findings (ICD10 GM)"
* insert napkon-metadata(2021-11-24, #draft, 0.1.0)

 // Regionale Wandbewegungsstörungen
* codes from system $icd10-gm where concept is-a #I51.8 "Sonstige ungenau bezeichnete Herzkrankheiten" and child exists false

// Perikarderguss
* codes from system $icd10-gm where concept is-a #I30 "Akute Perikarditis" and child exists false
* codes from system $icd10-gm where concept is-a #I31.3 "Perikarderguss (nichtentzündlich)" and child exists false

// Klappenvitien
* codes from system $icd10-gm where concept is-a #I05.0 "Mitralklappenstenose" and child exists false
* codes from system $icd10-gm where concept is-a #I06.0 "Rheumatische Aortenklappenstenose" and child exists false
* codes from system $icd10-gm where concept is-a #I07.0 "Trikuspidalklappenstenose" and child exists false
* codes from system $icd10-gm where concept is-a #I08 "Krankheiten mehrerer Herzklappen" and child exists false
* codes from system $icd10-gm where concept is-a #I09.8 "Sonstige näher bezeichnete rheumatische Herzkrankheiten" and child exists false
* codes from system $icd10-gm where concept is-a #I34.2 "Nichtrheumatische Mitralklappenstenose" and child exists false
* codes from system $icd10-gm where concept is-a #I35.0 "Aortenklappenstenose" and child exists false
* codes from system $icd10-gm where concept is-a #I36.0 "Nichtrheumatische Trikuspidalklappenstenose" and child exists false
* codes from system $icd10-gm where concept is-a #I37.0 "Pulmonalklappenstenose" and child exists false
* codes from system $icd10-gm where concept is-a #Q22 "Angeborene Fehlbildungen der Pulmonal- und der Trikuspidalklappe" and child exists false
* codes from system $icd10-gm where concept is-a #Q23 "Angeborene Fehlbildungen der Aorten- und der Mitralklappe" and child exists false

 // Aortenklappeninsuffizienz
* codes from system $icd10-gm where concept is-a #I35.1 "Aortenklappeninsuffizienz" and child exists false
* codes from system $icd10-gm where concept is-a #Q23.1 "Angeborene Aortenklappeninsuffizienz" and child exists false
* codes from system $icd10-gm where concept is-a #I06.1 "Rheumatische Aortenklappeninsuffizienz" and child exists false
* codes from system $icd10-gm where concept is-a #I06.2 "Rheumatische Aortenklappenstenose mit Insuffizienz" and child exists false

 // Aortenklappenstenose
* codes from system $icd10-gm where concept is-a #I35.0 "Aortenklappenstenose" and child exists false
* codes from system $icd10-gm where concept is-a #Q23.0 "Angeborene Aortenklappenstenose" and child exists false
* codes from system $icd10-gm where concept is-a #I06.0 "Rheumatische Aortenklappenstenose" and child exists false
* codes from system $icd10-gm where concept is-a #I06.2 "Rheumatische Aortenklappenstenose mit Insuffizienz" and child exists false

// Mitralklappeninsuffizienz
* codes from system $icd10-gm where concept is-a #I34.0 "Mitralklappeninsuffizienz" and child exists false
* codes from system $icd10-gm where concept is-a #Q23.3 "Angeborene Mitralklappeninsuffizienz" and child exists false
* codes from system $icd10-gm where concept is-a #I05.1 "Rheumatische Mitralklappeninsuffizienz" and child exists false
* codes from system $icd10-gm where concept is-a #I05.2 "Mitralklappenstenose mit Insuffizienz" and child exists false

// Mitralklappenstenose
* codes from system $icd10-gm where concept is-a #I34.2 "Nichtrheumatische Mitralklappenstenose" and child exists false
* codes from system $icd10-gm where concept is-a #I05.0 "Mitralklappenstenose" and child exists false
* codes from system $icd10-gm where concept is-a #I05.2 "Mitralklappenstenose mit Insuffizienz" and child exists false
* codes from system $icd10-gm where concept is-a #Q23.2 "Angeborene Mitralklappenstenose" and child exists false

// Trikuspidalklappeninsuffizienz
* codes from system $icd10-gm where concept is-a #I07.1 "Trikuspidalklappeninsuffizienz" and child exists false
* codes from system $icd10-gm where concept is-a #I07.2 "Trikuspidalklappenstenose mit Insuffizienz" and child exists false
* codes from system $icd10-gm where concept is-a #I36.1 "Nichtrheumatische Trikuspidalklappeninsuffizienz" and child exists false

// Trikuspidalklappenstenose
* codes from system $icd10-gm where concept is-a #I07.0 "Trikuspidalklappenstenose" and child exists false
* codes from system $icd10-gm where concept is-a #I07.2 "Trikuspidalklappenstenose mit Insuffizienz" and child exists false
* codes from system $icd10-gm where concept is-a #I36.0 "Nichtrheumatische Trikuspidalklappenstenose" and child exists false
* codes from system $icd10-gm where concept is-a #I36.2 "Nichtrheumatische Trikuspidalklappenstenose mit Insuffizienz" and child exists false
* codes from system $icd10-gm where concept is-a #Q22.4 "Angeborene Trikuspidalklappenstenose" and child exists false

// Pulmonalklappeninsuffizienz
* codes from system $icd10-gm where concept is-a #I37.1 "Pulmonalklappeninsuffizienz" and child exists false
* codes from system $icd10-gm where concept is-a #Q22.2 "Angeborene Pulmonalklappeninsuffizienz" and child exists false

// Pulmonalklappenstenose
* codes from system $icd10-gm where concept is-a #I37.0 "Pulmonalklappenstenose" and child exists false
* codes from system $icd10-gm where concept is-a #Q22.1 "Angeborene Pulmonalklappenstenose" and child exists false

// Paravalvulärer Abszess (nicht direkt gefunden)
* codes from system $icd10-gm where concept is-a #I51.8 "Sonstige ungenau bezeichnete Herzkrankheiten" and child exists false

// Vegetationen
* codes from system $icd10-gm where concept is-a #I33.0 "Akute und subakute infektiöse Endokarditis" and child exists false

 // Thrombusnachweis
* codes from system $icd10-gm where concept is-a #I82.9 "Embolie und Thrombose nicht näher bezeichneter Vene" and child exists false
* codes from system $icd10-gm where concept is-a #I80 "Thrombose, Phlebitis und Thrombophlebitis" and child exists false
* codes from system $icd10-gm where concept is-a #I81 "Pfortaderthrombose" and child exists false
* codes from system $icd10-gm where concept is-a #I82 "Sonstige venöse Embolie und Thrombose" and child exists false

// Ventrikuläre Hypertrophie
* codes from system $icd10-gm where concept is-a #I42.2 "Sonstige hypertrophische Kardiomyopathie" and child exists false
* codes from system $icd10-gm where concept is-a #I51.7 "Kardiomegalie" and child exists false
