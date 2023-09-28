---
layout: pofeaa
title: アクティブレコード
---

原文: <https://www.martinfowler.com/eaaCatalog/activeRecord.html>


*データベースのテーブルやビューの行をラップし、データベースアクセスをカプセル化し、ドメインロジックを追加するオブジェクト*

解説の全文は『PofEAA』 **160** ページを参照。

![](https://www.martinfowler.com/eaaCatalog/activeRecordSketch.gif) 

データと振る舞いの両方を持つオブジェクト。データの多くは永続的であり、データベースに格納される必要がある。ActiveRecordは、メインオブジェクトにデータアクセス処理を置くという最も明らかなアプローチを採用している。この方法では、全員がデータベースへの読み書きするやり方を知っている。
