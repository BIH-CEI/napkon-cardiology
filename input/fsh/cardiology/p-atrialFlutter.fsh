Profile: AtrialFlutter
Parent: Condition
Id: atrial-flutter
Title: "Atrial flutter"
Description: "Occurrence of Atrial flutter (disorder)"
* insert napkon-metadata(2021-10-29, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] = $sct#5370000   "Atrial flutter (disorder)"
* code 1..1 MS
* code from cardiology-diseases-codes (required)

Instance: atrial-flutter-instance
InstanceOf: atrial-flutter
Usage: #example
Title: "atrial-flutter-instance"
Description: "Example of a atrial flutter"
* code = $sct#5370000   "Atrial flutter (disorder)"
* subject = Reference(ExamplePatient)