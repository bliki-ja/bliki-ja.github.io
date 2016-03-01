---
layout: pofeaa
title: ドメインモデル
---

原文: http://www.martinfowler.com/eaaCatalog/domainModel.html

*振る舞いとデータをカプセル化した、ドメインのオブジェクトモデル。*

解説の全文は『PofEAA』 **116** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/domainModelSketch.gif)

最悪、ビジネスロジックは非常に複雑となる。
ルールとロジックは様々なケースや振る舞いの傾向を記述する。
オブジェクトはこの複雑さを扱うために設計される。

[ドメインモデル](DomainModel)はオブジェクトが関連したクモの巣(web)を作る。
各オブジェクトには、
「会社」のような大きなものにしろ、
「注文フォームの行」程度の小さなものにしろ、
なんらかの意味が備わっている。
