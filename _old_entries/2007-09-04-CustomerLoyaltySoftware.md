---
title: 顧客ロイヤルティソフトウェア
tags: [domain driven design]
---

http://martinfowler.com/bliki/CustomerLoyaltySoftware.html

2007/9/4

//I was in the Calgary office last week and had a good chat with John Kordyback, one of our most trusted technical leads. He's worked on, and dug into, a number of travel loyalty software systems (frequent flyer/sleeper etc) and we talked about the nature of these kinds of things and how to think about them in a more fruitful manner.

先週、カナダのカルガリーオフィスでJohn Kordybackと楽しい会話をすることができた。
彼は最も信頼できる技術リーダーの1人だ。
彼は、旅行関係のロイヤルティソフトウェアシステムに従事（というか、どっぷり漬かって）いる（たとえば、Frequent FlyerやSleeperなどだ）。
我々は、これらのシステムの本質について、
そして、
より実りある方法で考えるにはどのようにすればよいか、
といったことについて話し合った。

//The core of of a loyalty system is a system to keep track of points (or miles). This should allow customers to see their points and also for the company to manage the unredeemed points. Although it seems that most people don't see it this way, this is essentially an accounting system, just switching points for dollars. John's observation was that repeatedly he runs into what people see as difficult problems that are much easier to deal with once you put accounting spectacles on.

ロイヤルティシステムの肝は、ポイント（やマイル）の記録にある。
顧客は自分のポイントを参照できなければならないし、会社はまだ引き換えられていないポイントを管理できなければならない。
多くの人はそうは思わないかもしれないが、実はこれはお金がポイントに換わっただけで、本質的には会計システムと同じなのである。
Johnによると、会計の視点から見れば簡単なものでも、そう思わないがために難しい問題だと捉えてしまう光景に何度も直面したことがあるそうだ。

//An example of this is dealing with ad-hoc changes. However good your automated rules processing is, there always cases when something odd happens and you have to intervene manually. The result for many systems is and ad hoc change to totals that is error prone and unaudited. With an accounting frame of mind, however, you look at these changes as accounting adjustments and the patterns for this are well understood.

たとえば、アドホックな変更の取り扱いがそうである。
自動化されたルール処理がどんなに優れていても、対応できないケースは必ず起こるものであり、その場合は手動で調整する必要がある。
その結果、多くのシステムではあらゆる箇所にアドホックな変更が入ってしまい、
目が行き届かないエラーの温床となっている。
しかし、会計の考え方をすれば、こうした変更は会計調整（accounting adjustments）として考えることができるし、[[このパターン|http://martinfowler.com/eaaDev/AccountingNarrative.html]]自体はよく知られたものである。

//A notable difference between a loyalty program and most accounting systems is that a loyalty program is more about managing liabilities rather than managing assets. Hence there's more focus on things like risk management, as well as common themes like taxes and revenue reporting.

ロイヤルティプログラムと会計システムの大きな違いは、ロイヤルティプログラムは資産ではなく負債を管理する点である。
つまり、税金、利益報告などよくある項目以外に、
リスク管理などのようなものにも焦点をあてているということだ。

//Many loyalty systems have multiple kinds of points, such as such as regular miles and elite qualifying miles. This is a common point of complexity. If you use an accounting viewpoint, however, you can track these easily as multiple currencies.

多くのロイヤルティシステムには、複数の種類のポイントがある。
たとえば、通常のマイルとエリート会員資格マイル、といった具合だ。
これはよく複雑だといわれるところだ。
会計の考え方をすれば、これは複数通貨だと考えることができる。
そうすれば、簡単にこれらを記録することができるだろう。

//An interesting twist on this is potential points. If I book a flight for next month, the airline needs to know that there are miles I will earn when I fly next month (potential miles). These potential miles affect their liabilities. However it's only when I fly that they turn into real miles. Again accounting thinking can help here, we can use multiple currencies again, or use an accounts payable notion. The mechanisms are there and well understood, we just have to apply the model to the situation.

ちょっと変わったものとしては、見越ポイント（potential points）という面白いものがある。
たとえば、私が来月の飛行便を予約したら、航空会社は私が来月稼ぐであろうマイルをその時点で知る必要がある（これが見越マイルだ）。
この見越マイルは会社の負債につながる。
私が飛行機に乗って実際にマイルになったときに負債になるのである。
またかと思うが、ここでも会計の考え方をすればいい。
複数通貨あるいは買掛債務の考え方ができる。
このメカニズム自体はよく知られたものなので、
この状況にこのモデルを適用しさえすればよい。

//We fleshed this out in practice where we also found it really helpful to use TestDrivenDevelopment. A group of people spent a couple of weeks trying to sort out potential miles with planned design, but the core issue was cracked in a couple of days with TDD. The crucial part of this was focusing on examples to make the problem concrete.

私たちはこの考えを肉付けして現場に投入してみた。
そこでは、[[TestDrivenDevelopment]]が非常に役に立つということも分かった。
あるグループが、計画的設計で数週間かけて見越マイルを整理した。
コア部分については、数日間に分割してTDDで行った。
難しかったのは、問題を具現化するために実例に焦点をあてることだった。

//The accounting analogy also applies, although partly less directly, to deciding how to award miles for activity. Any program has activity rules that need to be very flexible and need to cope with constant changes to the loyalty program. We can look at this as following the model of domain events triggering accounting entries through using Agreement Dispatchers. This is a pattern John and I have used lots of times and works well to these kinds of changing rules. Essentially we have agreements that represent the overall program rules for a class of participant. Each agreement consists of a set of posting rules keyed by the type of event and a date range. When an domain event occurs (a hotel stay) we look up the agreement dispatcher for the customer, and use the event to look up the right posting rule. We then run the posting rule to create the appropriate accounting entries to represent the miles for the event. The time dating of the events allow us to change posting rules ! over time but still be able to handle old events and correctly do automated processing of adjustments. (Some day I'll finish writing up these patterns, but what I have on the web is hopefully enough to give you some ideas.)

会計の例えは、ある行動に対してマイルをどのように付与するかを決めることにも適用できる（そのまま適用できるわけではないが）。
あらゆるロイヤルティプログラムには行動ルールがあるが、
それはロイヤルティプログラムの頻繁な変更に対応できるように柔軟でなければならない。
これは勘定記入（エントリ）のトリガとなる[[Agreement Dispatchers|http://martinfowler.com/eaaDev/AgreementDispatcher.html]]を使ったドメインイベントのモデルとして捉えることができる。
これはJohnと私が何度も使ったパターンで、
こうしたルールの変更にうまく対応できるものである。
基本的に参加者のクラスについての全般的なプログラムのルールを示した協定（agreements）があり、各協定はイベントのタイプと日付範囲がキーになった転記ルールから成り立っている。
ドメインイベントが発生したら（たとえばホテルに泊まったら）、この顧客のAgreement Dispatcherを参照して、イベントから転記ルールを取得する。
転記ルールを実行して、イベントに対応したマイルを示す適切な勘定記入を作る。
イベントを指す日時があるので、あとから転記ルールを変更できるが、
それでも古いイベントは操作できるし、
自動化された調整処理も正しく行うことができる。
（
これらのパターンについては、いずれ書き上げようと思う。ただ、これまでにWebに書いた内容を読んで、あなたが何らかかのアイデアを思いついてもらえれば幸いだ
）

//The second aspect of a loyalty system is tracking the customer experience. Since the accounting requires the system to record the customer's activity, the loyalty system acts as a natural base to learn from the customer's interactions with the company. Much of this is data mining - looking for patterns in customer behavior which can lead to new products and promotions. You can also use this activity history to assess the success of promotions - if you offer a mileage bonus for flying a route what is the response like?

ロイヤルティシステムのもうひとつの側面は、顧客の行動を追跡することである。
会計でも顧客の活動をシステムに記録する必要があるので、
ロイヤルティシステムは顧客の会社とのやり取りを記録する下地となる。
ほとんどの場合、これはデータマイニング（新しい製品やプロモーションにつながる顧客の行動パターンを見つけるもの）となる。
顧客の行動履歴を使って、プロモーションの成否を見積ることもできる。
たとえば、もしマイレージボーナスをつけたらその反応はどうなるか？といった具合だ。

//Like me, John is a strong proponent of using ReportingDatabases, and this is a good fit for this kind of problem. The accounting side needs a very different set of data structures and uses regular updates as activities occur. The customer experience analysis is all read only, so you can use less normalized structures with regular, but not necessarily real time, feeds from the accounting side.

私同様、Johnも[[ReportingDatabase]]の強い支持者である。
そして、この方式は上記のような問題にうまく適合している。
会計の側には様々なデータ構造が必要で、アクティビティが発生したときに定期的に更新されるデータを使用する。
一方、顧客行動分析の側のデータはすべて読み取り専用なので、
会計の側からやってくるあまり正規化されていないデータ構造が使える。
ただし、リアルタイムである必要はない。

//Taking it further, it seems reasonable to completely decouple the accounting and customer experience systems. They are both usually lodged together as a single customer loyalty system because they track the same events. Yet since they differ so much on the inside it may make more sense to treat them as two separate systems that feed off the same event stream (the accounting side would probably generate some events for the customer experience side too).

さらに事を進めていくと、会計と顧客行動分析を完全に切り離したほうがよいと思えてくる。
通常、同じイベントを追跡するために、両者は同一の顧客ロイヤルティシステムに同梱されている。
しかし、内部では多くの点で違いがあるため、
同じイベントストリームを扱う2つの別々のシステムとして扱うのが
当然のように思えてくる。
（
会計の側は、顧客行動分析の側に渡すイベントをいくつか生成することになるだろう
）

//One of the habits of customer experience tracking is frequent changes to the system to support new kinds of analysis. We speculated that we could try an approach that had a single stored event log of customer activity, and plug in relatively independent 'miners' that would transform selected information from the log into more particular data structures to do different kinds of analysis. The miners could be relatively independent of each other and thus easier to build.

顧客行動分析では、新しい分析をサポートするためにシステムを頻繁に変更することがよくある。
我々は、顧客行動を記録した単一のイベントログを使って、「データマイナー（miner）」に渡すことができないかと考えた。
データマイナーは、分析のためにイベントログから情報を選択し、特定のデータ構造に変換する。
データマイナーはお互いに比較的独立しているため、構築は簡単である。

//As you can see, our discussion did shift from looking at John's experiences to some of our joint speculations about how a system like this could be built in the future. What's clear to us is that there is a lot of room for exploring new ideas in this space that could introduce a new set of abstractions that would lead to systems that can provide better support to this business activity. More and more attention is being paid to this these days, so this seems like a fruitful territory for us to work in.

以上のように、我々の議論はJohn1人の経験から、
このようなシステムはこれからどのように作られるべきかといった2人の考察へと移っていった。
我々が今言えることは、
このようなビジネスアクティビティをよりよくサポートするシステムへとつながる新しい抽象化のセットを導入できるこの分野には、新しいアイデアを調査する余地はまだ多く残されているということだ。
このところ、ますます注目が集まっている。
我々にとって取り組むに値する実りある領域となっているようだ。
