---
layout: page
title: Publications
permalink: /publications
---

{%- assign publications = site.data.publications | sort: "year" | reverse -%}
{%- assign year = publications | map: "year" | first -%}

## {{year}}

{% for publication in publications %}
{:.publications}
{% if publication.year != year %}
{%- assign year = publication.year -%}
## {{year}}
{% endif %}

  1. ### {{ publication.title }}

     {% assign authors = publication.people %}
     {:.authors}
     {% include author_list.html %}.  

     {:.venue}
     {{ publication.venue }}  

     {% if publication.paper %}
     \[[paper]({{ publication.paper }})\]
     {%- endif -%}
     {%- if publication.presentation -%}
     \[[presentation]({{ publication.presentation }})\]
     {% endif %}

{% endfor %}
