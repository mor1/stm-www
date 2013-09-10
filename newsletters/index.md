---
layout: page
active: newsletters
image: church-side.jpeg
---

# Newsletters<br /><small>weekly parish events</small>

+-- {.dl-horizontal .calendar .span10}
<section>
  {% for post in site.categories.newsletters %}
  
    {% assign post_next = site.categories.newsletters[forloop.index] %}
    
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
        <a class="pdf" href="http://www.theassumption.co.uk/docs/{{ post.date | date: "%Y-%m-%d" }}.pdf">
          The Assumption &amp; St Thomas More combined newsletter
       </a>
        <br />
        <a class="pdf" href="{{ post.url }}">{{ post.title }}</a>
      </dd>
    </li>
  
    {% if year != nyear %}    
        </ul>
      </dl>
      <h2>{{ year }}</h2>
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
