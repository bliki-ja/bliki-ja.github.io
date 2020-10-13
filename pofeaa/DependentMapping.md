---
layout: pofeaa
title: 依存マッピング
---

原文: <https://www.martinfowler.com/eaaCatalog/dependentMapping.html>

*Has one class perform the database mapping for a child class.*

解説の全文は『PofEAA』 **262** ページを参照。

![](https://www.martinfowler.com/eaaCatalog/dependentObjectSketch.gif)

他のオブジェクトのコンテキストで表れるオブジェクトもある。「Album」が読み込まれたり保存されたりすると、「Album」の「Track」も読み込まれたり保存されたりする。データベース内の他のテーブルから参照されていないならば、 「Album Mapper」に「Track」もマップさせるようにすればよい。このようなマッピングをDependentMappingと呼ぶ。
