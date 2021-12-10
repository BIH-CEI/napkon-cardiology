// Author: Gregor Lichtner
// Charité – Universitätsmedizin Berlin
Profile: LeftVentricularEjectionFraction
Parent: Observation
Id: left-ventricular-ejection-fraction
Title: "Left Ventricular Ejection Fraction"
Description: "Left Ventricular Ejection Fraction in %"
* insert napkon-metadata(2021-08-10, #draft, 0.1.0)
* insert mii-patient-reference
* obeys value-or-data-absent-reason
* status MS
* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains imaging 1..1
* category[imaging] = $cs-observation-category#imaging "Imaging"
* code 1..1 MS
  * coding 1..*
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding contains
    loinc 1..* and snomed 0..*
  * coding[loinc] = $loinc#10230-1 "Left ventricular Ejection fraction"
  * coding[loinc].system 1..
  * coding[loinc].code 1..
  * coding[snomed] = $sct#250908004 "Left ventricular ejection fraction (observable entity)"
  * coding[snomed].system 1..
  * coding[snomed].code 1..
* insert value-quantity(#%)
* interpretation 0..1 MS
* interpretation from LVEFInterpretation (required)
* effective[x] 1..1 MS



Instance: left-ventricular-ejection-fraction
InstanceOf: left-ventricular-ejection-fraction
Usage: #example
Title: "Example of a left ventricular ejection fraction observation"
Description: "Example of left ventricular ejection fraction"
* valueQuantity.value = 25
* status = #final
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2015-02-07T13:28:17-05:00"
