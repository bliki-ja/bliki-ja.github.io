---
layout: static
title: tag
---

{% capture tagNames %}{% for tag in site.tags %}{{ tag[0] }}{% unless forloop.last %},{% endunless %}{% endfor %}{% endcapture %}
{% assign sortedTagNames = tagNames | split:',' | sort %}

{% for tag in sortedTagNames %}
<div id="tag_{{ tag }}" class="tagsec" style="display:none;">
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
  const href = window.location.href;
  if (href.indexOf('?') == -1) {
    return "";
  }
  const hashes = href.slice(href.indexOf('?') + 1).split('&');
  return unescape(hashes[0]);
}

const tag = getTag();
if (tag == "") {
  $(".tagsec").each(function() {$(this).show()});
} else {
  // jQuery cannot get tag with id includes blank ... so use getElementById
  $(document.getElementById("tag_" + tag)).show();
}
</script>
