---
title: ユーザーストーリー
tags: [agile, requirements analysis]
---

https://martinfowler.com/bliki/UserStory.html

ユーザーストーリーとは、ソフトウェアシステムに求められるふるまいをまとめたものだ。
アジャイルソフトウェア開発の世界で広く使われており、大量の機能を細かく分解して計画作りに生かせるようにしている。
同じような概念を表す用語として**フィーチャー**という言い方もあるが、
最近のアジャイル界隈では「ストーリー」とか「ユーザーストーリー」とかいう用語のほうが広まっている。

最初にこの言葉を使い出したのはKent Beckで、Extreme Programmingの一環として取り上げていた。
長々と書かれた仕様書ではなく、形式張らない対話型の方法で要件を引き出すためだ。
ストーリーの核心は、一枚のカードに書き出せる（Kentや私がよく使うのは、3インチx5インチのやつだ）。
ストーリーは、敢えて詳細までは具体化しない。それは実際に開発の準備が整うまで先送りだ。
この段階では、他のストーリーとの間で優先順位の調整ができる程度の理解で十分だ。

Bill Wakeは、よいストーリーの特徴を覚えやすくするために
[INVEST](http://xp123.com/articles/invest-in-good-stories-and-smart-tasks/)
という用語を編み出した。

 * **Independent（独立している）**：どのストーリーも、順番を気にせずに出荷できること。
 * **Negotiable（交渉可能である）**：ストーリーの内部の詳細は、開発中にプログラマーと顧客の共同作業で作り上げること。
 * **Valuable（価値がある）**：そのストーリーの機能が、顧客あるいはそのソフトウェアのユーザーにとって価値があるものであること。
 * **Estimable（見積もり可能である）**：プログラマーがストーリーを実装するにあたって、妥当な見積もりができること。
 * **Small（粒が小さい）**：ストーリーの実装にかかる時間は少なくすること。通常は数人日程度になる。
 少なくとも、1回のイテレーションで複数のストーリーを完成させるくらいでなければいけない。
 * **Testable（テスト可能である）**：ストーリーが正しく機能することを確認するためのテストを書けること。

ストーリーを書くときによく使われる、お決まりの書式がある。
「...として、...をしたい。なぜなら...だからだ」というものだ。
「として」には、誰がそのストーリーを欲しているのかを書く。
「をしたい」には、どんな機能なのかを書く。
そして「なぜなら」には、なぜその機能が欲しいのかを書く。
「なぜなら」の部分が、
顧客が実際に欲しいと思っていることから、顧客が実際に必要なものを読み取るための重要な手がかりになる。

Mike Cohnが、[ユーザーストーリーの書き方についての定番書](http://www.amazon.com/gp/product/0321205685)
を書いた。XPにおけるユーザーストーリーの根本を理解するには、[白本](http://www.amazon.com/gp/product/0321278658)あるいは
[緑本](https://martinfowler.com/books/pxp.html)を読もう。
初期のblikiのエントリの中にも、
[ユースケースとストーリー](/UseCasesAndStories)の違いをとりあげたものがある。

----

by m-takagi
