
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile is used to encode additional complications from a COVID-19 infection that are not captured by the [GECCO complications COVID-19 profile](https://simplifier.net/guide/GermanCoronaConsensusDataSet-ImplementationGuide/Complication).

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| Complications in the context of COVID-19  | Myocarditis / Complete atrioventricular block / Ventricular fibrillation / Cardiogenic shock / Viral co-infections / reactivation / Pulmonary bacterial superinfection / Pericardial effusion |
{:.grid}

| Response Option | `Condition.code` |
| ------ | ---- |
| Myocarditis | `Myocarditis (disorder)` |
| Complete atrioventricular block | `Complete atrioventricular block (disorder)` |
| Ventricular fibrillation | `Ventricular fibrillation (disorder)` |
| Cardiogenic shock | `Cardiogenic shock (disorder)` |
| Viral co-infections | `Viral disease (disorder)` |
| Pulmonary bacterial superinfection | `Bacterial respiratory infection (disorder)` |
| Pericardial effusion | `Pericardial effusion (disorder)` |
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
