
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile encodes the left ventricular ejection fraction (LVEF).

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| Left ventricular ejection fraction | _Actual value [%]_ + Low grade / medium grade / high grade |
{:.grid}

The grade of the ejection fraction is encoded in `Observation.interpration` using the following codes from the [ObservationInterpretation CodeSystem](http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation):

| Response Option | `Observation.interpretation` |
| ------ | ---- |
| Low grade | `#L "Low" ` |
| Medium grade | `#N "Normal"` |
| High grade | `#H "High"` |
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
