// Author: Gregor Lichtner
// Charité – Universitätsmedizin Berlin
Profile: TricuspidAnnularPlaneSystolicExcursion
Parent: $gecco-vital-signs-base
Id: tricuspid-annular-plane-systolic-excursion
Title: "Tricuspid Annular Plane Systolic Excursion"
Description: "Tricuspid Annular Plane Systolic Excursion in cm"
* insert napkon-metadata(2021-08-10, #draft, 0.1.0)
* insert mii-patient-reference
* code 1..1
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
* interpretation 1..1 MS
* interpretation from LVEFInterpretation (required)

Instance: tricuspid-annular-plane-systolic-excursion
InstanceOf: tricuspid-annular-plane-systolic-excursion
Usage: #example
Title: "Example of a tricuspid annular plane systolic excursion observation"
Description: "Example of tricuspid annular plane systolic excursion"
* valueQuantity.value = 1.2
* status = #final
* subject = Reference(ExamplePatient)
* interpretation = $cs-observation-interpretation#H "High" /
* effectiveDateTime = "2015-02-07T13:28:17-05:00"
