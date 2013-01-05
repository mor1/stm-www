---
layout: page
active: zone-3
image: church-side.jpeg
---

# Zone 3 <small>youth group</small>

+-- {.clearfix}
&nbsp;
=--

+-- {.zone-3 .dl-horizontal}
<section>
  <dl>
  {% for post in site.categories.zone-3 %}
    <dt>{{ post.date | date: "%B %e, %Y" }}</dt>
    <dd>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </dd>
  {% endfor %}
  </dl>
</section>
=--
