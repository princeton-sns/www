---
layout: page
title: Projects
permalink: /projects/
---

{%- assign active = site.data.projects | where: "active", true -%}
{%- assign previous = site.data.projects | where_exp: "item", "item.active != true" -%}

## Active Projects

{% for project in active %}
{% if project.id %}
* [{{project.title}}](/projects/{{project.id}})
{% endif %}
{% endfor %}

## Previous Projects

{% for project in previous %}
{% if project.id %}
* [{{project.title}}](/projects/{{project.id}})
{% endif %}
{% endfor %}

