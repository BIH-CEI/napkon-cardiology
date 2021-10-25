// Author: Sami Adnan
// Berlin Institute of Health | Charité
// This is an FSH profiling file under development. See sushi documentation for usage.

// ValueSet
ValueSet: CardiologyImagingCodes
Id: cardiology-imaging-procedures
Title: "Cardiology Imaging Procedures ValueSet"
Description:  "Imaging procedures related to cardiology"
* insert napkon-metadata(2021-09-24, #draft, 0.1.0)

* ^url = "https://www.netzwerk-universitaetsmedizin.de/fhir/ValueSet/EcgCodes"
* ^publisher = "Berlin Institute of Health | Charité"

* ^compose.include[0].system = "http://snomed.info/sct"
* ^compose.include[=].concept[0].code = #268400002
* ^compose.include[=].concept[=].display = "12 lead electrocardiogram (procedure)"
* ^compose.include[=].concept[=].designation.language = #de-DE
* ^compose.include[=].concept[=].designation.use = $sct#900000000000013009 "Synonym"
* ^compose.include[=].concept[=].designation.value = "Durchgeführte 12-Kanal-EKG-Untersuchung"

* ^compose.include[1].system = "http://snomed.info/sct"
* ^compose.include[=].concept[+].code = #40701008
* ^compose.include[=].concept[=].display = "Echocardiography (procedure)"
* ^compose.include[=].concept[=].designation.language = #de-DE
* ^compose.include[=].concept[=].designation.use = $sct#900000000000013009 "Synonym"
* ^compose.include[=].concept[=].designation.value = "Durchgeführte Echokardiographie"

* ^compose.include[=].concept[+].code = #433236007
* ^compose.include[=].concept[=].display = "Transthoracic echocardiography (procedure)"
* ^compose.include[=].concept[=].designation.language = #de-DE
* ^compose.include[=].concept[=].designation.use = $sct#900000000000013009 "Synonym"
* ^compose.include[=].concept[=].designation.value = "Transthorakale Echokardiographie"

* include codes from system $sct where concept descendent-of #71388002 "Procedure (procedure)" // redundency for Procedures
