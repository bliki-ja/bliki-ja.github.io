---
title: Annotation
tags: TAGS
---

http://martinfowler.com/bliki/Annotation.html

プログラム要素（主にクラス、メソッド、フィールドなど）につくAnnotationとは、
メタデータの部品(a piece of meta-data)のことで、プログラム要素に拡張コードを追加します。

Javaではannotationと呼ばれ、
C#ではattributeと呼ばれます。
C#には最初のリリースからこの機能がついていました。
Javaではバージョン1.5からこの機能が追加されました。


attributeの例としては、C#の [Obsolete] attributeがあります。
これは、使われなくなった要素に印を付けるために使用されます（Javaで言うdeprecatedと同じ意味です）。
[Obsolete] attributeは、メッセージを表示したり、
その要素がエラーや警告を使用しているかどうかを示したりするために、
引数をとることができます。
あらかじめ言語内に多くのannotationが定義されていますが、
自分でannotationを定義することもできます。
