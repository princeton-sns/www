---
layout: page
title: Publications
permalink: /publications
---

{% comment %}Collect all publications into a single array from the projects database{% endcomment %} 
{%- assign pubs = site.data.projects | map: "publications" -%}
{%- assign publications = nil -%}
{%- for ps in pubs -%}
{%- assign publications = publications | concat: ps -%}
{%- endfor -%}


{%- assign publications = publications | sort: "year" | reverse -%}
{%- assign year = publications | map: "year" | first -%}

## {{year}}

{% for publication in publications %}
{%- if publication.year != year -%}
{%- assign year = publication.year -%}
## {{year}}
{% endif %}

  1. {{ publication.title }}  
     {{ publication.people | array_to_sentence_string }}  
     {{ publication.venue }}  
     [Paper]({{ publication.pdf }})

{% endfor %}
