---
layout: page
title: Lunch Seminar
permalink: /seminar/
---

{% capture now %}
{{'now' | date: '%s' | plus: 0 %}}
{% endcapture %}

{:.schedule}
{%- for seminar in site.data.seminars -%}

{% capture date %}
{{seminar.date | date: '%s' | plus: 0 %}}
{% endcapture %}
{% if date > now %}
{% if seminar.speaker %}
{%- assign author = seminar.speaker -%}
1. <span class="date">{{ seminar.date | date: "%B %-d, %Y" }}</span>
   <span class="title">{{ seminar.title }}</span>  

   <span class="speaker">**Speaker: {% include name.html %}**</span>
   **Abstract**: {{ seminar.abstract }}
{% else %}
1. {:.nospeaker}
   <span class="date">{{ seminar.date | date: "%B %-d, %Y" }}</span>
   <span class="title">No speaker: {{ seminar.reason }}</span>
{% endif %}
{% endif %}
{% endfor %}
