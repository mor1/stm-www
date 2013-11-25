---
layout: page
active: newsletters-2012
image: church-side.jpeg
---

# Newsletters<br /><small>weekly parish events</small>

+-- {.dl-horizontal .calendar .span10}
<section>
  {% for post in site.categories.newsletters-2012 %}

    {% assign post_next = site.categories.newsletters-2012[forloop.index] %}

    {% if post_next %}
      {% assign date = post.date | date: '%Y%m%d' | plus: 0 %}

      {% assign year = post.date | date: '%Y' | plus: 0 %}
      {% assign month = post.date | date: '%m' | plus: 0 %}
      {% assign day = post.date | date: '%d' | plus: 0 %}

      {% assign nyear = post_next.date | date: '%Y' | plus: 0 %}
      {% assign nmonth = post_next.date | date: '%m' | plus: 0 %}
    {% endif %}

    {% if forloop.first %}
      <h2>{{ year }}</h2>
      <dl>
        <ul>
    {% endif %}

    <li>
      <dt>{{ post.date | date: "%B %e, %Y" }}</dt>
      <dd>

{% comment %}
parish was split from beeston and rejoined with st paul's and st mary's in
summer 2013. the last joint newsletter i have a supplement for is 2013-07-21.
{% endcomment %}
{% if date <= 20130721 %}
        <a class="pdf"
           href="http://www.theassumption.co.uk/docs/{{ post.date | date: "%Y-%m-%d" }}.pdf">
          The Assumption &amp; St Thomas More combined newsletter
        </a>
        <br />
{% endif %}

        <a class="pdf" href="{{ post.url }}">
          {{ post.title }}
        </a>
      </dd>
    </li>

    {% if year != nyear %}
        </ul>
      </dl>
      <h2>{{ nyear }}</h2>
      <dl>
        <ul>
    {% elsif month != nmonth %}
        </ul>
        <ul>
    {% endif %}

    {% if forloop.last %}
        </ul>
      </dl>
    {% endif %}
  {% endfor %}
</section>
=--
