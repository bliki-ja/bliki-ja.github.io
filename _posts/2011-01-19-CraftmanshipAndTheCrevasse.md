---
title: クラフトマンシップと裂け目
tags: [agile, extreme programming, process theory]
---

<!-- Daniel Terhorst-North's recent blog post on software craftsmanship has unleashed a lot of blog discussions (which I summarize below, if you're interested). There's a lot in there, but one of his themes particularly resonated with me, hence this post. -->
Daniel Terhorst-Northのソフトウェアクラフトマンシップに関する
ブログ記事が多くの議論を引き起こしました（興味のある方のために末尾にまとめました）。
論点はいろいろとあるのですが、あるテーマに共感したので、私もこの記事を書くことにしました。

<!-- Before I get to that, however, I just want to push one element off to the side.  -->
<!-- I've long felt that debates about metaphors for software development are tedious.  -->
<!-- While MetaphoricQuestioning has its place 
 !-- 	I'm fundamentally uninterested in whether software development is a craft, an art, a trade, or a dessert topping. -->

その前に、あることに触れておきたいと思います。
私は[長い間](/OOPSLA2004)、ソフトウェア開発におけるメタファーの議論は退屈だと感じています。
すでに[メタファによる問いかけ](/MetaphoricQuestioning)に書いていますが、
ソフトウェアが開発がクラフトなのか、アートなのか、トレードなのか、デザートのトッピングなのかといったことには、基本的に一切興味がありません。

<!-- The point that matters to me  -->
<!-- isn't about the craftsmanship metaphor,  -->
<!-- but more a characteristic of the movement
 !-- 	that seems to have sprung up in the last couple of years. -->
<!-- From my outsider perspective,  -->
<!-- the primary force that's energized the software craftsmanship community  -->
<!-- is a reaction to the change in the agile movement.  -->
<!-- In the early days of the agile virus, 
 !-- 	the dominant strain was Extreme Programming,  -->
<!-- which has a lot to say about technical practices.  -->
<!-- Now the dominant agile strains are Scrum and Lean, 
 !-- 	which don't care very much about programming -  -->
<!-- and thus those people 
 !-- 	who primarily self-identify as programmers 
 !-- feel a large part of their life is no longer important in the agile world. -->

私にとって重要なのは、
クラフトマンシップのメタファーではなく、
この数年で生まれたムーブメントの特徴です。
部外者の私から見ると、
ソフトウェアクラフトマンシップのコミュニティの主な原動力は、
アジャイルムーブメントの変化に対する反動だと思います。
初期のアジャイルの代表的なウィルスはエクストリームプログラミングであり、
技術的なプラクティスについて多くのことを語っていました。
しかし、現在のアジャイルの代表的なウィルスはスクラムとリーンであり、
これらはプログラミングにあまり関心がありません。
したがって、自分をプログラマだと思っている人たちは、
アジャイルの世界では[もはや重要視されていない](https://www.infoq.com/news/2010/08/agile2010-programmer-sessions/)と感じるようになったのです。

![](https://martinfowler.com/bliki/images/danNorth.jpg)

*Dan North (aka tastapod)*

<!-- The software craftsmanship world, therefore,  -->
<!-- is place where programming can become front-and-central again.  -->
<!-- People can talk about testing, 
 !-- 	how to learn and use functional languages, 
 !-- 	principles of good design, etc.  -->
<!-- The management and analysis issues can then 
 !-- 	be left to the debilitated agile community.  -->
<!-- There's much I sympathize with here.  -->
<!-- I accept the DesignStaminaHypothesis 
 !-- 	which suggests that you need to pay attention to good technical practices 
 !-- 	if you want to develop software effectively.  -->
<!-- So a movement that gives these issues attention is important.  -->
<!-- But there also lies a danger, -->
<!--  that by focusing too much on technical issues 
 !-- the craftsmanship movement will underplay the equally vital role of customer communication. -->

ソフトウェアクラフトマンシップの世界では、プログラミングが再び中心的な存在になります。
ここでは、
テスティング、関数型言語の学習や使用の方法、優れた設計の原則などについて議論することができます。
そして、マネジメントや分析に関する話題は、衰退するアジャイルコミュニティに任せればいいのです。
私にも共感できるところがあります。
私は[設計＝スタミナ仮説](/DesignStaminaHypothesis)を受け入れています。
これは、ソフトウェアをうまく開発したいのであれば、
優れた技術プラクティスに注意を払べきというものです。
したがって、クラフトマンシップのようなムーブメントは重要です。
しかし、技術的な側面ばかり重視するようになると、
顧客とのコミュニケーションという同等に重要な側面が軽視される危険性があります。

<!-- One thing I like so much about Kent's work 
 !-- 	is that there's a real balance 
 !-- 	between the relationship with the customer and the skills required 
 !-- 	to execute properly on our half the bargain.  -->
<!-- I remember him saying at the AgileManifestoMeeting 
 !-- 	that his primary aim with Extreme Programming was to 
 !-- 	heal the divide between software developers and their customers.  -->
<!-- This divide, which Dan and I characterized as the "yawning crevasse of doom", 
 !-- 	is one the most important problems in software development. -->

Kent Beckの言葉で私が大好きなものがあります。
それは、顧客との関係と契約を実行するために必要なスキルの間にバランスがある、というものです。
彼は[アジャイルマニフェストのミーティング](/AgileManifestoMeeting)で
エクストリームプログラミングの主な目的は「ビジネスと開発の分断を修復すること」だと言っていました。
この分断は、Danと私が「[運命の裂け目](https://www.infoq.com/news/2008/08/Fowler-North-Crevasse-of-Doom/)」と呼んでいるものであり、ソフトウェア開発における最も重要な問題です。


<!-- A large part of the blame for the crevasse lies in organizational habits
 !-- 	that are founded on the notion programmers and customers are such different creatures  -->
<!-- that they can't communicate (and shouldn't try).  -->
<!-- But many programmers gladly seem to go along with widening the crevasse too.  -->
<!-- Several years ago I was struck by Eric Evans's observation 
 !-- 	that as developers get more senior 
 !-- 		they tend to focus more on technical issues 
 !-- 		and don't tend to engage in understanding the domain they are working in.  -->
<!-- Domain-Driven Design is very much about trying to change that -->
 <!-- - although often it seems to get bogged down in discussions of topics such as how to use dependency injection on your repositories.  -->
<!-- (My own career has also suffered from this.  -->
<!-- As I've developed as a general software development pundit,  -->
<!-- I've no longer been able to work in domain modeling 
 !-- - even though that's always been my favorite part of software development.) -->
この裂け目の大きな原因は、プログラマと顧客は異なる生き物であり、
コミュニケーションできない（すべきではない）という考えに基づいた組織の習慣にあります。
しかし、多くのプログラマは、裂け目が広がることを喜んでいるようです。
数年前、私はEric Evansの観察に感銘を受けました。
それは、開発者はシニアになればなるほど、技術的な問題にフォーカスする傾向があり、
自分たちが働いているドメインを理解しようとしなくなる、というものです。
ドメイン駆動設計はそれを変えようとするものなのですが、
リポジトリにおけるDIの使い方のような議論に矮小化されてしまいます。

（私のキャリアも同じ問題に悩まされてきました。
ソフトウェア開発の専門家として成長していくと、
私の大好きなドメインモデリングに携わることができなくなっていくのです。）


<!-- So just as Scrum and Lean exacerbate this problem 
 !-- 	by neglecting the technical skills,  -->
<!-- I fear craftsmanship in turn may make the crevasse worse by neglecting the relationship skills.  -->
<!-- My ideal of a programmer is  -->
<!-- someone who is not just skilled in the craft of programming,
 !--  but is also energized by learning about the domain by communicating with domain experts  -->
<!-- so that she can participate in finding the best ways to get software to help make customers rock at what they do. -->
<!-- Paraphrasing Dan, the software shouldn't be at the center of a programmer's world, instead a programmer should focus on the benefit that the software is supposed to deliver. -->

スクラムやリーンが技術的スキルを軽視して問題を悪化させたように、
クラフトマンシップが人間関係のスキルを軽視して裂け目を悪化させるのではないかと危惧しています。
私が理想とするプログラマは、
プログラミングの技術に長けているだけでなく、
ソフトウェアが顧客の仕事を成功に導くための方法を見つけるために、
専門家とコミュニケーションをとりながらドメインについて学習できるような人物です。
Danの言葉を借りれば、
ソフトウェアをプログラマの世界の中心に置くべきではなく、
プログラマはソフトウェアが提供する価値にフォーカスすべきなのです。

<!-- The blog chatter
 !-- (includes items posted in response to this entry.) -->

### 関連するブログ記事

（この記事に対する返信も含みます）

<!-- Daniel Terhorst-North's original post
 !-- Liz Keogh explains her discomfort with the software craftsmanship manifesto.
 !-- Gil Zilberfeld draws a comparison between software craftsmanship and alt.net.
 !-- Jason Gorman wants us to avoid getting hung up on labels
 !-- Michael Feathers looks for more deliberate practice in our work.
 !-- George Dinwiddie provides a physical example of why quality work is important to a customer, and how certification and licensing doesn't help.
 !-- Daniel Terhorst-North expands and clarifies some his earlier points.
 !-- Bob Martin says software craftsmanship is only about programmers tired of writing crap.
 !-- Bob Martin thinks my fears are groundless (I hope he's right). -->

* Daniel Terhorst-Northの[オリジナル記事](https://dannorth.net/2011/01/11/programming-is-not-a-craft/)です。
* [Liz Keogh](https://lizkeogh.com/2011/01/14/why-i-didnt-sign-the-software-craftsmanship-manifesto/)は、ソフトウェアクラフトマンシップのマニフェストへの違和感を説明しています。
* [Gil Zilberfeld](https://www.gilzilberfeld.com/2011/01/path-already-taken.html)は、ソフトウェアクラフトマンシップとalt.netを比較しています。
* Jason Gormanは、ラベルにこだわらないことを勧めています。（訳注：リンク切れ）
* [Michael Feathers](https://michaelfeathers.typepad.com/michael_feathers_blog/2011/01/the-thing-of-software-development.html)は、私たちの仕事にもっとよく考えられたプラクティスが必要だと考えています。
* [George Dinwiddie](https://blog.gdinwiddie.com/2011/01/17/trades-crafts-and-certification/)は、なぜ質の高い仕事が顧客にとって重要なのか、そして資格やライセンスがいかに役に立たないかを、身をもって示しています。
* [Daniel Terhorst-North](https://dannorth.net/2011/01/15/on-craftsmanship/)は、以前のポイントを拡張および明確にしています。
* [Bob Martin](http://blog.cleancoder.com/uncle-bob/2011/01/17/software-craftsmanship-is-about.html)は、ソフトウェアクラフトマンシップはくだらないものを書くのに飽きたプログラマのためのものだと言っています。
* [Bob Martin](http://blog.cleancoder.com/uncle-bob/2011/01/19/individuals-and-interactions.html)は、私の心配は杞憂に過ぎないと言っています（私もそうなることを願っています）。
