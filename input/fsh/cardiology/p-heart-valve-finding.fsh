Profile:  HeartValveFindings
Parent: Condition
Id: heart-valve-findings
Title: "Heart Valve Findings"
Description: "Occurrence of heart valve findings"
* insert napkon-metadata(2021-11-03, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] = $sct#394579002 "Cardiology (qualifier value)"
* code 1..1 MS
* code from heart-valve-findings-codes (required)
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from heart-valve-findings-codes (required)

Instance: heart-valve-findings-instance
InstanceOf: heart-valve-findings
Usage: #example
Title: "heart-valve-findings-instance"
Description: "Example of Heart Valve Findings"
* code = $sct#56786000	"Pulmonic valve stenosis (disorder)" 
* subject = Reference(ExamplePatient)