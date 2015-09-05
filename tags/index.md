---
layout: page
title: tag
---

{% capture tagNames %}{% for tag in site.tags %}{{ tag[0] }}{% unless forloop.last %},{% endunless %}{% endfor %}{% endcapture %}
{% assign sortedTagNames = tagNames | split:',' | sort %}

{% for tag in sortedTagNames %}
<div id="tag_{{ tag }}" style="display:none;">
  <h1>{{ tag }}</h1>
  <ul>
    {% for post in site.tags[tag] %}
    <li><a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
</div>
{% endfor %}

<script>
function getTag() {
  var vars = [], hash;
  var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
  return unescape(hashes[0]);
}

<!-- jQuery cannot get tag with id includes blank ... so use getElementById -->
$(document.getElementById("tag_" + getTag())).show();
</script>
