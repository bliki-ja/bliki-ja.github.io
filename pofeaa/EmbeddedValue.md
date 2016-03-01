n---
layout: pofeaa
title: "Embedded Value"
---

原文: http://www.martinfowler.com/eaaCatalog/embeddedValue.html

*オブジェクトを他のオブジェクトのテーブルのフィールドにマップする。*

解説の全文は『PofEAA』 **268** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/aggregateMappingSketch.gif)

OOシステムでは意味のある多くの小さなオブジェクトは、
データベースのテーブルとしては意味がない。
例えば通貨（お金オブジェクト）や日付範囲などである。
通常は、オブジェクトはテーブルとして保存するのだが、
お金の値の入ったテーブルを欲しがる人間はいないだろう。

EmbeddedValueはオブジェクトの値をオブジェクトのオーナーのレコードのフィールドにマップする。スケッチでは、EmployemnetオブジェクトがDateRangeオブジェクトとMoneyオブジェクトにリンクしている。マップ後のテーブルでは、
この2つのオブジェクトは、自身のテーブルではなく、Employmentテーブルのフィールドにマップされている。
