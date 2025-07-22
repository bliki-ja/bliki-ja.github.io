---
layout: static
title: Random
---

<script type="text/javascript">
const posts = [{% for post in site.posts %}"{{ post.url }}"{% unless forloop.last %},{% endunless %}{% endfor %}];
const randomIndex = Math.floor(Math.random() * posts.length);
const post = posts[randomIndex];
window.location.href = post;
</script>
