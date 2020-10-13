---
layout: pofeaa
title: 継承マッパー
---

原文: <https://www.martinfowler.com/eaaCatalog/inheritanceMappers.html>

*継承ヒエラルキーを制御するようなデータベースマッパーを組織化する構造*

解説の全文は『PofEAA』 **302** ページを参照。

![](https://www.martinfowler.com/eaaCatalog/inheritanceMappersSketch.gif)


メモリ上にあるオブジェクト指向の継承ヒエラルキーを関係データベースに対応付けるとき、データをデータベースにセーブしたりロードしたりするのに必要なコード量を最少にしなければならない。また、スーパークラスやサブクラスのセーブ、ロードを可能にするような、抽象ないし具象のマッピング動作も欲しいところだろう。


この動作の詳細は継承マッピングスキーマ(SingleTableInheritance(278)、ClassTableInheritance(285)、ConcreteTableInheritance(293))によって様々だが、一般的構造はこれら全てに等しく作用する。
