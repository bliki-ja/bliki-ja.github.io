---
title: ケント・ベックの設計のルール
tags: [extreme programming,programming style,refactoring]
---

<!-- Kent Beck came up with his four rules of simple design while he was developing ExtremeProgramming in the late 1990's. I express them like this. [1]- -->

Kent Beckが1990年代に[エクストリームプログラミング（XP）](/ExtremeProgramming)を開発したときに、シンプルな設計の4つのルールを考案した。私なりに表現したものが以下になる[1]。

<!-- Passes the tests
 !-- Reveals intention
 !-- No duplication
 !-- Fewest elements -->

* テストをパスさせる
* 意図を明らかにする
* 重複を排除する
* 要素を最小限にする

<!-- The rules are in priority order, so "passes the tests" takes priority over "reveals intention" -->
ルールには優先順位がある。たとえば「テストをパスさせる」は「意図を明らかにする」よりも優先される。

<!-- The most important of the rules is "passes the tests".  -->
<!-- XP was revolutionary in how it raised testing to a first-class activity in software development, 
 !-- 	so it's natural that testing should play a prominent role in these rules.  -->
<!-- The point is 
 !-- that whatever else you do with the software, 
 !-- 	the primary aim is that it works as intended and 
 !-- 	tests are there to ensure that happens. -->

このルールで最も重要なのは「テストをパスさせる」だ。XPが革新的だったのは、テストをソフトウェア開発におけるファーストクラスの活動に持ち上げたことでらう。このルールのなかでテストが最も重要な役割を担うのは当然だろう。ソフトウェアで何をするにしても、第一の目的は意図どおりにソフトウェアが動作することであり、テストはそれを確実にするためのものである。

<!-- "Reveals intention" is Kent's way of saying the code should be easy to understand.  -->
<!-- Communication is a core value of Extreme Programing, 
 !-- 	and many programmers like to stress that programs are there to be read by people.  -->
<!-- Kent's form of expressing this rule
 !-- 	implies that the key to enabling understanding 
 !-- 	is to express your intention in the code,  -->
<!-- so that your readers can understand what your purpose was when writing it. -->

「意図を明らかにする」は、Kentの言葉を借りれば、コードは理解しやすくなければならないというものだ。コミュニケーションはXPの中心的な価値である。多くのプログラマーは「プログラムは読まれるためにある」と主張する。このルールには、コードを理解しやすくするには、コードを書いた意図を表現すべきという意味が込められている。コードを書いたときの目的を読み手に理解してもらうのである。

<!-- The "no duplication" is perhaps the most powerfully subtle of these rules.  -->
<!-- It's a notion expressed elsewhere as DRY or SPOT [2], 
 !-- 	Kent expressed it as saying everything should be said "Once and only Once."  -->
<!-- Many programmers have observed 
 !-- 	that the exercise of eliminating duplication is a powerful way to drive out good designs. [3] -->

「重複を排除する」は、おそらく最もわかりにくいルールだろう。これはDRYやSPOT[2]とも呼ばれる概念であり、Kentはすべてのことは「Once and only Once（ただ一度だけ）」言うべきだと表現している。多くのプログラマーが、重複を排除することで優れた設計につながることに気づいている[3]。

<!-- The last rule tells us that anything that doesn't serve the three prior rules 
 !-- 	should be removed.  -->
<!-- At the time 
 !-- 	these rules were formulated there was a lot of design advice 
 !-- 	around adding elements to an architecture in order to increase flexibility 
 !-- 	for future requirements.  -->
<!-- Ironically the extra complexity of all of these elements
 !-- 	usually made the system harder
 !-- 	to modify and thus less flexible in practice. -->

最後のルールは、それまでの3つのルールに当てはまらないものは削除すべきというものだ。このルールができた当時は、将来の要求に向けた柔軟性を確保するために、アーキテクチャには要素を追加すべきというアドバイスが巷にありふれていた。皮肉なことに、要素を追加するとさらに複雑になり、システムの修正が困難になり、柔軟性が損なわれてしまうのだった。

<!-- People often find there is some tension between "no duplication" and "reveals intention", 
 !-- 	leading to arguments about which order those rules should appear.  -->
<!-- I've always seen their order as unimportant,  -->
<!-- since they feed off each other in refining the code.  -->
<!-- Such things as adding duplication to increase clarity is often papering over a problem
 !-- , when it would be better to solve it[4]. -->

「重複を排除する」と「意図を明らかにする」は緊張関係にあるため、どちらを優先すべきかについて議論になることがある。私はコードを洗練させるためにお互いに影響し合うものなので、優先順位は重要ではないと考えている。たとえば、わかりやすくするために重複を追加すると、解決すべき問題を覆い隠してしまうことがある[4]。

![](https://martinfowler.com/bliki/images/beckDesignRules/sketch.png)

<!-- What I like about these rules is 
 !-- that they are very simple to remember, 
 !-- 	yet following them improves code in any language or programming paradigm
 !-- that I've worked with.  -->
<!-- They are an example of Kent's skill in finding principles
 !-- 	that are generally applicable and yet concrete enough to shape my actions. -->

私がこのルールが好きなのは、シンプルなのに覚えやすいところだ。また、ルールに従えば、これまでに私が扱ってきたどの言語やプログラミングパラダイムであっても、コードを改良することができる。一般的に適用可能でありながら、行動につながるほど具体的な原則を発見するという、Kentのスキルを示した一例である。


<!-- At the time there was a lot of “design is subjective”, “design is a matter of taste” 
 !-- bullshit going around. I disagreed.  -->
<!-- There are better and worse designs.  -->
<!-- These criteria aren’t perfect,
 !--  but they serve to sort out some of the obvious crap and (importantly) 
 !--  you can evaluate them right now.  -->
<!-- The real criteria for quality of design, 
 !-- “minimizes cost (including the cost of delay) and maximizes benefit over the lifetime of the software,” can only be evaluated post hoc,  -->
<!-- and even then any evaluation will be subject to a large bag full of cognitive biases. 
 !-- The four rules are generally predictive. -->

> 当時は「設計は主観的だ」「設計は好みの問題だ」などという戯言があふれていた。私はそうは思わなかった。設計には「良い設計」と「悪い設計」があるはずだ。その評価基準は完璧なものではないかもしれないが、明らかに悪いものを判別できるし、（こちらのほうが重要だが）すぐにでも評価に使うことができる。設計の真の評価基準は「ソフトウェアのライフサイクルにおいて、コスト（遅延コストも含む）を最小化し、ベネフィットを最大化する」であるが、それは事後的にしか評価できない。評価できたとしても、多くの認知バイアスに左右されてしまうだろう。この4つのルールは予測可能なものである。
>
> -- Kent Beck

<!-- Further Reading -->
## さらに詳しく知るために

<!-- There are many expressions of these rules out there, here are a few that I think are worth exploring: -->

このルールについてはいくつかの表現がある。私が探索する価値があると思うものを紹介する。

<!-- J.B. Rainsberger's summary. He also has a good discussion of the interplay between the rules 2&3.
 !-- These rules, like much else of Extreme Programming, were originally discussed and refined on Ward's Wiki. -->
* [J.B. Rainsbergerのまとめ](https://blog.jbrains.ca/permalink/the-four-elements-of-simple-design)。彼は[ルール2と3の相互作用について](https://blog.thecodewhisperer.com/permalink/putting-an-age-old-battle-to-rest)も考察している。
* [Ron Jeffries](https://ronjeffries.com/xprog/classics/expemergentdesign/)
* このルールは、XPの他のルールと同様に、元々は[WardのWiki](http://wiki.c2.com/?XpSimplicityRules)で議論されたものである。

<!-- Acknowledgements -->
## 謝辞

<!-- Kent reviewed this post and sent me some very helpful feedback, 
 !-- 	much of which I appropriated into the text. -->

Kentに記事をレビューしてもらった。彼は有益なフィードバックを送ってくれた。その多くを本文でも使用させてもらった。

<!-- Notes -->
## 注記

<!-- 1: Authoritative Formulation -->
1: 権威ある表現形式

<!-- There are many expressions of the four rules out there, 
 !-- Kent stated them in lots of media, 
 !-- and plenty of other people have liked them and phrased them their own way.  -->
<!-- So you'll see plenty of descriptions of the rules, 
 !-- 	but each author has their own twist - as do I. -->

このルールにはさまざまな表現がある。Kentが多くのメディアで触れていたり、それを好んだ多くの人たちが自分なりの表現をしていたりするからだ。そのため、ルールの説明もたくさんある。各自が工夫しているからだ。私もそのひとりである。

<!-- If you want an authoritative formulation 
 !-- 	from the man himself, probably your best bet is from the first edition of The White Book (p 57) in the section that outlines the XP practice of Simple Design. -->

本家の権威ある表現形式を読みたいのなら、[白本](https://www.amazon.com/gp/product/0201616416)の初版の「シンプルな設計」のXPプラクティスのところを読むべきだろう。

<!-- Runs all the tests
 !-- Has no duplicated logic. Be wary of hidden duplication like parallel class hierarchies
 !-- States every intention important to the programmer
 !-- Has the fewest possible classes and methods -->

* すべてのテストを実行する。
* ロジックの重複を排除する。並列したクラス階層などの隠れた重複に注意すること。
* プログラマーにとって重要な意図をすべて記述する。
* クラスやメソッドを可能な限り少なくする。

<!-- (Just to be confusing, there's another formulation on page 109 that omits "runs all the tests" and splits "fewest classes" and "fewest methods" over the last two rules.  -->
<!-- I recall this was an earlier formulation that Kent improved on while writing the White Book.) -->

（なお、「すべてのテストを実行する」を削除して、最後のルールを「最小限のクラス」と「最小限のメソッド」に分割したルールもある。これはKentが白本を書きながら改良した初期の表現形式だったと記憶している。）

<!-- 2: DRY stands for Don't Repeat Yourself, and comes from The Pragmatic Programmer. SPOT stands for Single Point Of Truth. -->

2: DRYは「Don't Repeat Yourself（繰り返すな）」の略であり、『[達人プログラマー](https://www.amazon.com/gp/product/020161622X)』で紹介されたものである。SPOTは「[Single Point Of Truth](http://www.catb.org/~esr/writings/taoup/html/ch04s02.html#spot_rule)（単一真実点）」の略である。

<!-- 3: This principle was the basis of my first design column for IEEE Software. -->
3: この原則は、私がはじめて[IEEE Softwareに寄稿した設計に関するコラム](https://martinfowler.com/ieeeSoftware/repetition.pdf)のベースになった。

<!-- 4: When reviewing this post, Kent said "In the rare case they are in conflict 
 !-- (in tests are the only examples I can recall), 
 !-- empathy wins over some strictly technical metric." 
 !-- I like his point about empathy 
 !-- - it reminds us that when writing code we should always be thinking of the reader. -->
4: Kentに記事をレビューしてもらったとき、彼は「コンフリクトが発生する稀なケースでは（私が思い出せるのはテストだけだが）、技術的な指標よりも共感のほうが勝る」と言った。共感について指摘するところが彼のいいところだ。コードを書くときには常に読み手のことを考えるべきだということを思い出させてくれる。

----

![](https://martinfowler.com/bliki/images/beckDesignRules/kent.jpg)

<!-- Kent Beck developed Extreme Programming, Test Driven Development, 
 !-- 	and can always be relied on for good Victorian facial hair for his local ballet. -->
Kent BeckはXPとテスト駆動開発を開発した人物だ。地元の舞台のために生やしたヴィクトリア朝のヒゲを持つ男として常に信頼されている。
