---
layout: pofeaa
title: メタデータマッピング
---

原文: <https://www.martinfowler.com/eaaCatalog/metadataMapping.html>

*O/Rマッピング（オブジェクト/リレーショナルマッピング）の詳細をメタデータであらわす*

解説の全文は『PofEAA』 **306** ページを参照。

![](https://www.martinfowler.com/eaaCatalog/metaMapperSketch.gif)

![metaMapperSketch.gif](https://www.martinfowler.com/eaaCatalog/metaMapperSketch.gif)

O/Rマッピングを扱うコードの多くは、メモリ中のオブジェクトのどのフィールドがデータベースのどのフィールドに対応するのかを表現する手段を持っている。その結果、コードは冗長になり、同じような記述を何度も書くはめになりやすい。Metadata
Mappingを使えば、開発者が簡単なマッピング対応表だけを書いておけば、すでに用意されたコードがそれを解釈して、データの読み込み、追加、更新の詳細処理を実行してくれるようになる。

