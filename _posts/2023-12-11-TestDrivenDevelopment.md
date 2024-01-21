---
title: テスト駆動開発
tags: [testing, programming style]
---

<!-- Test-Driven Development (TDD) is a technique for building software 
 !-- 	that guides software development by writing tests. It was developed by Kent Beck in the late 1990's as part of Extreme Programming. In essence we follow three simple steps repeatedly: -->
テスト駆動開発（Test-Driven Development: TDD）は、テストを書くことでソフトウェア開発をガイドするソフトウェア構築手法である。
1990年代後半に[Kent Beck](https://substack.com/@kentbeck)がエクストリームプログラミングの一部として開発したものである。
基本的には、以下のシンプルな3つのステップを繰り返して実行する。

<!-- Write a test for the next bit of functionality you want to add.
 !-- Write the functional code until the test passes.
 !-- Refactor both new and old code to make it well structured. -->
* これから追加したい機能についてのテストを書く
* そのテストをパスするまで機能のコードを書く
* 新旧のコードをリファクタリングして適切な構造にする

![](https://martinfowler.com/bliki/images/test-driven-development/card.png)

```
テストケースのリストを書き出す
→ ひとつのテストを選択する
→ テストを書く（レッド）
→ テストをパスさせる（グリーン）
→ リファクタ
→ ひとつのテストを選択する

学んだことがあればリストを更新する
```

<!-- Although these three steps, often summarized as Red - Green - Refactor,
 !-- 	are the heart of the process, 
 !-- there's also a vital initial step
 !-- 	where we write out a list of test cases first.  -->
<!-- We then pick one of these tests, 
 !-- 	apply red-green-refactor to it, 
 !-- 	and once we're done pick the next.  -->
<!-- Sequencing the tests properly is a skill, 
 !-- we want to pick tests
 !-- 	that drive us quickly to the salient points in the design.  -->
<!-- During the process 
 !-- 	we should add more tests to our lists as they occur to us. -->


この3つのステップ（レッド・グリーン・リファクタと呼ばれる）がプロセスの中心だが、
最初にテストケースのリストを書き出すという重要なステップも存在する。
リストからテストをひとつだけ選択し、それにレッド・グリーン・リファクタを適用する。
それが終わったら、次のテストを選択する。
設計の重要なポイントまで素早く到達できるテストを選択したい。
テストに適切な順番をつけることはスキルである。
また、プロセスの途中でも思いついたテストをリストに追加すべきである。

<!-- Writing the test first, what XPE2 calls Test-First Programming, provides two main benefits. 
 !-- Most obviously it's a way to get SelfTestingCode, 
 !-- since we can only write some functional code in response to making a test pass. -->
<!-- The second benefit is that thinking about the test first 
 !-- 	forces us to think about the interface to the code first.  -->
<!-- This focus on interface and how you use a class helps us separate interface from implementation, a key element of good design that many programmers struggle with. -->

テストを先に書くこと（[XPの本](https://www.amazon.co.jp/dp/B012UWOLOQ/)では「テストファーストプログラミング」と呼ばれている）には2つの大きな利点がある。
わかりやすいのは、[自己テストコード](/SelfTestingCode)を手に入れる方法になることである。
なぜなら、テストをパスさせるためのコードを書くことしかできないからだ。
2番目の利点は、テストを先に考えれば、コードのインターフェイスから考えられるようになることだ。
インターフェイスとクラスの使い方にフォーカスすることで、インターフェイスと実装の分離ができるようになる。
このことは、多くのプログラマーが苦労している優れた設計に必要な重要な要素である。

<!-- The most common way that I hear to screw up TDD is neglecting the third step. Refactoring the code to keep it clean is a key part of the process, otherwise we just end up with a messy aggregation of code fragments. (At least these will have tests, so it's a less painful result than most failures of design.) -->

TDDが失敗するのは、3つ目のステップを無視しているからだ。
コードをリファクタリングしてクリーンに保つことは、このプロセスの重要な部分である。
リファクタリングしなければ、コードの断片が散らかったままになるだろう
（テストを書いているので、よくある設計の失敗よりは痛みは少ない）。

<!-- Further Reading -->
### 参考文献

<!-- Kent's summary of the canonical way to do TDD is the key online summary. -->

Kentによる[TDDの標準的な方法](https://tidyfirst.substack.com/p/canon-tdd)はオンラインで読める重要なまとめだ。

<!-- For more depth, head to Kent Beck's book Test-Driven Development. -->
さらに詳しく知りたい場合は、Kent Beckの著書『[テスト駆動開発](https://www.amazon.co.jp/dp/B077D2L69C/)』を参照してほしい。

<!-- The relevant chapter of James Shore's The Art of Agile Development  -->
<!-- is another sound description 
 !-- that also connects it to the rest of effective agile development. 
 !-- James also wrote a series of screencasts called Let's Play TDD. -->

James Shoreの著書『[The Art of Agile Development](https://www.amazon.co.jp/Art-Agile-Development-English-ebook/dp/B09JL2JW4V/)』のTDDの章は、TDDとアジャイル開発を接続するもうひとつの重要な説明である。Jamesは「[Let's Play TDD](https://www.jamesshore.com/v2/projects/lets-play-tdd)」というスクリーンキャストも提供している。

<!-- Revisions -->
### 改訂

<!-- My original post of this page was 2005-03-05.  -->
<!-- Inspired by Kent's canonical post, I updated it on 2023-12-11 -->
最初の投稿は2005年3月5日だった。Kentの投稿に触発されて、2023年12月11日に更新した。

<!-- ↓2005年版 -->
<!-- テスト駆動開発（TDD）はテストを通じて開発プロセスを駆動する設計技法です。
 !-- 基本的に、以下の3つのシンプルなステップを繰り返して行います。
 !--  
 !-- * これから追加したい機能についてテストを書く
 !-- * そのテストをパスするまで機能コードを書く
 !-- * よりよい構造になるように、新旧コードをリファクタリングする
 !-- 
 !-- この3つのステップを1サイクルとして、繰り返し行います。
 !-- テストをひとつずつ書き、システムの機能を作り上げていくのです。
 !-- まず先にテストを書くことには、2つの利点があります（ケント・ベックの白本ではこれを「テストファーストプログラミング」と呼んでいます）。
 !-- まず、当然ですが、[自己テスト用コード](/SelfTestingCode)を書くことができるという点です。
 !-- テストをパスさせながら機能コードを書いていけばよいからです。
 !-- 2番目の利点は、テストファーストだと、コードのインターフェイスを先に考えなければならなくなるという点です。
 !-- インターフェイスやクラスをどのように使うかに焦点をあてることで、
 !-- インターフェイスと実装との分離がしやすくなります。
 !-- 
 !-- TDDが失敗するのは、3番目のステップを無視しているからです。
 !-- コードをリファクタリングしてキレイに保つことは、このプロセスのキーとなる部分です。
 !-- さもないと、コードの断片が散らかった状態になってしまうでしょう。
 !-- （少なくともテストコードは付いているでしょうから、その他の設計の失敗よりは被害は少ないでしょうが） -->


