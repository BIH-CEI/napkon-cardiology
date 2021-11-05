Alias: $gecco-base-condition = https://www.netzwerk-universitaetsmedizin.de/fhir/StructureDefinition/gecco-base-condition
Alias : $verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status

Profile:  HeartValveFindings
Id: heart-valve-findings
Parent: $gecco-base-condition
Title: "Heart Valve Findings"
Description: "Occurrence of heart valve findings"
* insert napkon-metadata(2021-11-03, #draft, 0.1.0)
* extension contains ext-heart-valve-findings named HeartValveFingingsExt 0..1 MS
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] = $sct#394579002 "Cardiology (qualifier value)"
* code 1..1 MS
* code from heart-valve-findings-codes (required)

// for disease code
Instance: heart-valve-findings-instance
InstanceOf: heart-valve-findings
Usage: #example
Title: "heart-valve-findings-instance"
Description: "Example of Heart Valve Findings"
* code = $sct#56786000	"Pulmonic valve stenosis (disorder)" 
* subject = Reference(ExamplePatient)
* recordedDate = "2021"
* verificationStatus.coding[conditionVerificationStatus] = $verificationStatus#confirmed
* verificationStatus.coding[snomed] = $sct#410605003	"Confirmed present (qualifier value)"


// for responses of yes
Instance: heart-valve-findings-instance2
InstanceOf: heart-valve-findings
Usage: #example
Title: "heart-valve-findings-instance2"
Description: "Example of Heart Valve Findings"
* extension[HeartValveFingingsExt].valueCode = $sct#60573004	"Progressive  (qualifier value)"
* code = $sct#56786000	"Pulmonic valve stenosis (disorder)"
* subject = Reference(ExamplePatient)
* recordedDate = "2021"
* verificationStatus.coding[conditionVerificationStatus] = $verificationStatus#confirmed
* verificationStatus.coding[snomed] = $sct#410605003	"Confirmed present (qualifier value)"

// one instance for no explicility excluded
Instance: heart-valve-findings-instance3
InstanceOf: heart-valve-findings
Usage: #example
Title: "heart-valve-findings-instance3"
Description: "Example of Heart Valve Findings"
* extension[HeartValveFingingsExt].valueCode = $sct#49915006	 "Definitely NOT present (qualifier value)" 
* code = $sct#56786000	"Pulmonic valve stenosis (disorder)" 
* subject = Reference(ExamplePatient)
* recordedDate = "2021"
* verificationStatus.coding[conditionVerificationStatus] = $verificationStatus#refuted
* verificationStatus.coding[snomed] = $sct#410594000	"Definitely NOT present (qualifier value)"


// one instance for unknown
Instance: heart-valve-findings-instance4
InstanceOf: heart-valve-findings
Usage: #example
Title: "heart-valve-findings-instance4"
Description: "Example of Heart Valve Findings"
* extension[HeartValveFingingsExt].valueCode = $sct#91434003 "Unknown (qualifier value)"  
* code = $sct#56786000	"Pulmonic valve stenosis (disorder)" 
* subject = Reference(ExamplePatient)
* recordedDate = "2021"
* modifierExtension.url = "https://www.netzwerk-universitaetsmedizin.de/fhir/StructureDefinition/uncertainty-of-presence"
* modifierExtension.valueCodeableConcept = $sct#261665006 "Unknown (qualifier value)"
* modifierExtension.valueCodeableConcept.text = "Presence of condition is unknown."