---
layout: page
title: People
permalink: /people
---

{%- assign leaders = site.data.people | where: "type", "leader" | where: "active", "true" | sort: "name" %}
{%- assign phds = site.data.people | where: "type", "phd" | where: "active", "true" | sort: "name" %}
{%- assign mscs = site.data.people | where: "type", "msc" | where: "active", "true" | sort: "name" %}
{%- assign alumns = site.data.people | where: "active", "false" | sort: "name" | sort: "graduated" %}

## Faculty

  {%- for person in leaders %}

  * [{{person.name}}]({{person.url}})

  {% endfor %}

## Current Students

  {%- for person in phds %}
  * [{{person.name}}]({{person.url}}) (PhD)
  {% endfor %}

  {%- for person in mscs %}
  * [{{person.name}}]({{person.url}}) (Masters)
  {% endfor %}

## Alumni

  {%- for person in alumns %}
  * [{{person.name}}]({{person.url}}) ({{person.graduated}}) &rarr; {{person.now}}
  {% endfor %}

