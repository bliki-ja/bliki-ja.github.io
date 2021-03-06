---
layout: pofeaa
title: ツーステップビュー
---

原文: <https://www.martinfowler.com/eaaCatalog/twoStepView.html>

*ドメインのデータを2ステップに分けてHTMLに入れるパターン。最初に論理的プレゼンテーションを作り、そしてHTMLへとレンダリングする。*

解説の全文は『PofEAA』 **365** ページを参照。

![](https://www.martinfowler.com/eaaCatalog/twoStageViewSketch.gif)

Webアプリケーションの画面が多くなってくると、サイトの画面デザインを統一したくなるものだ。
画面ごとにデザインが異なっていれば、ユーザーは混乱することになってしまう。
サイトの見た目を一気に、しかも簡単に変更する方法はないものだろうか。
よく Template View (350) や Transform View (361) パターンが用いられるが、複数のページや変換モジュールをまたいでプレゼンテーションを決定するため、扱いが難しい。
これではサイト全体を変更するために、いくつものファイルを変更しなくてはならない。

Two Step View はこの変換を2ステップに分ける。
まず、モデルのデータを論理的プレゼンテーションに変換する（このときフォーマットは特に定めない）。
次に、その論理的プレゼンテーションを実際に必要となるフォーマットへと変換する。
この方法だと、2ステップ目をいじればサイト全体の見た目を変更できる。
2ステップ目を複数用意すれば、複数のルックアンドフィールを用意することも可能だ。。
