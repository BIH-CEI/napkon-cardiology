
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile encodes pre-existing chronic cardiologic disease conditions..

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| Does the patient suffer from a cardiovascular disease? | Atrial fibrillation / Atrial flutter / Condition after revascularization / Heart failure / Cardiomyopathy / Congenital heart defect |
{:.grid}

The response options are encoded using the following [SNOMED CT][SNOMEDCT] codes:

| Response Option | Code |
| ------ | ---- |
| Atrial fibrillation | `Atrial fibrillation (disorder)` |
| Atrial flutter | `Atrial flutter (disorder)` |
| Condition after revascularization | `History of coronary artery bypass grafting (situation)` |
| Heart failure | `Heart failure (disorder)` |
| Cardiomyopathy | `Cardiomyopathy (disorder)` |
| Congenital heart defect | `Congenital heart disease (disorder)` |
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
