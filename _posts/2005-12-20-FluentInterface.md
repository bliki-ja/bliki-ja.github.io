---
title: 流れるようなインタフェース
tags: [API design, domain specific language]
---

http://www.martinfowler.com/bliki/FluentInterface.html

2005/12/20



数ヶ月前、[Eric Evans](http://domainlanguage.com/about/ericevans.html)と一緒にあるワークショップに参加した。
そこで彼がとあるインターフェースのスタイルについて語ったのだが、
我々はそれを「流れるようなインターフェース（fluent interface）」と名づけることにした。
一般的なスタイルではないが、もっと評価されるべき代物だ。
おそらく例を示したほうがいいだろうから、そうしてみることにする。



一番簡単な例は、Ericの[timeAndMoney](http://timeandmoney.sourceforge.net/)ライブラリだろう。
時間の間隔を作るには、通常は、以下のようにする。

```java
 TimePoint fiveOClock, sixOClock;
 ...
 TimeInterval meetingTime = new TimeInterval(fiveOClock, sixOClock);
```


``timeAndMoney``ライブラリの利用者は以下のようなことを行うだろう。

```java
 TimeInterval meetingTime = fiveOClock.until(sixOClock);
```


続いて、これまたありふれた例だが、顧客からの注文を例に挙げよう。
注文には、商品とその数量を記載した注文明細が含まれる。
注文明細はスキップすることができる（``skippable``）。
たとえば、注文全体の配送が遅れるよりは、
ある商品を除いて残りを配送したほうがよい場合が考えられるからだ。
注文の状態を「至急（``rush``）」にすることもできる。



このような場合は、以下のようにすることが多い。

```java
    private void makeNormal(Customer customer) {
        Order o1 = new Order();
        customer.addOrder(o1);
        OrderLine line1 = new OrderLine(6, Product.find("TAL"));
        o1.addLine(line1);
        OrderLine line2 = new OrderLine(5, Product.find("HPK"));
        o1.addLine(line2);
        OrderLine line3 = new OrderLine(3, Product.find("LGV"));
        o1.addLine(line3);
        line2.setSkippable(true);
        o1.setRush(true);
    }
```


ここでは、様々なオブジェクトを作ってから、それらをつなぎ合わせている。
すべての設定をコンストラクタで行うことはできないので、一時的に変数を作って、後からつなぎ合わせるようなことをしている——コレクションにアイテムを追加するのはこのような時だ。



以下は上記と同じつなぎ合わせを、流れるようなスタイルで行っている。

```java
   private void makeFluent(Customer customer) {
        customer.newOrder()
                .with(6, "TAL")
                .with(5, "HPK").skippable()
                .with(3, "LGV")
                .priorityRush();
    }
```


このスタイルで気づくべき重要な点は、「内部[ドメイン特化言語](/DomainSpecificLanguage)」のようなことを実現しようとしているところだ。これが我々が「流れるような」と表現した理由だ。
この2つの用語は、様々な点で同意語と見なすことができる。
このAPIは読みやすさを第一に設計されている。
流れるようにするには、設計とAPIの構築に時間がかかるという代償をともなう。
コンストラクタ、セッター、addXXXメソッドといったシンプルなAPIは簡単に書くことができるが、ナイスで流れるようなAPIにたどり着くには、それなりの長考が必要だ。



先ほどの例はカルガリーのコーヒーショップで朝食をとっているときに、私がチャチャっと書き上げたものなのでちょっと違うのだが、本来、流れるようなAPIの構築には時間がかかる。
流れるようなAPIについてもっと考えてみたいのであれば、[[JMock](http://www.jmock.org/)のコードを見てみるといいだろう。
JMockなどのモックライブラリは、振舞の複雑なスペック（仕様）を作る必要がある。
ここ数年で様々なモックライブラリが作られてきたが、JMockには非常にナイスで流れるようなAPIが含まれており、それが正に流れるが如くなのである。
以下にエクスペクテーション（期待）の例を挙げる。

```java
 mock.expects(once()).method("m").with( or(stringContains("hello"),
                                           stringContains("howdy")) );
```


私は[JAOO2005](http://martinfowler.com/bliki/JAOO2005.html)で、[Steve Freeman](http://stevef.truemesh.com/)と[Nat Price](http://nat.truemesh.com/)がJMock APIの進化についての素晴らしい講演を拝聴したが、彼らはそれを[OOPSLAの論文(PDF)](http://www.mockobjects.com/files/evolving_an_edsl.ooplsa2006.pdf)としてまとめている。



これまで我々が流れるようなAPIを目にしたのは、
オブジェクト（特にバリューオブジェクト）を組み立てるときだった。
宣言的文脈のなかで何か現れるものがあるのではないと思うのだが、
これが特性を定義づけるものかどうかは分からない。
我々にとって、流れを表す試金石とは、ドメイン特化言語の特性を持っているかどうかだ。
ドメイン特化言語のようなAPIを使っていると、だんだんと流れていくのである。



このように流れるようなAPIを構築すると、一風変わったAPIになる。
最も分かりやすいのは、セッターが値を返すようになることだろう。
（先ほどの注文の例だと、注文に注文明細を追加すると注文が返ってくる。）
中括弧言語の世界では、何かを変更するメソッドには``void``を付けるのが一般的だ。これは[コマンド・問い合わせの分離](/CommandQuerySeparation)の原則に則しているので私は好きなのだが、
この慣習が流れるようなインターフェースでは邪魔なのだ。
この場合は、慣習を一時的に停止するようにしている。



返り値の型は、流れるようなアクションを続けるために必要なものを選択すべきである。
JMockは次に必要になりそうなものに応じて型を変えると強調している。
このスタイルでナイスなのは、IDEのウィザードではなく、メソッド補完（インテリセンス）によって次に必要な型が分かるということだ。
DSLには文法が比較的整った動的型言語が向いていると思うが、
メソッド補完を使えば、静的型言語にもプラスになるだろう。



流れるようなインターフェースで作られたメソッドの問題点は、分かりにくいという点だ。
メソッド別ドキュメントをメソッドブラウザで見ても、with の意味はよく分からない。
それだけを取り出せば、メソッドの意図を全く伝えない悪い名前が付けられていると言うこともできる。
その強みは流れるようなアクションの文脈でしか現れない。
この問題を避けるには、このような文脈でのみ使われるビルダーオブジェクトを使うという手があるだろう。



Ericが述べていたことだが、彼が流れるようなインターフェースをこれまでに使ったり目にしたりしてきたのは、バリューオブジェクトの組み立てだったそうだ。
バリューオブジェクトはドメインに依存したものではないので、
簡単に作ったり捨てたりすることができる。
古いバリューから新しいバリューを作るときに流れが漂うのだ。
その意味で、注文の例は典型的なものではなかった。
[エヴァンスの分類](/EvansClassification)では、エンティティと分類されていているものだからだ。



私はまだそれほど多くの流れるようなインタフェースを見たことがないので、
メリット、デメリットについて結論づけるまでには至らない。
ここで勧めているのも、ほんの触りに過ぎない——ただ、もっと試されるべき時期であるとは考えている。



[[Piers Cawley](http://www.bofh.org.uk/articles/2005/12/21/fluent-interfaces)から、いいフォローが入った。

## SEE ALSO

* ひがやすを blog
  * [流れるようなインターフェースと脱CoC](http://d.hatena.ne.jp/higayasuo/20071018#1192681950)
  * [流れるようなインターフェース](http://d.hatena.ne.jp/higayasuo/20071019#1192757543)
