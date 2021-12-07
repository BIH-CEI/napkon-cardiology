
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile is used to indicate both electrocardiographic and echocardiographic investigations.

| Parameter Case Report Form | FHIR Resource Attribute |
| -------------------------- | ----------------------- |
| Type of investigation | `Procedure.code` |
| Status of investigation | `Procedure.status` |
| Date of investigation | `Procedure.performedDateTime` |
{:.grid}

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| 12-lead ECG examination performed | Yes / No / No information available |
| Echocardiography performed | Yes / No / No information available |
| Type of echocardiography performed | Transthoracic / Transesophageal / No information available |
{:.grid}

The type of investigation is coded as follows:

| Response Option | `Procedure.code` |
| ------ | ---- |
| 12 lead electrocardiogram | `12 lead electrocardiogram (procedure)` |
| Echocardiography | `Echocardiography (procedure)` |
| Transthoracic echocardiography | `Transthoracic echocardiography (procedure)` |
| Transesophageal echocardiography | `Transesophageal echocardiography (procedure)` |
{:.grid}

The status of the investigation is coded as follows:

| Response Option | `Procedure.status` |
| ------ | ---- |
| Yes (procedure performed) | `#completed` |
| No (procedure not performed) | `#not-done` |
| No information available | `#unknown` |
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
