---
layout: pofeaa
title: クラステーブル継承
---

原文: http://www.martinfowler.com/eaaCatalog/classTableInheritance.html

*各クラスに対して一つのテーブルを持った継承階層を表す。*

解説の全文は『PofEAA』 **285** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/classInheritanceTableSketch.gif)

オブジェクトとリレーショナルの不一致の極めて目に見える局面はリレーショナルデータベースは継承をサポートしていないという事実である。あなたはデータベース構造をオブジェクトですっきりとマッピングさせ継承構造内でどこにでもリンクさせたい。ClassTableInheritanceは継承構造内で各クラスに一つのデータベースを割り当てることによってサポートする。
