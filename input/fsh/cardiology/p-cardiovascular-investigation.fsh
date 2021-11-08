// Author: Sami Adnan, Gregor Lichtner
// Berlin Institute of Health | Charité
Profile: CardiovascularInvestigation
Parent: $mii-procedure
Id: cardiovascular-investigation
Title: "Cardiovascular investigation"
Description: "Defines constraints and methods on imaging procedures performed on the patient."
* insert napkon-metadata(2021-10-02, #draft, 0.1.0)
* category
  * coding[sct] = $sct#276341003 "Cardiovascular investigation (procedure)"
* code
  * coding[sct] from CardiologyImagingCodes (required)

Instance: CardiovascularInvestigation
InstanceOf: cardiovascular-investigation
Usage: #example
Title: "Cardiovascular Investigation"
Description: "Example of a Cardiovascular Investigation"
* status = #completed
* code.coding[sct] = $sct#433236007 "Transthoracic echocardiography (procedure)"
* subject = Reference(ExamplePatient)
* performedDateTime = "2021-01-11"
