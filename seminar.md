---
layout: page
title: Lunch Seminar
permalink: /seminar
---

{:.schedule}
{%- for seminar in site.data.seminars -%}
{% if seminar.speaker %}
{%- assign author = seminar.speaker -%}
1. <span class="date">{{ seminar.date | date: "%B %-d, %Y" }}</span>
   <span class="title">{{ seminar.title }}</span>  

   <span class="speaker">**Speaker: {% include name.html %}**</span>
   **Abstract**: {{ seminar.abstract }}
{% else %}
1. {:.nospeaker}
   <span class="date">{{ seminar.date | date: "%B %-d, %Y" }}</span>
   <span class="title">No speaker {{ seminar.reason }}</span>
{% endif %}
{% endfor %}

