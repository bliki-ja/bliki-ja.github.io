---
title: AgileVersusLean
tags: TAGS
---

http://martinfowler.com/bliki/AgileVersusLean.html

2008/6/26

アジャイル対リーン

//I'm thinking of using agile software development - but should I use Lean software development instead?

「アジャイルソフトウェア開発をしようと思っています。
ですが、アジャイルの代わりにリーンソフトウェア開発をしたほうがいいんでしょうか？」

//This question is one I've run into a few times recently. It's not a question I can answer quickly as the question is based on a false premise about the relationship between lean and agile. So first I need to go into some history to help explain that relationship.

最近、こういう質問を何回か受けた。安易に答えるわけにはいかない——
そもそも、アジャイルとリーンの関係について誤解があるのだ。
そこで、まず歴史をひもといて、その関係について説明しよう。

//"Lean" fundamentally refers an approach in the manufacturing world that was originally developed by Toyota in the 1950's. At this time Japanese industry was recovering from the ravages of the second world war. This approach, often called the Toyota Production System is mostly credited to Taiichi Ohno, although he was influenced by various western thinkers - particularly Deming. The Toyota Production System became well known in the rest of the world in the 1990's when westerners started writing books to explain why the Japanese were beating the US at so many industries. The western writers called this approach Lean Manufacturing. Although Japanese industry in general has run into stickier times since then, Toyota continues to outperform most western auto companies.

「リーン」は、もともとは工業生産の世界で1950年代にトヨタが開発した手法を指す。
当時日本は第二次世界大戦の打撃から立ち直りつつあった。
リーン手法は、トヨタ生産方式と呼ばれることも多いが、
主に[[大野耐一|http://en.wikipedia.org/wiki/Taiichi_Ohno]]の功績とされている。
もっとも、大野は西洋の多くの思想の影響を受けている。
特に[[デミング|http://en.wikipedia.org/wiki/W._Edwards_Deming]]の影響が強い。
トヨタ生産方式が日本以外の世界中で知られるようになったのは、
日本が数多くの業種でアメリカを打ち負かした理由について、
西洋人が1990年代になってから多数の書籍を著してからである。
西洋の著者はこの手法をリーン生産方式と呼んだ。
その後日本の業界は全体としては苦しい時代を迎えているが、
トヨタは西洋のほとんどの自動車会社に勝ち続けている。

//Agile software development is an umbrella term for several software development methods (including Extreme Programming and Scrum) that were developed in the 1990s. These methods share a common philosophy which was described as values and principles in the Manifesto for Agile Software Development. (My essay "The New Methodology" goes into this in more depth.)

アジャイルソフトウェア開発とは、エクストリームプログラミングやSCRUMなど、
いくつかのソフトウェア開発手法を総称する名前である。
これらの多くの手法は1990年代に開発された。
こうした手法はいずれも、[[アジャイルソフトウェア開発マニフェスト|http://agilemanifesto.org/]]で価値と原理として述べられている哲学を含んでいる。
(私のエッセイ「[[The New Methodology|http://martinfowler.com/articles/newMethodology.html]]」で詳しく説明している。)

//There was a connection between lean manufacturing and agile software from the beginning in that many of the developers of the various agile methods were influenced by the ideas of lean manufacturing. This connection was made more explicit by Mary and Tom Poppendieck. Mary had worked in a manufacturing plant that had adopted lean manufacturing and her husband Tom is an experienced software developer. They have written a couple of books on the application of Lean ideas in the software world. When people talk about Lean Software they are usually referring to the ideas in these books, although others have been making similar links.

リーン生産とアジャイルソフトウェアには最初からつながりがあったのだ。
アジャイル手法の開発者は、いろいろな形でリーン生産から影響を受けている。
[[メリー・ポペンディークとトム・ポペンディーク|http://www.poppendieck.com/]]がこのつながりをよりはっきりさせた。
メリーはリーン生産方式を導入した生産工場で働いていたことがあり、
トムのほうは熟練したソフトウェア開発者だ。
2人はリーンをソフトウェアの世界に適用することについて何冊も本を書いた。
リーンソフトウェアという言葉は、ほとんどの場合、2人の著書から来ている。
もっとも、他にも同じようなつながりを作った人たちがいる。

//Lean manufacturing and agile software methods have a very similar philosophy. Both place a lot of stress on adaptive planning and a people focused approach. As a result lean's ideas fit in very well with the agile software story. Mary and Tom have both been very active in the agile community - indeed I'd credit Mary with an important role in forming the Agile Alliance. (Like me, she was a founding board member of the Agile Alliance, but she was far more effective in it than I was.)

リーン生産方式とアジャイルソフトウェア手法はきわめて似通った哲学を持っている。
どちらも柔軟で適応的な計画を重視し、人間に焦点を当てた手法を大事にしている。
その結果、リーンのアイデアはアジャイルソフトウェアの場面にとてもしっくりと馴染む。
メリーとトムは2人ともアジャイルコミュニティで精力的に活動している
——[[アジャイルアライアンス|http://www.agilealliance.org/]]の設立にはメリーが重要な役割を果たしたと私は考えている。
(私と同じく彼女もアジャイルアライアンスの創立メンバーだ。
だが私より、彼女のほうがはるかに功績がある。)

//I've already mentioned that lean manufacturing was an influence on agilists from the beginning, and in the last few years more ideas have appeared in the agile world with a clear lean manufacturing heritage. These range from concrete techniques like Value Stream Maps, to articulations of existing agile concepts such as the Last Responsible Moment for making design decisions. The idea of thinking of analysis and design documentation as inventory came from the Poppendiecks. Several agilists I know emphasize the importance of reducing cycle time - another strongly lean-influenced idea. My colleague Richard Durnall has a nice summary of how lean knowledge can blend in with agile thinking.

前に述べたように、リーン生産は最初からアジャイルに影響を与えてきており、ここ数年は特に、
リーン生産から継承されていることがはっきりしているアイデアがアジャイルで採用されている。
バリューストリームマップのような確立した手法や、
以前からアジャイルでうたわれていたことに名前を付けたと言える「最終責任時点」など、
多岐にわたっている。
分析や設計のドキュメントを在庫と考える手法はポペンディークの書籍から来たものだ。
私が知っている何人ものアジャイラーがサイクルタイムを短縮することの重要さを訴えている
——これもまたリーンに強い影響を受けたアイデアである。
私の同僚のRichard Durnallが[[リーンの知識がアジャイル思想とどう混ざったかに関する考察|http://www.richarddurnall.com/?p=44#more-44]]を書いている。

//A particularly strong appeal to many people about lean ideas is that they provide a way of explaining agile software development to people - particularly senior people both within IT and senior customers. This explanation ranges from a crude appeal to emulate Toyota to detailed discussions of how lean manufacturing's benefits translate to the ideas in agile software development.

リーンのアイデアが多くの人に特に強く訴えかけるポイントは、
アジャイルソフトウェア開発を人に説明する方法、
とりわけIT業界や顧客のなかでも年寄りの人々(senior)に対してうまく説明する方法を提供してくれるところだ。
リーンを利用した説明には、単純にトヨタ式と同じだと乱暴に説明するものから、
リーン生産方式をソフトウェア開発にあてはめるとどんな利点があるか詳細に議論するものまで、いろいろある。

//So as you can see, lean and agile are deeply intertwined in the software world. You can't really talk about them being alternatives, if you are doing agile you are doing lean and vice-versa. Agile was always meant as a very broad concept, a core set of values and principles that was shared by processes that look superficially different. You don't do agile or lean you do agile and lean. The only question is how explicitly you use ideas that draw directly from lean manufacturing.

このとおり、リーンとアジャイルはソフトウェア業界において互いに深い関係にある。
そのため、互いに代替できるものではないことがわかると思う。
アジャイルをやっていればリーンをやっていることになるし、その逆もまた真である。
アジャイルという言葉はとても広い意味を持つものとして扱われてきた。
表面的には異なるプロセスであっても、価値と原理というコアの部分を共有しており、そここそがアジャイルである。
実践するのはアジャイルまたはリーンではない。
アジャイルとリーンだ。
違いがあるとしたら、リーン生産方式のアイデアをどれだけ直接的に利用するかという部分だけである。

//The Poppendiecks didn't introduce lean as a separate idea, nor did they introduce lean as a published process in the style of Scrum or XP. Rather they introduced lean as a set of thinking tools that could easily blend in with any agile approach. I think of lean as a strand of thinking within the agile community, like a pattern in a rich carpet.

ポペンディーク夫妻はリーンを、独立したアイデアだとか、
SCRUMやXPのような確立したプロセスだとかいうふうには紹介していない。
2人の紹介の仕方は、リーンを一連の思考ツールとして扱い、
どのアジャイル手法とも簡単に混ぜることができるというものだ。

//There is a distinct lean software community, as in a mailing list calling itself lean and people who label themselves as lean thinkers. But this is no different to the fact that there are also strong XP, Scrum, and other communities. Most people in these communities consider themselves part of the broader agile movement and many people are active in more than one of these agile communities. The whole point of coining the word 'agile' comes from a recognition that we share a core set of values and principles and this common core means what we have in common is greater than our differences.

リーンの名を冠したメーリングリストや、自分自身を「リーン思想」と呼ぶ人々のように、
リーンソフトウェアだけの独立したコミュニティは存在する。
これはXPだけ、あるいはSCRUMだけ、または他の手法だけのコミュニティが存在するという状況となんら変わりない。
こうしたコミュニティの多くのメンバーは、広範な意味でのアジャイル活動に参加していると考えているし、
一つ以上のアジャイルコミュニティで活動している人も少なくない。
「アジャイル」という言葉を使うことのそもそもの目的は、私たちがコアの価値と原理を共有し、
そして共有している部分のほうが互いの差異よりもずっと大きいと認め合うことにあるのだ。

(最初に訳した人: [[やっとむ|http://d.hatena.ne.jp/yach/]])
