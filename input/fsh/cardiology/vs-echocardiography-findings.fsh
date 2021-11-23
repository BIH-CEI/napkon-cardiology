// Author: Larissa Röhrig, Gregor Lichtner
// Berlin Institute of Health | Charité
ValueSet: EchocardiographyFindings
Id: echocardiography-findings
Title: "Echocardiography Findings"
Description: "Codes for Echocardiography Findings"
* insert napkon-metadata(2021-11-17, #draft, 0.1.0)
 // Regionale Wandbewegungsstörungen
* codes from system $sct where concept is-a #61932003 "Paradoxical cardiac wall motion (finding)"
* codes from system $sct where concept is-a #429750003 "Left ventricular wall motion abnormality (finding)"

* codes from system $sct where concept is-a #373945007 "Pericardial effusion (disorder)" // Perikarderguss
* codes from system $sct where concept is-a #368009 "Heart valve disorder (disorder)" // Klappenvitien
* codes from system $sct where concept is-a #60234000 "Aortic valve regurgitation (disorder)" // Aortenklappeninsuffizienz
* codes from system $sct where concept is-a #60573004 "Aortic valve stenosis (disorder)" // Aortenklappenstenose
* codes from system $sct where concept is-a #48724000 "Mitral valve regurgitation (disorder)" // Mitralklappeninsuffizienz
* codes from system $sct where concept is-a #79619009 "Mitral valve stenosis (disorder)" // Mitralklappenstenose
* codes from system $sct where concept is-a #111287006 "Tricuspid valve regurgitation (disorder)" // Trikuspidalklappeninsuffizienz
* codes from system $sct where concept is-a #49915006 "Tricuspid valve stenosis (disorder)" // Trikuspidalklappenstenose
* codes from system $sct where concept is-a #91434003 "Pulmonic valve regurgitation (disorder)" // Pulmonalklappeninsuffizienz
* codes from system $sct where concept is-a #56786000 "Pulmonic valve stenosis (disorder)" // Pulmonalklappenstenose
* codes from system $sct where concept is-a #425548001 "Abscess of heart (disorder)" // Paravalvulärer Abszess (nicht direkt gefunden)
* codes from system $sct where concept is-a #459055004 "Vegetation of heart (disorder)" // Vegetationen
* codes from system $sct where concept is-a #439127006 "Thrombosis (disorder)" // Thrombusnachweis

// Ventrikuläre Hypertrophie
* $sct#55827005 "Left ventricular hypertrophy (disorder)" // linksventrikulär
* $sct#89792004 "Right ventricular hypertrophy (disorder)" // rechtsventrikulär
* codes from system $sct where concept is-a #266249003 "Ventricular hypertrophy (disorder)"
