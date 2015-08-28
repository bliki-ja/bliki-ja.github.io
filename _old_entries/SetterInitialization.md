---
title: SetterInitialization
tags: [API design]
---

http://martinfowler.com/bliki/SetterInitialization.html

//One of two approaches to initializing objects, the other is ConstructorInitialization.

オブジェクトを初期化する2つの方法のひとつ。
もうひとつの方法は[コンストラクタによる初期化](ConstructorInitialization)である。

//With setter initialization you construct an empty object and then use setter methods to setup various properties as you go. So create a person with firstname, lastname, and a collection of favorite bars we might see something like

セッターによる初期化を使う場合は、
空のオブジェクトを作ってから、セッターメソッドを使って様々なプロパティを設定することになる。
「姓」、「名」、「好きな飲み屋」を持つ「人」オブジェクトを作るには、以下のようにする。

<<<
#ruby
mf = Person.new
mf.firstname = 'Martin'
mf.lastname = 'Fowler'
mf.add_bar "Turner's Oyster Bar"
mf.add_bar "Square and Compass"
>>>

//This approach gives you the maximum flexibility in wiring up objects, allowing you to provide just the collaborators you need for a specific usage.

この方法だと、オブジェクトの作成がめちゃくちゃ柔軟になる。
たとえば、特定の用途に必要なコラボレータを渡すなどが可能になる。

//It frees you from having to set all the values at once - which is handy if some objects are only available at later times.

いちどにすべての値を設定する必要もない。
これは、あとで有効になるオブジェクトがあるときに便利だ。

//Each method call is compact, which avoids the problem of long parameter lists to constructors and an array of different constructors to choose from.

メソッド呼び出しがコンパクトになるので、
たとえば、コンストラクタに複数のパラメータを設けるのか、
様々なコンストラクタを用意するのかといったことに
頭を悩ますこともない。

//Marko Schulz reminded me that setter methods have names that explain their use for the new object - this is a noticeable advantage over ConstructorInitialization in most languages these days which only have positional parameters. Constructor parameters with very general types (strings etc) can easily get very cryptic.

Marko Schulzが、
セッターメソッドとは新しいオブジェクトの使い方を説明する名前である、
と指摘してくれた。
ポジショナルパラメータしかない今日の言語では、
この点は[コンストラクタによる初期化](ConstructorInitialization)よりも優れている。
コンストラクタのパラメータが汎用的な型（Stringなど）だと、
すぐに混乱が生じてしまうだろう。
