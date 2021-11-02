Profile: CongenitalSeptalDefect 
Parent: Condition
Id: congenitalSeptalDefect
Title: "CongenitalSeptalDefect"
Description: "Occurrence of Congenital septal defect of heart (disorder)"
* insert napkon-metadata(2021-11-01, #draft, 0.1.0)
* category
  * coding ^slicing.discriminator[0].type = #pattern
  * coding ^slicing.discriminator[0].path = "$this"
  * coding ^slicing.rules = #open
  * coding contains sct 1..1
  * coding[sct] = $sct#59494005 "Congenital septal defect of heart (disorder)"
* code 1..1 MS
* code from cardiology-diseases-codes (required)

Instance: congenitalSeptalDefect-instance
InstanceOf: congenitalSeptalDefect
Usage: #example
Title: "congenitalSeptalDefect-instance"
Description: "Example of a congenitalSeptalDefect"
* code = $sct#253415001  "Atrioventricular septal defect - isolated ventricular component (disorder)"
* subject = Reference(ExamplePatient)

