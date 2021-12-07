
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile encodes the findings of an echocardiography.

| Parameter Case Report Form | Response Option |
| -------------------------- | --------------- |
| Regional wall motion abnormalities | Yes, new / Yes, progresive / Yes, stable / Yes, regressive / Yes, disease course unknown / No / Unknown |
| Pericardial effusion | Yes, new / Yes, progresive / Yes, stable / Yes, regressive / Yes, disease course unknown / No / Unknown |
| Heart valve disorder | Yes, new / Yes, progresive / Yes, stable / Yes, regressive / Yes, disease course unknown / No / Unknown |
| Aortic valve regurgitation | Yes, new / Yes, progresive / Yes, stable / Yes, regressive / Yes, disease course unknown / No / Unknown |
| Aortic valve stenosis | Yes, new / Yes, progresive / Yes, stable / Yes, regressive / Yes, disease course unknown / No / Unknown |
| Mitral valve regurgitation | Yes, new / Yes, progresive / Yes, stable / Yes, regressive / Yes, disease course unknown / No / Unknown |
| Mitral valve stenosis | Yes, new / Yes, progresive / Yes, stable / Yes, regressive / Yes, disease course unknown / No / Unknown |
| Tricuspid valve regurgitation | Yes, new / Yes, progresive / Yes, stable / Yes, regressive / Yes, disease course unknown / No / Unknown |
| Tricuspid valve stenosis | Yes, new / Yes, progresive / Yes, stable / Yes, regressive / Yes, disease course unknown / No / Unknown |
| Pulmonic valve regurgitation | Yes, new / Yes, progresive / Yes, stable / Yes, regressive / Yes, disease course unknown / No / Unknown |
| Pulmonic valve stenosis | Yes, new / Yes, progresive / Yes, stable / Yes, regressive / Yes, disease course unknown / No / Unknown |
| Abscess of heart | Yes, new / Yes, progresive / Yes, stable / Yes, regressive / Yes, disease course unknown / No / Unknown |
| Vegetation of heart | Yes, new / Yes, progresive / Yes, stable / Yes, regressive / Yes, disease course unknown / No / Unknown |
| Thrombosis | Yes, new / Yes, progresive / Yes, stable / Yes, regressive / Yes, disease course unknown / No / Unknown |
| Left ventricular hypertrophy | Yes, new / Yes, progresive / Yes, stable / Yes, regressive / Yes, disease course unknown / No / Unknown |
| Right ventricular hypertrophy | Yes, new / Yes, progresive / Yes, stable / Yes, regressive / Yes, disease course unknown / No / Unknown |
| Ventricular hypertrophy | Yes, new / Yes, progresive / Yes, stable / Yes, regressive / Yes, disease course unknown / No / Unknown |
{:.grid}

The findings are encoded using the following [SNOMED CT][SNOMEDCT] codes (see also the corresponding [ValueSet](ValueSet-echocardiography-findings.html). For ICD-10 GM codes, see the corresponding [ValueSet](ValueSet-echocardiography-findings-icd.html).

| Echocardiography finding | `Observation.code` |
| -------------------------- | -------------------- |
| Paradoxical cardiac wall motion | `Paradoxical cardiac wall motion (finding)` |
| Left ventricular wall motion abnormality | `Left ventricular wall motion abnormality (finding)` |
| Pericardial effusion | `Pericardial effusion (disorder)` |
| Heart valve disorder | `Heart valve disorder (disorder)` |
| Aortic valve regurgitation | `Aortic valve regurgitation (disorder)` |
| Aortic valve stenosis | `Aortic valve stenosis (disorder)` |
| Mitral valve regurgitation | `Mitral valve regurgitation (disorder)` |
| Mitral valve stenosis | `Mitral valve stenosis (disorder)` |
| Tricuspid valve regurgitation | `Tricuspid valve regurgitation (disorder)` |
| Tricuspid valve stenosis | `Tricuspid valve stenosis (disorder)` |
| Pulmonic valve regurgitation | `Pulmonic valve regurgitation (disorder)` |
| Pulmonic valve stenosis | `Pulmonic valve stenosis (disorder)` |
| Abscess of heart | `Abscess of heart (disorder)` |
| Vegetation of heart | `Vegetation of heart (disorder)` |
| Thrombosis | `Thrombosis (disorder)` |
| Left ventricular hypertrophy | `Left ventricular hypertrophy (disorder)` |
| Right ventricular hypertrophy | `Right ventricular hypertrophy (disorder)` |
| Ventricular hypertrophy | `Ventricular hypertrophy (disorder)` |
{:.grid}

The response options are encoded using a combination of `Condition.verificationStatus` for the presence/absence of the condition, the [diseaseCourse extension][DiseaseCourse] and the [GECCO uncertaintyOfPresence modifier extension][uncertaintyOfPresence] as follows:

| Response Option | `Condition.verificationStatus` | `Condition.extension[diseaseCourse]` | `GeccoBaseCondition.modifierExtension[uncertaintyOfPresence]` |
| ------ | :----: | :----: | :----: |
| Yes, new | `#confirmed` | `New (qualifier value)` | - |
| Yes, progressive | `#confirmed` | `Progressive (qualifier value)` | - |
| Yes, stable | `#confirmed` | `Stable  (qualifier value)` | - |
| Yes, regressive | `#confirmed` | `Regressive (qualifier value)` | - |
| Yes, disease course unknown | `#confirmed` | `New (qualifier value)` | - |
| No | `#refuted` | - | - |
| Unknown | - | - | _extension set_ |
{:.grid}


{% capture resource_inheritance %}
This profile of a FHIR {{resource.type}} is derived from the [{{resource.base | split: '/' | last}}]({{resource.base}})
{% if resource.base contains 'https://www.medizininformatik-initiative.de/fhir' %}
 profile of the [Medical Informatics Initiative (MII)][MII].
{% elsif resource.base contains 'https://www.netzwerk-universitaetsmedizin.de/fhir' %}
 profile of the [German Corona Consensus Dataset (GECCO)][GECCO].
{% else %}
 FHIR resource.
{% endif %}
{% endcapture %}

{{ resource_inheritance | strip_newlines }}

{% if resource.base == 'https://www.netzwerk-universitaetsmedizin.de/fhir/StructureDefinition/gecco-base-condition' %}
{% include condition-gecco-answer-options.md %}
{% endif %}

{% include link-list.md %}
