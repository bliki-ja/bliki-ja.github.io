---
layout: pofeaa
title: 単一テーブル継承
---

原文: http://www.martinfowler.com/eaaCatalog/singleTableInheritance.html

*クラスの継承ヒエラルキーを、様々なクラスの全てのフィールドのためのカラムを持つ1個のテーブルとして表現する。*

解説の全文は『PofEAA』 **278** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/singleInheritanceTableSketch.gif)

関係データベースは継承をサポートしない。だからオブジェクトをデータベースにマッピングするときは、その綺麗な継承構造を関連テーブルにどう表現するかを考慮しなくてはならない。関係データベースへのマッピングでは join をできる限り少なくするように努め、複数のテーブルに置かれた継承構造の処理を速く実行できるようにする。[Single Table Inheritance](SingleTableInheritance)は、継承構造にある全てのクラスの全てのフィールドを、1個のテーブルの中に対応付ける。

translated by cept <ceptcept@hotmail.com>
