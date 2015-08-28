http://www.martinfowler.com/bliki/FluentInterface.html

2005/12/20

//A few months ago I attended a workshop with Eric Evans, and he talked about a certain style of interface which we decided to name a fluent interface. It's not a common style, but one we think should be better known. Probably the best way to describe it is by example.

数ヶ月前、[[Eric Evans|http://domainlanguage.com/about/ericevans.html]]と一緒にあるワークショップに参加した。
そこで彼がとあるインターフェースのスタイルについて語ったのだが、
我々はそれを「流れるようなインターフェース（fluent interface）」と名づけることにした。
一般的なスタイルではないが、もっと評価されるべき代物だ。
おそらく例を示したほうがいいだろうから、そうしてみることにする。

//The simplest example is probably from Eric's timeAndMoney library. To make a time interval in the usual way we might see something like this:

一番簡単な例は、Ericの[[timeAndMoney|http://timeandmoney.sourceforge.net/]]ライブラリだろう。
時間の間隔を作るには、通常は、以下のようにする。

 TimePoint fiveOClock, sixOClock;
 ...
 TimeInterval meetingTime = new TimeInterval(fiveOClock, sixOClock);

//The timeAndMoney library user would do it this way:

{{code timeAndMoney}}ライブラリの利用者は以下のようなことを行うだろう。

 TimeInterval meetingTime = fiveOClock.until(sixOClock);

//I'll continue with the common example of making out an order for a customer. The order has line-items, with quantities and products. A line item can be skippable, meaning I'd prefer to deliver without this line item rather than delay the whole order. I can give the whole order a rush status.

続いて、これまたありふれた例だが、顧客からの注文を例に挙げよう。
注文には、商品とその数量を記載した注文明細が含まれる。
注文明細はスキップすることができる（skippable）。
たとえば、注文全体の配送が遅れるよりは、
ある商品を除いて残りを配送したほうがよい場合が考えられるからだ。
注文の状態を「至急（rush）」にすることもできる。

//The most common way I see this kind of thing built up is like this:

このような場合は、以下のようにすることが多い。

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

//In essence we create the various objects and wire them up together. If we can't set up everything in the constructor, then we need to make temporary variables to help us complete the wiring - this is particularly the case where you're adding items into collections.

ここでは、様々なオブジェクトを作ってから、それらをつなぎ合わせている。
すべての設定をコンストラクタで行うことはできないので、一時的に変数を作って、後からつなぎ合わせるようなことをしている——コレクションにアイテムを追加するのはこのような時だ。

//Here's the same assembly done in a fluent style:

以下は上記と同じつなぎ合わせを、流れるようなスタイルで行っている。

   private void makeFluent(Customer customer) {
        customer.newOrder()
                .with(6, "TAL")
                .with(5, "HPK").skippable()
                .with(3, "LGV")
                .priorityRush();
    }

//Probably the most important thing to notice about this style is that the intent is to do something along the lines of an internal DomainSpecificLanguage. Indeed this is why we chose the term 'fluent' to describe it, in many ways the two terms are synonyms. The API is primarily designed to be readable and to flow. The price of this fluency is more effort, both in thinking and in the API construction itself. The simple API of constructor, setter, and addition methods is much easier to write. Coming up with a nice fluent API requires a good bit of thought.

このスタイルで気づくべき重要な点は、「内部[[DomainSpecificLanguage]]」のようなことを実現しようとしているところだ。これが我々が「流れるような」と表現した理由だ。
この2つの用語は、様々な点で同意語と見なすことができる。
このAPIは読みやすさを第一に設計されている。
流れるようにするには、設計とAPIの構築に時間がかかるという代償をともなう。
コンストラクタ、セッター、addXXXメソッドといったシンプルなAPIは簡単に書くことができるが、ナイスで流れるようなAPIにたどり着くには、それなりの長考が必要だ。

//Indeed one of the problems of this little example is that I just knocked it up in a Calgary coffee shop over breakfast. Good fluent APIs take a while to build. If you want a much more thought out example of a fluent API take a look at JMock. JMock, like any mocking library, needs to create complex specifications of behavior. There have been many mocking libraries built over the last few years, JMock's contains a very nice fluent API which flows very nicely. Here's an example expectation:

先ほどの例はカルガリーのコーヒーショップで朝食をとっているときに、私がチャチャっと書き上げたものなのでちょっと違うのだが、本来、流れるようなAPIの構築には時間がかかる。
流れるようなAPIについてもっと考えてみたいのであれば、[[JMock|http://www.jmock.org/]]のコードを見てみるといいだろう。
JMockなどのモックライブラリは、振舞の複雑なスペック（仕様）を作る必要がある。
ここ数年で様々なモックライブラリが作られてきたが、JMockには非常にナイスで流れるようなAPIが含まれており、それが正に流れるが如くなのである。
以下にエクスペクテーション（期待）の例を挙げる。

 mock.expects(once()).method("m").with( or(stringContains("hello"),
                                           stringContains("howdy")) );

//I saw Steve Freeman and Nat Price give an excellent talk at JAOO2005 on the evolution of the JMock API, they since wrote it up in an OOPSLA paper.

私は[[JAOO2005|http://martinfowler.com/bliki/JAOO2005.html]]で、[[Steve Freeman|http://stevef.truemesh.com/]]と[[Nat Price|http://nat.truemesh.com/]]がJMock APIの進化についての素晴らしい講演を拝聴したが、彼らはそれを[[OOPSLAの論文(PDF)|http://www.mockobjects.com/files/evolving_an_edsl.ooplsa2006.pdf]]としてまとめている。

//So far we've mostly seen fluent APIs to create configurations of objects, often involving value objects. I'm not sure if this is a defining characteristic, although I suspect there is something about them appearing in a declarative context. The key test of fluency, for us, is the Domain Specific Language quality. The more the use of the API has that language like flow, the more fluent it is.

これまで我々が流れるようなAPIを目にしたのは、
オブジェクト（特にバリューオブジェクト）を組み立てるときだった。
宣言的文脈のなかで何か現れるものがあるのではないと思うのだが、
これが特性を定義づけるものかどうかは分からない。
我々にとって、流れを表す試金石とは、DomainSpecificLanguageの特性を持っているかどうかだ。
DomainSpecificLanguageのようなAPIを使っていると、だんだんと流れていくのである。

//Building a fluent API like this leads to some unusual API habits. One of the most obvious ones are setters that return a value. (In the order example with adds an order line to the order and returns the order.) The common convention in the curly brace world is that modifier methods are void, which I like because it follows the principle of CommandQuerySeparation. This convention does get in the way of a fluent interface, so I'm inclined to suspend the convention for this case.

このように流れるようなAPIを構築すると、一風変わったAPIになる。
最も分かりやすいのは、セッターが値を返すようになることだろう。
（先ほどの注文の例だと、注文に注文明細を追加すると注文が返ってくる。）
中括弧言語の世界では、何かを変更するメソッドには{{code void}}を付けるのが一般的だ。これは[[CommandQuerySeparation]]の原則に則しているので私は好きなのだが、
この慣習が流れるようなインターフェースでは邪魔なのだ。
この場合は、慣習を一時的に停止するようにしている。

//You should choose your return type based on what you need to continue fluent action. JMock makes a big point of moving its types depending on what's likely to be needed next. One of the nice benefits of this style is that method completion (intellisense) helps tell you what to type next - rather like a wizard in the IDE. In general I find dynamic languages work better for DSLs since they tend to have a less cluttered syntax. Using method completion, however, is a plus for static languages.

返り値の型は、流れるようなアクションを続けるために必要なものを選択すべきである。
JMockは次に必要になりそうなものに応じて型を変えると強調している。
このスタイルでナイスなのは、IDEのウィザードではなく、メソッド補完（インテリセンス）によって次に必要な型が分かるということだ。
DSLには文法が比較的整った動的型言語が向いていると思うが、
メソッド補完を使えば、静的型言語にもプラスになるだろう。

//One of the problems of methods in a fluent interface is that they don't make much sense on their own. Looking at a method browser of method by method documentation doesn't show much sense to with. Indeed sitting there on its own I'd argue that it's a badly named method that doesn't communicate its intent at all well. It's only in the context of the fluent action that it shows its strengths. One way around this may be to use builder objects that are only used in this context.

流れるようなインターフェースで作られたメソッドの問題点は、分かりにくいという点だ。
メソッド別ドキュメントをメソッドブラウザで見ても、with の意味はよく分からない。
それだけを取り出せば、メソッドの意図を全く伝えない悪い名前が付けられていると言うこともできる。
その強みは流れるようなアクションの文脈でしか現れない。
この問題を避けるには、このような文脈でのみ使われるビルダーオブジェクトを使うという手があるだろう。

//One thing that Eric mentioned was that so far he's used, and seen, fluent interfaces mostly around configurations of value objects. Value objects don't have domain-meaningful identity so you can make them and throw them away easily. So the fluency rides on making new values out of old values. In that sense the order example isn't that typical since it's an entity in the EvansClassification.

Ericが述べていたことだが、彼が流れるようなインターフェースをこれまでに使ったり目にしたりしてきたのは、バリューオブジェクトの組み立てだったそうだ。
バリューオブジェクトはドメインに依存したものではないので、
簡単に作ったり捨てたりすることができる。
古いバリューから新しいバリューを作るときに流れが漂うのだ。
その意味で、注文の例は典型的なものではなかった。
[[EvansClassification]]では、エンティティと分類されていているものだからだ。

//I haven't seen a lot of fluent interfaces out there yet, so I conclude that we don't know much about their strengths and weaknesses. So any exhortations to use them can only be preliminary - however I do think they are ripe for more experimentation.

私はまだそれほど多くの流れるようなインタフェースを見たことがないので、
メリット、デメリットについて結論づけるまでには至らない。
ここで勧めているのも、ほんの触りに過ぎない——ただ、もっと試されるべき時期であるとは考えている。

//There's a good follow up to this from Piers Cawley.

[[Piers Cawley|http://www.bofh.org.uk/articles/2005/12/21/fluent-interfaces]]から、いいフォローが入った。

!SEE ALSO

*ひがやすを blog
** [[流れるようなインターフェースと脱CoC|http://d.hatena.ne.jp/higayasuo/20071018#1192681950]]
** [[流れるようなインターフェース|http://d.hatena.ne.jp/higayasuo/20071019#1192757543]]
