---
layout: page
active: calendar
image: church-side.jpeg
---

# 

+-- {.clearfix}
&nbsp;
=--

+-- {.calendar .dl-horizontal}
<section>
  <dl>
  {% for post in site.categories.calendar %}
    <dt>{{ post.date | date: "%B %e, %Y" }}</dt>
    <dd>
      <a href="{{ post.url }}">{{ post.title }}</a>
    </dd>
  {% endfor %}
  </dl>
</section>
=--
