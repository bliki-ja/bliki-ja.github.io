---
layout: page
title: Random
---

<script type="text/javascript">
let posts = [{% for post in site.posts %}"{{ post.url }}"{% unless forloop.last %},{% endunless %}{% endfor %}];
let randomIndex = Math.floor(Math.random() * posts.length);
let post = posts[randomIndex];
window.location.href = post;
</script>
