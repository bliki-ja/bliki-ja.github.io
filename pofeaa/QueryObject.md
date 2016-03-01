---
layout: pofeaa
title: QueryObject
---

原文: http://www.martinfowler.com/eaaCatalog/queryObject.html

*データベースのクエリを表すオブジェクト*

解説の全文は『PofEAA』 **316** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/queryObjectSketch.gif)

SQLは複雑な言語であり、多くの開発者は特に精通しているわけでもない。 その上、クエリを作りたいデータベースのスキーマを理解する必要がある。SQLをパラメータ化して隠蔽した特有の検索メソッドを作ることによってこれを避けることができるが、よりアドホックなクエリを作るのを難しくしてしまう. 結果としてSQL文の重複が生じデータベーススキーマの変更を余儀なくする。

QueryObjectはインタプリタ(すなわちSQLクエリを形成できるオブジェクトの構造)である[Gang of Four]。テーブルやカラムよりもむしろクラスやフィールドを参照することによってクエリを作ることができる。よってクエリを書く人はデータベースのスキーマを意識することなく1箇所にローカライズされたスキーマに変更することができる。