---
title: 公布済みインターフェイス
tags: [encapsulation, language feature, application architecture, API design]
---

http://martinfowler.com/bliki/PublishedInterface.html

''公布済みインターフェイス（Published Interface）''とは、
定義されているコードベース外で使われるクラスインターフェイス
を表すために私が使った用語です
（[リファクタリング本](http://martinfowler.com/books.html#refactoring)の中で最初に使いました）。
これには、Javaのpublic、さらにはC#のnon-internal publicよりも
強い意味が含まれています。
以前、published と public との違いのほうが、public と private の違いよりも重要なのだと[述べたことがあります(PDF)](http://martinfowler.com/ieeeSoftware/published.pdf)。

なぜなら、公布（Published）されていないインターフェイスなら、それを呼び出しているコードに
変更や修正を行うことが出来るからです。すべてがひとつのコードベース上にあるためです。
これなら、リネームだって可能です。
今のリファクタリングツールなら簡単に行うことが出来ます。
ただ、公布（published）されてしまったら、呼び出し側のコードを触ることが出来ませんので、
より複雑な処置が必要となってきます。
