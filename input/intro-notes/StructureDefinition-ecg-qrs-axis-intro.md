
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| QRS Axis Type | overturned left type / left type / indifferent type / steep type / right type / overturned right type / S(I)S(II)S(III) type / S(I)Q(III) type |
{:.grid}

All response options are defined in the [NAPKON Cardiology CodeSystem](CodeSystem-napkon-cardiology.html).

| Response Option | `Observation.code` |
| ------ | ---- |
| overturned left type | `#ecg-qrs-axis-overturned-left-type "ECG: QRS axis overturned left type"` |
| left type | `#ecg-qrs-axis-left-type "ECG: QRS axis left type"` |
| indifferent type | `#ecg-qrs-axis-indifferent-type "ECG: QRS axis indifferent type"` |
| steep type | `#ecg-qrs-axis-steep-type "ECG: QRS axis steep type"` |
| right type | `#ecg-qrs-axis-right-type "ECG: QRS axis right type" ` |
| overturned right type | `#ecg-qrs-axis-overturned-right-type "ECG: QRS axis overturned right type"` |
| S(I)S(II)S(III) type | `#ecg-qrs-axis-si-sii-siii-type "ECG: QRS axis S(I)S(II)S(III) type"` |
| S(I)Q(III) type | `#ecg-qrs-axis-si-qiii-type "ECG: QRS axis S(I)Q(III) type"` |
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
