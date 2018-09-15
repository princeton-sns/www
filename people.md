---
layout: page
title: People
permalink: /people
---

The SNS group is comprised of the following people. Prospective graduate
students should apply to Princeton’s PhD program; see the department’s
[admissions website](http://www.cs.princeton.edu/academics/gradpgm/) or [this
page](/applicants-interested-in-sns-group) for more information about joining
the SNS group. Princeton undergraduates are encouraged to contact us for
research opportunities.

## Group Leaders

{%- assign leaders = site.data.people | where: "type", "leader" -%}
{%- assign phds = site.data.people | where: "type", "phd" -%}

{% for person in leaders %}
![{{person.name}}]({{person.picture}}) [{{person.name}}]({{person.url}}) {{person.bio}}
{% endfor %}

## PhD Students

{% for person in phds %}
![{{person.name}}]({{person.picture}}) [{{person.name}}]({{person.url}}) {{person.bio}}
{% endfor %}
