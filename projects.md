---
layout: page
title: Projects
permalink: /projects
---

{%- assign active = site.data.projects | where: "active", true -%}
{%- assign previous = site.data.projects | where_exp: "item", "item.active != true" -%}

## Active Projects

{% for project in active %}
* [{{project.title}}](/projects/{{project.id}})
{% endfor %}

## Previous Projects

{% for project in previous %}
* [{{project.title}}](/projects/{{project.id}})
{% endfor %}

