---
title: ボールとソケット
tags: [uml]
---

http://martinfowler.com/bliki/BallAndSocket.html

UML 2 で登場した新しい記法のなかに、
クラスに必要なインターフェースを表す「ソケット」があります。
元は、複数のインターフェースのimplementを表すためにマイクロソフトによって一般化された「ロリポップ」でした。
Arrayクラスが複数のインターフェースをimplementすると、以下のように表せます。

![](http://martinfowler.com/bliki/images/ballAndSocket/multipleInterfaces.gif)

この記法は、こういった類のものを表すには便利な代物です。
ここでrealizationの矢印を使ってしまうと、ごちゃごちゃした図になるでしょう。

クラスはインターフェースをimplementしているものだけではありません。
インターフェースを必要（required）とするクラスも考えられます。
それでは、今からあるクラスを描きますので想像してみてください。
このクラスは、デジタルミュージックのプレイリストについて、
トータル演奏時間などといった様々な情報を提供してくれます。
各ミュージックファイルの情報を得るには、
どこからかデータを取得しなければなりません。
私はかなりイケてるナウな野郎なので、ここではiTunesから情報を取得しちゃいます――もちろん、代替案が考えられるでしょうから
（たとえばmp3ファイルから直接取得するとか）
他の実装と簡単に入れ替えられるようインターフェースを用います。

![](http://martinfowler.com/bliki/images/ballAndSocket/interfacesAsClasses.gif)

ソケットを使うことで、コンパクトにrequired interfaceを表すことができます。

![](http://martinfowler.com/bliki/images/ballAndSocket/socketOnly.gif)

ボールとソケットはお互いに結びつきやすく、
この2つが対になるのはごく自然なことでした。
ですから『{{isbn('0321193687','UML Distilled')}}』を書くときに参考にしたUML仕様では、
両者を結び付けることを許可していました。

![](http://martinfowler.com/bliki/images/ballAndSocket/mated.gif)

ただ、以前のUML仕様では許可されていたのですが、
「UML委員会が誤りと決めた」とBran Solic が教えてくれました。
ボールとソケットを上記のように使うことはできないそうです。
UMLにはこのボールとソケット自体は残っていますが、
コンポーネント構造図をつなぐためだけに使われます――これは今回のトピックからは外れます。

となると、required interface と provided interface 間のリンクをどのように表せばよいのかという疑問がわきます。
UML 1 では依存を使って表していました。

![](http://martinfowler.com/bliki/images/ballAndSocket/dependency.gif)

Jim Rumbaughの{{isbn('0321245628','リファレンスマニュアル')}}では、別の方法が示されています。

![](http://martinfowler.com/bliki/images/ballAndSocket/rumbaugh.gif)

この例もそうですが、
少ない記法で同じ意味を表せるUML 1のスタイルのほうが私は好みです。
しかし、
複数のクラスがひとつのrequired interfaceをimplementするなどといった複雑な構造を表すには、
Rumbaughのスタイルが有用でしょう。

![](http://martinfowler.com/bliki/images/ballAndSocket/multiRumbaugh.gif)

最初にボールとソケットを見たとき、それほど嫌いではありませんでした。
ただ、それほど使いたいとも思いませんでした。
シンプルな場合は、ソケットを使ったUML 1のスタイルがうまく機能します。
複雑な場合は、（ボールやソケットではなく）クラスのボックス図を使ってインターフェースを表したほうがいいと思います。
