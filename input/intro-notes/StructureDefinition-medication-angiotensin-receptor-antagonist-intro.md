
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile encodes the application (intake) of angiotensin II receptor antagonists, also known as AT1-receptor blockers.

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| Intake of AT1-receptor blockers | Yes / No / Unknown / Cancelled |
{:.grid}


The response options are encoded as follows:

| Response Option | `MedicationStatement.status` |
| ------ | ---- |
| Yes | `#active` or `#completed` |
| No | `#not-taken` |
| Unknown | `#unknown` |
| Cancelled | `#stopped` |
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
