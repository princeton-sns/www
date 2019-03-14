---
layout: page
permalink: /
---

This is the home page of the Princeton S\* Network Systems (SNS) group within
Princeton’s [Computer Science Department](http://www.cs.princeton.edu/). The
undefined S\* — Scalable, Secure, Self-Organizing, Self-Managing,
Service-centric, Storage-based — characterizes the broad scope of our research.


{%- assign leaders = site.data.people | where: "type", "leader" | where: "active", "true" | sort: "last_name" %}
{%- assign phds = site.data.people | where: "type", "phd" | where: "active", "true" | sort: "last_name" %}
{%- assign mscs = site.data.people | where: "type", "msc" | where: "active", "true" | sort: "last_name" %}

### Faculty

{:.people}
  {%- for person in leaders %}
  * ![]({{person.picture}}) [{{person.first_name}} {{person.last_name}}]({{person.url}})
  {% endfor %}

### PhD Students

{:.people}
  {%- for person in phds %}
  * ![]({{person.picture}}) [{{person.first_name}} {{person.last_name}}]({{person.url}})
  {% endfor %}

### Masters Students

{:.people}
  {%- for person in mscs %}
  * ![]({{person.picture}}) [{{person.first_name}} {{person.last_name}}]({{person.url}})
  {% endfor %}

