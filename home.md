---
layout: page
title: Home
permalink: /
---

This is the home page of the Princeton S\* Network Systems (SNS) group within
Princeton’s [Computer Science Department](http://www.cs.princeton.edu/). The
undefined S\* — Scalable, Secure, Self-Organizing, Self-Managing,
Service-centric, Storage-based — characterizes the broad scope of our research.


## People

{%- assign leaders = site.data.people | where: "type", "leader" | where: "active", "true" | sort: "name" %}
{%- assign phds = site.data.people | where: "type", "phd" | where: "active", "true" | sort: "name" %}
{%- assign mscs = site.data.people | where: "type", "msc" | where: "active", "true" | sort: "name" %}

### Faculty

  {%- for person in leaders %}

  * [{{person.name}}]({{person.url}})

  {% endfor %}

### PhD Students

  {%- for person in phds %}
  * [{{person.name}}]({{person.url}})
  {% endfor %}

### Masters Students

  {%- for person in mscs %}
  * [{{person.name}}]({{person.url}})
  {% endfor %}
