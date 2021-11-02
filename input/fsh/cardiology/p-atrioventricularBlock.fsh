Profile: AtrioventricularBlock
Parent: Condition
Id: atrioventricularBlock
Title: "AtrioventricularBlock"
Description: "Occurrence of Atrioventricular block (disorder)"
* insert napkon-metadata(2021-11-01, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] = $sct#233917008 "Atrioventricular block (disorder)" 
* code 1..1 MS
* code from cardiology-diseases-codes (required)

Instance: atrioventricularBlock-instance
InstanceOf: atrioventricularBlock
Usage: #example
Title: "atrioventricularBlock-instance"
Description: "Example of a atrioventricularBlock"
* code = $sct#472809000  "Atrioventricular block due to endocarditis (disorder)"
* subject = Reference(ExamplePatient)

