Profile: CongenitalHeartDisease
Parent: Condition
Id: congenitalHeartDisease
Title: "congenitalHeartDisease"
Description: "Occurrence of Congenital heart disease (disorder)"
* insert napkon-metadata(2021-11-01, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] = $sct#13213009  "Congenital heart disease (disorder)"
* code 1..1 MS
* code from cardiology-diseases-codes (required)

Instance: congenitalHeartDisease-instance
InstanceOf: congenitalHeartDisease
Usage: #example
Title: "congenitalHeartDisease-instance"
Description: "Example of a congenitalHeartDisease"
* code = $sct#444851003  "Bifid apex of heart (disorder)"
* subject = Reference(ExamplePatient)

