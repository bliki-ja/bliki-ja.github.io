---
layout: pofeaa
title: アプリケーションコントローラ
---

原文: http://www.martinfowler.com/eaaCatalog/applicationController.html

*画面ナビゲーションやアプリケーション フローを扱う集中ポイント*

解説の全文は『PofEAA』 **379** ページを参照。

![](http://www.martinfowler.com/eaaCatalog/appControllerSketch.gif)

アプリケーションには、大量の画面ロジックが含まれるものがある。
こういったロジックは、様々なポイントで使われる。
例えば、ある時間にある画面を出すといったものがある。
これはウィザード形式と呼ばれ、決まった画面順にユーザーが進んでいく。
他にも、ある条件下でのみ表示されるものだとか、
以前の入力に応じて異なる画面が表示されるものなどがある。

ある程度は、[ModelViewController](ModelViewController) (330) の複数のインプット コントローラでこういった判断を行うことができる。
しかし、アプリケーションが複雑になると、
扱う画面の異なるいくつかのコントローラが
同一条件下で何を行えばよいか知る必要がでてきて、
コードが重複してしまうことがある。

こういった重複は、すべてのフローロジックを[ApplicationController](ApplicationController)に置くことで解決できる。
インプット コントローラは[ApplicationController](ApplicationController)に
モデルに対して実行する適切なコマンド、
アプリケーションのコンテキストに合った適切なビューを尋ねる。
