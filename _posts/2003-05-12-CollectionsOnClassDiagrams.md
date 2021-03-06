---
title: クラス図におけるコレクション
tags: [uml]
---

http://www.martinfowler.com/bliki/CollectionsOnClassDiagrams.html

### 曲の Array List をもった音楽アルバムクラスがあるとしよう。UMLクラス図ではどう表す？

クラス図を描くとき、普通、コレクションをクラスとして表すことはしません。アルバムクラスと曲クラスの関連で表すことになります。* の多重度で関連を表して、コレクションが動いていることを表すのです。

これだとコレクションの種類が分かりません。
UMLに厳密に従うと、コレクションを表すときには必ず set を用いるべきです。UMLでは、。多値は set の意味を持っているからです。
リストのような順序を表すコレクション(Ordered Collection)を表すには、関連に{ordered}と記載する必要があります。実際、コレクションにはリストを使っているひとが多いです（これしかなければテストも楽になるのですが）。それでもよいのですが、厳密にはコレクションに重複を許すことになっていることに気をつけておかなければなりません。

特別なコレクションを利用していることを表したいならば、<<doubly linked list>> のようなステレオタイプを用いることができます。しかしながら、滅多に使わないことを覚えておいてください。
