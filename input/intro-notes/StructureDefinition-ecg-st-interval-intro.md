
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile encodes the ST interval from electrocardiography (ECG) waveforms.

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| QRS Interval | Normal / Elevation / Depression |
{:.grid}

The response options are encoded as follows:

| Response Option | `Observation.valueCodeableConcept` |
| ------ | ---- |
| Normal | `Electrocardiogram: ST interval normal (finding)` |
| Elevation | `ST segment elevation (finding)` |
| Depression | `ST segment depression (finding)` |
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
