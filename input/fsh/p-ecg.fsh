// Author: Thomas Haese
// Charité – Universitätsmedizin Berlin

// Profile

Profile: Electrocardiographic
Parent: Procedure
Id: electrocardiographic
Title: "Performing an electrocardiographic"
Description: "Performing an electrocardiographic in the context of the cardiology module"

* insert napkon-metadata(2021-10-22, #draft, 0.1.0)

* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains sct 1..1
* category.coding[sct] = $sct#29303009 "Electrocardiographic procedure (procedure)"

/* Alternative:
    * category.coding[sct] = $sct#276341003 "Cardiovascular investigation (procedure)"
    = Parent von $sct#29303009 "Electrocardiographic procedure (procedure)"
*/

* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains sct 1..1
* code.coding[sct] = $sct#268400002	"12 lead electrocardiogram (procedure)"

* performed[x] MS
* performed[x] 1..1
* performed[x] only dateTime

* subject MS
* subject 1..1
* subject only Reference(Patient)

// Instance

Instance: instance-electrocardiographic
InstanceOf: electrocardiographic
Usage: #example
Title: "Instance of profile electrocardiographic in the context of cardiology module"
Description: "Example of an electrocardiographic"
* status = #completed
* subject = Reference(ExamplePatient)
* performedDateTime = "2021-10-22T13:06:00+02:00"

