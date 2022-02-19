---
title: 質素なオブジェクト
tags: [testing]
---

<!-- Some program elements are inherently difficult, or even impossible to test. 
 !-- Any logic in these elements is thus prone to bugs and difficult to evolve. 
 !-- To mitigate this problem, move as much as logic as possible out of the hard-to-test element and into other more friendly parts of the code base. 
 !-- By making untestable objects humble [1], we reduce the chances that they harbor evil bugs. -->

プログラムの要素の中には、本質的にテストが難しい、あるいは不可能なものがあります。
このような要素に含まれるロジックは、バグが発生しやすく、進化させるのも大変です。
この問題を軽減するために、できるだけ多くのロジックを「テストが難しい要素」から「テストがしやすい部分」へ移動させます。
テストできないオブジェクトを質素（Humble）にすることで[^1]、邪悪なバグが潜む可能性を減らすのです。

![](https://martinfowler.com/bliki/images/humble-object/sketch.png)

<!-- A common example of this is in the user-interface. 
 !-- Some platforms provide no hooks 
 !-- 	to enable us to run automated tests against UI controls. 
 !-- Even those that do often make it difficult, with complex setup, special frameworks, and slow-running tests. 
 !-- But we can often test effectively by ensuring these controls have the absolute minimum of behavior, using patterns like Presentation Model (MVVM) and Passive View. -->

よくある例としては、ユーザーインターフェイスがあるでしょう。
プラットフォームのなかには、UIコントロールに対して自動テストを実行するためのフックが用意されていないものがあります。
フックを用意しているプラットフォームであっても、設定が複雑だったり、特殊なフレームワークを使っていたり、テストの実行速度が遅かったりと、テストが難しい場合があります。
このようなときは、[プレゼンテーションモデル（MVVM）](https://martinfowler.com/eaaDev/PresentationModel.html)や[パッシブビュー](https://martinfowler.com/eaaDev/PassiveScreen.html)などのパターンを使用して、UIコントロールの振る舞いを最小限にすれば、効果的にテストできます。

<!-- For more details on this approach the key source is Gerard Meszaros's xUnit Test Patterns book - 
 !-- the entry on Humble Object is online and includes much more depth including variations and examples. -->

このアプローチの詳細については、Gerard Meszarosの『xUnit Test Patterns』を参照してください。
「[Humble Object](http://xunitpatterns.com/Humble%20Object.html)」の項目はオンラインで公開されています。
バリエーションや例も含めて、詳しく説明されています。

<!-- Notes
 !-- 1: The use of the word "humble" originated in an article by Michael Feathers . -->

[^1]: 「質素（Humble）」という用語は、[Michael Feathersの記事](https://martinfowler.com/articles/humble-dialog-box.html)に由来します。
