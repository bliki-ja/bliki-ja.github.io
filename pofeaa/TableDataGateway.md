---
layout: pofeaa
title: テーブルデータゲートウェイ
---

原文: <https://www.martinfowler.com/eaaCatalog/tableDataGateway.html>

*データベース テーブルへの Gateway (466)として振舞うオブジェクト。インスタンスはテーブル内のすべての行を操作する。*

解説の全文は『PofEAA』 **144** ページを参照。

![](https://www.martinfowler.com/eaaCatalog/dbgateTable.gif)

アプリケーションロジック内でSQLをミックスすると、いくつか問題が起きる。
多くの開発者はSQLに不慣れで、慣れている人間でもうまく書ける者は少ないだろう。
データベース管理者の場合は、
データベースのチューニングや変更を行うためにも
SQLを簡単に扱える必要がある。

TableDataGatewayは、テーブルまたはビューにアクセスするすべてのSQL（select、insert、update、delete）を扱う。他のコードはTableDataGatewayのメソッドを呼び出し、データベースとやり取りする。
