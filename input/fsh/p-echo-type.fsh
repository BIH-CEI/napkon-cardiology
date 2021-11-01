// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

// Profile

Profile: TypeOfEchocardiography
Parent: Procedure
Id: type-echocardiography
Title: "Type of echocardiography"
Description: "Kind of performed echocardiography in the context of the cardiology module"

* insert napkon-metadata(2021-10-22, #draft, 0.1.0)

* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains sct 1..1
* category.coding[sct] = $sct#40701008 "Ultrasound procedure on cardiovascular system (procedure)"

/* Alternative:
    * category.coding[sct] = $sct#108283006 "Cardiovascular investigation (procedure)"
    = Parent von $sct#40701008 "Echocardiography (procedure)"
*/

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains sct 1..1
* code.coding[sct] from EchocardiographicProcedures

* performed[x] MS
* performed[x] 1..1
* performed[x] only dateTime

* subject MS
* subject 1..1
* subject only Reference(Patient)

// Instance

Instance: instance-echocardiographic
InstanceOf: TypeOfEchocardiography
Usage: #example
Title: "Instance of profile echocardiography type in the context of cardiology module"
Description: "Example of an echocardiography type"
* status = #completed
* code = $sct#105376000 "Transesophageal echocardiography (procedure)"
* subject = Reference(ExamplePatient)
* performedDateTime = "2021-10-22T13:06:00+02:00"
