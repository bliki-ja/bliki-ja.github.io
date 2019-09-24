---
layout: page
title: "Patterns of Enterprise Application Architecture"
---

Martin Fowler氏とAddison-Wesley Pub Coの許可を得て、パターンカタログの翻訳を行っています。

※書籍の邦訳とは一切関係ありません。

[PofEAAのパターンカタログ](CatalogOfPofEAA)から読始めるとよいでしょう。

* [パターンカタログの日本語版](CatalogOfPofEAA_Ja)
* [パターンカタログの英日対応表](CatalogOfPofEAA_EnJa)

上記のカタログでは書籍の訳語を踏襲していますが、各ページでは「できるだけ正しい」訳語を使うようにしています。邦訳版のパターン名に関する議論などは、[JapanesePatternNames](JapanesePatternNames)を参照。

## ページ一覧

<ul>
{% for page in site.pages %}
{% if page.dir contains 'pofeaa' and page.url != '/pofeaa/' %}
<li><a href="{{ page.url }}">{{ page.title }}</a></li>
{% endif %}
{% endfor %}
</ul>

