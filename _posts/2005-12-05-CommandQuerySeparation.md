---
title: コマンド・問い合わせの分離
tags: [API design, clean code]
---

https://martinfowler.com/bliki/CommandQuerySeparation.html

「コマンド・問い合わせの分離」という言葉は、Bertrand Meyer氏が『オブジェクト指向入門』で最初に述べたものである。これは、オブジェクト指向黎明期における最も影響力のある書籍である。 （1版がその影響力を持っていた。 2版も優れているが、これを持ち運ぶにはスポーツジムに数ヶ月は通う必要があるだろう）

基本的な考えは、オブジェクトのメソッドを明確に2つのカテゴリに分類するというものである。

* 問い合わせ：結果を返し、システムの状態を変更しない（副作用がない）
* コマンド：システムの状態を変更し、値を返さない

「コマンド」という用語は他の文脈でも広く用いられるため、 私は「モディファイア(modifiers)」という言葉を好んで使っている。 あるいは「ミュテータ(mutators)」と呼ばれることもあるだろう。

この原則が重要なのは、 状態を変更するメソッドと変更しないメソッドとを明確に分けることで、 非常に扱いやすくなるという点だ。 なぜなら、 様々な状況において自信を持って問い合わせを行うことができるからだ。 どこにでも配置することができるし、順番を入れ替えることもできる。 一方、モディファイアの扱いには注意が必要だ。

この原則は、戻り値の型によって両者を区別するというものである。 たいていの場合、うまく機能するため、これはよいルールである。 JavaのIteratorにおけるイディオムを考えてみよう。 ``next``メソッドは次の要素を返すと同時に、イテレータを次に進めてくれる。 個人的には、``advance``メソッドと``current``メソッドに分かれていたほうが良いと思う。

Meyerは「コマンド・問い合わせ」原則を全面的に使用したいと考えているようだが、 そこには例外がある。 スタックのpopが、状態を変更するモディファイアの良い例だ。 Meyerは、「このメソッドはできるだけ避けたほうがよいが、便利なイディオムである」と明確に述べている。 なので、私はできるだけこの原則に従うようにはするが、原則を破ることもいとわない心構えでいる。

言語がこの考えをサポートしてくれればいいのに、と思ったりする。 言語が状態を変更するメソッドを検知したり、 プログラマが目印をつけたりできる、というのはどうだろう。 言語が自動的に検知できないのは、状態を変更しないというルールがシステムの``ObservableState``にしか適用できないからである。 私が初めてこれを目にしたのは、C++のconst修飾子である。 長いことC++なぞ使ったことがなかったもんだから、 実際にそれがどれほど便利なものか分からなかった。 優れたC++erは、constを多用し、constを愛しているのではないだろうか。
