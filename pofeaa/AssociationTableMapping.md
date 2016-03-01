---
layout: pofeaa
title: 関連テーブルマッピング
---

原文: http://www.martinfowler.com/eaaCatalog/associationTableMapping.html

*関連を外部キーを持つテーブルで保存する。この外部キーは関連でリンクされた2つのテーブルを参照している。*

解説の全文は『PofEAA』 **248** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/associationTableSketch.gif)

オブジェクトはコレクションをフィールド値に使うことにより、 簡単に複数のフィールドを持つことができる。 リレーショナルデータベースにはこの機能が無く、 フィールドには単一の値しかもてないという制約がある。 「1対多」関連の場合は、[ForeignKeyMapping](ForeignKeyMapping)が使える。 外部キーを関連の「1」のほうの終端に使うのだ。 しかし、「多対多」関連の場合、 外部キーを保持するための「1」の終端がない。

答えは、リレーショナルデータ人間が何十年も使ってきたクラシックな解法だ。 関連を示すテーブルを追加作成するのである。[AssociationTableMapping](AssociationTableMapping)を使い、多値をこのリンクテーブルにマップする。
