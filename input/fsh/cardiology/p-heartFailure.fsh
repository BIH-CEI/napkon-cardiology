Profile: HeartFailure
Parent: Condition
Id: heart-failure
Title: "Heart failure"
Description: "Occurrence of Heart failure (disorder)"
* insert napkon-metadata(2021-10-29, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] = $sct#84114007  "Heart failure (disorder)"
* code 1..1 MS
* code from cardiology-diseases-codes (required)

Instance: heart-failure-instance
InstanceOf: heart-failure
Usage: #example
Title: "heart-failure-instance"
Description: "Example of a heart failure"
* code = $sct#84114007  "Heart failure (disorder)"
* subject = Reference(ExamplePatient)