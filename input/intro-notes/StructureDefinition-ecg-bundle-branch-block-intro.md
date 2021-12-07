
{% assign id = {{include.id}} %}
{% assign resource = site.data.structuredefinitions.[id] %}

### Guidance

This profile encodes the finding of bundle branch blocks from electrocardiographic (ECG) recordings.

| Parameter Case Report Form | Response Options |
| -------------------------- | ---------------- |
| Bundle branch block | Complete left / Complete right / Left anterior / Left posterior / Bifascicular / No block / No information available |
{:.grid}

The response options are encoded as follows:

| Response Option | `Observation.code` | `Observation.valueBoolean` |  `Observation.dataAbsentReason` |
| --------------- | ---------------- | :--------------: | :--------------: |
| Complete left | `Electrocardiographic complete right bundle branch block (finding)` | `true` | - |
| Complete right | `Electrocardiographic complete left bundle branch block (finding)` | `true` | - |
| Left anterior | `Left anterior fascicular block on electrocardiogram (finding)` | `true` | - |
| Left posterior | `Left posterior fascicular block on electrocardiogram (finding)` | `true` | - |
| Bifascicular | `Bifascicular block on electrocardiogram (finding)` | `true` | - |
| No block | [NAPKON Cardiology CodeSystem](CodeSystem-napkon-cardiology.html) `ECG: Bundle branch block` | `false` | - |
| No information available | [NAPKON Cardiology CodeSystem](CodeSystem-napkon-cardiology.html) `ECG: Bundle branch block` | - | `#unknown` |
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
