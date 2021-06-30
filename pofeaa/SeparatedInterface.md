---
layout: pofeaa
title: セパレートインターフェース
---

原文: <https://www.martinfowler.com/eaaCatalog/separatedInterface.html>

*実装とは別のパッケージにインタフェースを定義する*

解説の全文は『PofEAA』 **476** ページを参照。

![](https://www.martinfowler.com/eaaCatalog/separatedInterfaceSketch.gif)

システムの開発を進める中で、システム中の部品どうしの結合性を弱めていくことで設計のクオリティを改善することができる。このためのいい方法は、いくつかのクラスをパッケージにまとめ、依存関係を制御することだ。その際、そのクラスをどうパッケージに分類するかについてのルールに則ること。例えば、ドメインレイヤのクラスはプレゼンテーションパッケージのクラスを呼ばないというものだ。

しかしながら、一般的な依存性の構造とは矛盾するようなメソッド起動が必要になるかもしれない。その場合、Separated Interfaceを使って、実装が別のパッケージにあるようなインタフェースを定義するのだ。この方法でこのインタフェースへの依存性を必要とするクライアントは完全に実装のことを知らないでいられる。このSeparated InterfaceによってGateway(466)に適したプラグポイントが提供される。

(translated by money@andore.com)
