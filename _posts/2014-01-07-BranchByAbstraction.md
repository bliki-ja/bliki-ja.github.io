---
title: 抽象化によるブランチ
tags: [version control, continuous integration]
---

https://martinfowler.com/bliki/BranchByAbstraction.html

「抽象化によるブランチ」というテクニック[^fn01]は、ソフトウェアシステムへの大規模な変更を徐々に進めていくときに使われるものだ。
これを使えば、変更がまだ完了していなくても、定期的にシステムをリリースできるようになる。

こんな状況を考えてみよう。システムのかなりの部分が依存しているモジュール（あるいはライブラリやフレームワーク）があって、それをリプレイスしようとしている。

![](https://martinfowler.com/bliki/images/branch-by-abstraction/step-1.png)

※Flawed Supplier…欠陥のあるモジュール

抽象化レイヤーを作って、クライアントのコードとモジュールとのやりとりをそこに閉じ込める。
クライアントのコードの中でモジュールを呼び出しているところをすべて書き換えて、この抽象化レイヤーを経由させる。

![](https://martinfowler.com/bliki/images/branch-by-abstraction/step-2.png)


各クライアントについて、この抽象化レイヤーを使うよう徐々に書き換えていく。そして最終的には、モジュールとのやりとりをすべて抽象化レイヤーに閉じ込める。
こうすることで、モジュールに対するユニットテストのカバレッジを改善できるようになる。この抽象化レイヤーをテスト通してテストできるからだ。

![](https://martinfowler.com/bliki/images/branch-by-abstraction/step-3.png)


そして、クライアントに必要な機能を実装した新しいモジュールを作る。このとき、新しいモジュールも先ほどの抽象化レイヤーを使うようにする[^fn02]。
準備が整ったら、その機能を使うクライアントのコードを変更し、新しいモジュールを使うように切り替える。

![](https://martinfowler.com/bliki/images/branch-by-abstraction/step-4.png)

それ以外のクライアントについても、問題のあるモジュールから新しいモジュールへ徐々に切り替えていく。
古いモジュールが不要になった時点で、古いモジュールは削除できる。
この移行作業が終わったら、抽象化レイヤーはそのままでもかまわないし消してしまってもかまわない。


![](https://martinfowler.com/bliki/images/branch-by-abstraction/step-5.png)

この例はあくまでも一般的なものだが、実際はいろんなバリエーションがあり得る。
一部のクライアントだけを先に移行するのが不可能で、全部一括で移行せざるを得ないことだってあるだろう。
あるいは、元のモジュールをいくつかのサブコンポーネントに分割して、サブコンポーネント単位で先ほどのプロセスを繰り返すことも考えられる。

こういったバリエーションがあるにせよ、その狙いはすべて共通している。
抽象化レイヤーを使って、複数の実装を一つのソフトウェアシステム内で共存できるようにすることだ。
抽象化レイヤーを一枚増やすことで、一つの実装からもう一つの実装への移行を行っている。
どの時点であってもシステムがきちんとビルドできて実行できることが保証されているので、
[継続的デリバリー](https://martinfowler.com/delivery.html)を実現しながらリプレイスを進められる。
段階的な変更の進めかたについては、いろんな方法を探ってみよう。

## あわせて読みたい

[Jez Humbleによる解説記事](http://continuousdelivery.com/2011/05/make-large-scale-changes-incrementally-with-branch-by-abstraction/)がある。
ThoughtWorksの継続的デリバリーツールである「Go」を使って、抽象化によるブランチでのO/Rマッピングフレームワークの移行（ibatisからhibernateへ）と
ウェブUIフレームワークの移行（velocity/JsTemplateからRuby on Railsへ）を実現した例だ。

Paul Hammantも、抽象化によるブランチの使い方について
[詳しく説明](http://paulhammant.com/blog/branch_by_abstraction.html)している。
特に、バージョン管理のブランチとの違いの説明がある。

## 謝辞

Paul Hammantにはいろいろ助言をもらった。また、彼はこの概念の名付け親でもある。

----

by m-takagi


[^fn01]: このテクニックは別に目新しいものではないが、これまできちんと名付けられたことがなかった。「抽象化によるブランチ」という言葉を使い始めたのはPaul Hammantで、[Trunkでの開発](http://paulhammant.com/2013/04/05/what-is-trunk-based-development/)よりもずっといいと主張した（彼曰く、もともとはStacy Curlが思いついた言葉だそうだ）。今やこの用語は一般的になり、よく聞くようになった。

[^fn02]: 新しいフィーチャーの開発中は、[フィーチャートグル](/FeatureToggle)を使える。新しいモジュールをテスト環境で動かして、その動きを元のモジュールの動きと比べればいい。
