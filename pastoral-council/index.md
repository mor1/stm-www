---
layout: page
active: pastoral-council
image: church-side.jpeg
---

# 

+-- {.clearfix}
&nbsp;
=--

+-- {.pastoral-council .dl-horizontal}
<section>
  <dl>
  {% for post in site.categories.pastoral-council %}
    <dt>{{ post.date | date: "%B %e, %Y" }}</dt>
    <dd>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </dd>
  {% endfor %}
  </dl>
</section>
=--
