---
title: セッターによる初期化
tags: [API design]
---

<!-- With setter initialization you construct an empty object and then use setter methods to setup various properties as you go. (An alterative to ConstructorInitialization.) -->

セッターによる初期化では空のオブジェクトを構築し、セッターメソッドを使用してさまざまなプロパティをセットアップする。（[コンストラクタによる初期化](/ConstructorInitialization)の別の手段。）

<!-- So create a person with firstname, lastname, and a collection of favorite bars we might see something like -->

名前、姓、お気に入りのバーのコレクションを持つPersonオブジェクトの生成は次のようになる。

```ruby
# ruby
mf = Person.new
mf.firstname = 'Martin'
mf.lastname = 'Fowler'
mf.add_bar "Turner's Oyster Bar"
mf.add_bar "Square and Compass"
```

<!-- This approach gives you the maximum flexibility in wiring up objects, allowing you to provide just the collaborators you need for a specific usage. -->

このアプローチでは、オブジェクトへの関連付けに対する最大限の柔軟性が得られ、特定の用途に必要なコラボレーターだけを提供することができる。

<!-- It frees you from having to set all the values at once - which is handy if some objects are only available at later times. -->

これにより一度にすべての値をセットする必要がなくなる。一部のオブジェクトを後になってからしか利用できない場合に便利だろう。

<!-- Each method call is compact, which avoids the problem of long parameter lists to constructors and an array of different constructors to choose from. -->

各メソッド呼び出しはコンパクトであり、コンストラクタへの長いパラメータリストや、異なる複数のコンストラクタの中から選ばなければならないといった問題を回避できる。

<!-- Marko Schulz reminded me that setter methods have names that explain their use for the new object - this is a noticeable advantage over ConstructorInitialization in most languages these days which only have positional parameters. Constructor parameters with very general types (strings etc) can easily get very cryptic. -->

Marko Schulzは、セッターメソッドは新しいオブジェクトの用途を説明する名前を付けられることを思い起こさせてくれた。これは位置パラメータしか持たない現代の多くの言語による[コンストラクタによる初期化](/ConstructorInitialization)よりも明らかな利点である。非常に一般的な型（文字列など）を持つコンストラクタのパラメータは、とても分かりにくいものになる可能性があるからだ。
