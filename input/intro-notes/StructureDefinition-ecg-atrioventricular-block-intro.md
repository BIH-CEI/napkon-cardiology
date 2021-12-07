
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile encodes the finding of atrioventricular blocks from electrocardiographic (ECG) recordings.

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| Atrioventricular block | First degree / Second degree / Third degree / No block / No information available |
{:.grid}

The response options are encoded as follows:

| Response Option | `Observation.code` | `Observation.valueBoolean` |  `Observation.dataAbsentReason` |
| --------------- | ---------------- | :--------------: | :--------------: |
| First degree | `First degree atrioventricular block (disorder)` | `true` | - |
| Second degree | `Second degree atrioventricular block (disorder)` | `true` | - |
| Third degree | `Complete atrioventricular block (disorder)` | `true` | - |
| No block  | `Atrioventricular block (disorder)` | `false` | - |
| No information available | `Atrioventricular block (disorder)` | - | `#unknown` |
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
