---
layout: pofeaa
title: 外部キーマッピング
---

原文: <http://www.martinfowler.com/eaaCatalog/foreignKeyMapping.html>

*オブジェクト間の関連をテーブル間の外部キー参照にマップする。*

解説の全文は『PofEAA』 **236** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/foreignKeyMappingSketch.gif)

オブジェクトはお互いにオブジェクト参照を使い、直接参照しあうことができる。 シンプルなオブジェクト指向システムでも、 様々な方法で互いに接続されたオブジェクト群が存在するだろう。 オブジェクトをデータベースに保存するには、参照をも保存する必要がある。 しかし、このデータは実行プログラムの特定のインスタンスに特化しているため、 行データの値としては保存できない。 さらに複雑なことは、オブジェクトは他のオブジェクトへの参照のコレクションを簡単に保持することができる点である。

[ForeignKeyMapping](../ForeignKeyMapping)はオブジェクト参照をデータベースの外部キーにマップする。

