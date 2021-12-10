// Author: Gregor Lichtner
// Charité – Universitätsmedizin Berlin
Profile: TricuspidAnnularPlaneSystolicExcursion
Parent: Observation
Id: tricuspid-annular-plane-systolic-excursion
Title: "Tricuspid Annular Plane Systolic Excursion"
Description: "Tricuspid Annular Plane Systolic Excursion in cm"
* insert napkon-metadata(2021-08-10, #active, 1.0.0)
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
    loinc 1..*
  * coding[loinc] = $loinc#77903-3 "Tricuspid valve annulus Excursion distance during systole by US.M-mode"
  * coding[loinc].system 1..
  * coding[loinc].code 1..
* insert value-quantity(#cm)
* effective[x] 1..1 MS

Instance: tricuspid-annular-plane-systolic-excursion
InstanceOf: tricuspid-annular-plane-systolic-excursion
Usage: #example
Title: "Example of a tricuspid annular plane systolic excursion observation"
Description: "Example of tricuspid annular plane systolic excursion"
* valueQuantity.value = 1.2
* status = #final
* subject = Reference(ExamplePatient)
* interpretation = $cs-observation-interpretation#H "High"
* effectiveDateTime = "2015-02-07T13:28:17-05:00"
