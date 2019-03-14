---
layout: page
title: People
permalink: /people
---

{%- assign leaders = site.data.people | where: "type", "leader" | where: "active", "true" | sort: "name" %}
{%- assign phds = site.data.people | where: "type", "phd" | where: "active", "true" | sort: "name" %}
{%- assign mscs = site.data.people | where: "type", "msc" | where: "active", "true" | sort: "name" %}
{%- assign alumni = site.data.people | where: "active", "false" | sort: "name" | reverse | sort: "graduated" | reverse %}

## Faculty

{:.people}
  {%- for person in leaders %}
  * ![]({{person.picture}}) [{{person.first_name}} {{person.last_name}}]({{person.url}})
  {% endfor %}

## Current Students

{:.people}
  {%- for person in phds %}
  * ![]({{person.picture}}) [{{person.first_name}} {{person.last_name}}]({{person.url}})
  {% endfor %}
  {%- for person in mscs %}
  * ![]({{person.picture}}) [{{person.first_name}} {{person.last_name}}]({{person.url}})
  {% endfor %}

## Alumni

{:.people}
  {%- for person in alumni %}
  * ![]({{person.picture}}) [{{person.first_name}} {{person.last_name}}]({{person.url}})

    {{person.graduated}} &rarr; {{person.now}}
  {% endfor %}

