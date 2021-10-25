Profile: ImagingProcedure
Parent: Procedure
Id: imaging-procedure
Title: "Imaging Procedure"
Description: "Defines constraints and methods on imaging procedures performed on the patient."
* insert napkon-metadata(2021-10-02, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] = $sct#71388002 "Procedure (procedure)"

* code
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] from CardiologyImagingCodes (required)

Instance: imaging-procedure-instance
InstanceOf: imaging-procedure
Usage: #example
Title: "imaging-procedure-instance"
Description: "Example of a imaging procedure"
* status = #completed
* code.coding[sct] = $sct#433236007 "Transthoracic echocardiography (procedure)"
* subject = Reference(ExamplePatient)
