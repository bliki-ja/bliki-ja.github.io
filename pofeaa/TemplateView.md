---
layout: pofeaa
title: テンプレートビュー
---

原文: <https://www.martinfowler.com/eaaCatalog/templateView.html>

*HTMLページにマーカを埋め込むことにより、情報をHTMLの形で表現する*

解説の全文は『PofEAA』 **350** ページを参照。

![](https://www.martinfowler.com/eaaCatalog/templateViewSketch.gif)

HTMLを吐くプログラムを書くのは、想像以上に難しい。
以前よりはマシになったが
（FotranやPascalでの文字操作を覚えている方もいるだろう）、
文字列の生成や連結はいまだに骨が折れる。
作業量が少なければそれほど問題にはならないが、
全てのHTMLページを作成するとなると、
膨大なテキスト処理が必要となってくる。

静的な（リクエストによって変更する必要のない）HTMLページならば、
素晴らしいWYSIWGツールで作ればよい。
エディタでごりごりやるのが好きな我々みたいな人間でも、
テキストを打ってタグで囲めばよいのだから、
プログラムから文字列を生成させるよりも簡単だろう。

もちろん、ここで話題となっているのは、動的なWebページだ
（データベースのクエリ結果などを受け取り、HTMLの中に埋め込んだもの）。
動的なページはリクエストによって見た目が変わるため、
通常のHTMLエディタではお手上げである。

最善の方法は、静的なページと同じにようにWebページを作ることである。
ただし、ページにはマーカーを埋め込んでおき、
それによって動的な情報をかき集める。
このとき、ページの静的な部分はテンプレートとして機能する。 私はこれを
Template View と呼ぶね。
