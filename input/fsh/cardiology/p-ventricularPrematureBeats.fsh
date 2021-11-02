Profile: VentricularPrematureBeats
Parent: Condition
Id: ventricularPrematureBeats
Title: "VentricularPrematureBeats"
Description: "Occurrence of Ventricular premature beats (disorder)"
* insert napkon-metadata(2021-11-01, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] = $sct#17338001  "Ventricular premature beats (disorder)"
* code 1..1 MS
* code from cardiology-diseases-codes (required)

Instance: ventricularPrematureBeats-instance
InstanceOf: ventricularPrematureBeats
Usage: #example
Title: "ventricularPrematureBeats-instance"
Description: "Example of a ventricularPrematureBeats"
* code = $sct#251176006  "Multiple premature ventricular complexes (disorder)"
* subject = Reference(ExamplePatient)

