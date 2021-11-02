Profile: SupraventricularPrematureBeats
Parent: Condition
Id: supraventricularPrematureBeats
Title: "SupraventricularPrematureBeats"
Description: "Occurrence of Supraventricular premature beats (disorder)"
* insert napkon-metadata(2021-11-01, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] = $sct#63593006  "Supraventricular premature beats (disorder)"
* code 1..1 MS
* code from cardiology-diseases-codes (required)

Instance: supraventricularPrematureBeats-instance
InstanceOf: supraventricularPrematureBeats
Usage: #example
Title: "Id: supraventricularPrematureBeats-instance"
Description: "Example of a supraventricularPrematureBeats"
* code = $sct#81681009  "Junctional premature beats (disorder)"
* subject = Reference(ExamplePatient)

