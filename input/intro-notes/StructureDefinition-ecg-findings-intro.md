
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile encodes additionals findings from electrocardiography (ECG). The following findings are defined:

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| Sinus rhythm | Yes / No / No information available |
| Premature ventricular contractions | Yes / No / No information available |
| Atrial ectopics | Yes / No / No information available |
| Inverted T wave | Yes / No / No information available |
| Low QRS voltage | Yes / No / No information available |
{:.grid}

The following codes are used for the different findings:

| Finding | `Observation.code` |
| ------- | ---------------- |
| Sinus rhythm | `Sinus rhythm (finding)` |
| Premature ventricular contractions | `Electrocardiogram: premature ventricular contractions (finding)` |
| Atrial ectopics | `Electrocardiographic atrial ectopics (finding)` |
| Inverted T wave | `Inverted T wave (finding)` |
| Low QRS voltage | `Low QRS voltages (finding)` |
{:.grid}

The response options are encoded as follows:

| Response Option | `Observation.valueBoolean` |  `Observation.dataAbsentReason` |
| --------------- | :--------------: | :--------------: |
| Yes | `true` | - |
| No | `false` | - |
| No information available | - | `#unknown` |
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
