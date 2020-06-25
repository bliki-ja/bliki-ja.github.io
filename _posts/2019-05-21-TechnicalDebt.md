---
title: 技術的負債
tags: [technical debt, programming style]
---

<!-- Software systems are prone to the build up of cruft - deficiencies in internal quality that make it harder than it would ideally be to modify and extend the system further.  Technical Debt is a metaphor, coined by Ward Cunningham, that frames how to think about dealing with this cruft, thinking of it like a financial debt. The extra effort that it takes to add new features is the interest paid on the debt. -->

ソフトウェアシステムでは、**クラフト**（出来の悪いもの）が生まれやすい。システムの修正や拡張をしようとしても、内部品質の欠如がそれを難しくしている。「技術的負債」とは、Ward Cunninghamが作ったメタファーである。ファイナンスの負債のように考えることで、こうしたクラフトの扱いのことを考えやすくなる。たとえば、新機能の追加にかかる余分な労力は、負債の返済にかかる利子である。

![](https://martinfowler.com/bliki/images/tech-debt/sketch.png)

> あらゆるソフトウェアシステムには、タスクを実行するために必要とされる「本質的な」複雑さが一定量含まれている……
> ……だが、ほとんどのシステムには「クラフト」が存在しており、理解を難しくしている。

> クラフトがあると、変更するのに余分な労力がかかる。

> 技術的負債のメタファーは、こうしたクラフトを「負債」として扱う。変更に必要な余分な労力は、負債の利子の返済に相当する。

<!-- Imagine I have a confusing module structure in my code base.  I need to add a new feature.  If the module structure was clear, then it would take me four days to add the feature but with this cruft, it takes me six days. The two day difference is the interest on the debt. -->

私のコードのモジュール構造が複雑だったとしよう。ここに新機能を追加したい。モジュール構造が明確ならば、4日で終わるだろう。だが、クラフトがあるので6日もかかってしまう。この2日の違いが、負債の利子である。

<!-- What most appeals to me about the debt metaphor is how it frames how I think about how to deal with this cruft.  I could take five days to clean up the modular structure, removing that cruft, metaphorically paying off the principal.  If I only do it for this one feature, that's no gain, as I'd take nine days instead of six.  But if I have two more similar features coming up, then I'll end up faster by removing the cruft first. -->

私が負債のメタファーを気に入っているのは、こうしたクラフトの扱いのことを考えやすくしてくれるところだ。たとえば、クラフトを削除してモジュール構造をクリーンにするのに5日かかるとしよう。負債のメタファーを使えば、元本を返済していることになる。だが、この機能のためだけにやったとすると、何の得も得られない。本来なら6日で終わるところが、9日もかかっているからだ。だが、似たような機能が他に2つあったとすれば、先にクラフトを削除することで、日数が短縮されただろう。

<!-- Stated like that, this sounds like a simple matter of working the numbers, and any manager with a spreadsheet should figure out the choices.  Sadly since we CannotMeasureProductivity, none of these costs are objectively measurable.  We can estimate how long it takes to do a feature, estimate what it might be like if the cruft was removed, and estimate the cost of removing the cruft.  But our accuracy of such estimates is pretty low. -->

このように言うと、数字をいじるだけの簡単なことのように聞こえる。スプレッドシートを操作するマネージャーが選択すればいいだけのようにも思える。だが、残念ながら[生産性は計測できない](/CannotMeasureProductivity)ので、これらのコストも客観的にはわからない。ある機能に必要な工数、クラフトを削除したあとにかかる工数、フラクトの削除にかかる工数を見積もることはできる。だが、こうした見積もりの正確度はかなり低い。

<!-- Given this, usually the best route is to do what we usually do with financial debts, pay the principal off gradually.  On the first feature I'll spend an extra couple of days to remove some of the cruft.  That may be enough to reduce the interest rate on future enhancements to a single day.  That's still going to take extra time, but by removing the cruft I'm making it cheaper for future changes to this code.  The great benefit of gradual improvement like this is that it naturally means we spend more time on removing cruft in those areas that we modify frequently, which are exactly those areas of the code base where we most need the cruft to be removed. -->

以上を踏まえると、我々がファイナンスの負債でやっているように、元本を少しずつ返済していくのが最善の道筋になるだろう。最初の機能については、余分な日数をかけてクラフトを削除する。これで新規に機能追加するときに、金利が1日くらいに下がるだろう。これでもまだ余分な時間はかかるだろうが、クラフトを削除したことで、これからコードを変更するときに安価にできる。このように少しずつ改善する大きな利点は、頻繁に修正する部分のクラフトの削除に時間をかけられるということだ。これは、コードから最もクラフトを削除したい部分でもある。

<!-- Thinking of this as paying interest versus paying of principal can help decide which cruft to tackle.  If I have a terrible area of the code base, one that's a nightmare to change, it's not a problem if I don't have to modify it.  I only trigger an interest payment when I have to work with that part of the software (this is a place where the metaphor breaks down, since financial interest payments are triggered by the passage of time).  So crufty but stable areas of code can be left alone.  In contrast, areas of high activity need a zero-tolerance attitude to cruft, because the interest payments are cripplingly high.  This is especially important since cruft accumulates where developers make changes without paying attention to internal quality - the more changes, the greater risk of cruft building up. -->

利子を返済するのか、それとも元本を返済するのかを考えれば、どのクラフトに対処すべきかを決定しやすくなる。コードにひどい部分があり、変更するのは悪夢のようだと思っていても、修正する必要がなければ問題にはなることはない。この部分に手を入れることがあっても、利子を支払えば済む（ファイナンスの利子は時間経過によって発生するので、ここはメタファーがうまく機能していない）。したがって、クラフトはあるが安定している部分が残る。一方、変更が激しい部分ではクラフトを容認できない。利子の支払いが異常に高くなるからだ。ここは特に重要である。開発者が内部品質に注意を払わずに変更を加えていると、クラフトが累積していくからだ。つまり、変更を加えていけば、クラフトが増加するリスクが高まるのである。

<!-- The metaphor of debt is sometimes used to justify neglecting internal quality.  The argument is that it takes time and effort to stop cruft from building up.  If there new features that are needed urgently, then perhaps it's best to take on the debt, accepting that this debt will have to be managed in the future. -->

負債のメタファーは、内部品質に対する無視を正当化するために使われることがある。クラフトが増えないようにするには、時間も労力もかかるという主張だ。緊急で必要な新機能があったときに、これから管理しなければいけないことを受け入れながら、負債を背負うこともあるだろう。

<!-- The danger here is that most of the time this analysis isn't done well.  Cruft has a quick impact, slowing down the very new features that are needed quickly.  Teams who do this end up maxing out all their credit cards, but still delivering later than they would have done had they put the effort into higher internal quality.  Here the metaphor often leads people astray, as the dynamics don't really match those for financial loans.  Taking on debt to speed delivery only works if you stay below the design payoff line of the DesignStaminaHypothesis, and teams hit that line in weeks rather than months. -->

ここで危険なのは、分析が十分ではないことが多いことだ。クラフトの影響はすぐに出る。緊急で必要な新機能を遅延させてしまうのだ。クレジットカードの限度額いっぱいまで使ってしまったチームは、内部品質を高めるために労力をかけたときよりもデリバリーが遅い。こうしたダイナミクスはファイナンスのローンとは一致していないため、メタファーを使っているとよくわからなくなってくる。負債を抱えることでデリバリーを加速できるのは、[設計＝スタミナ仮説](/DesignStaminaHypothesis/)の設計損益ラインを下回っているときだけである。そして、この設計損益ラインに到達するのは数か月ではなく数週間以内である。

<!-- There are regular debates whether different kinds of cruft should be considered as debt or not.  I found it useful to think about whether the debt is acquired deliberately and whether it is prudent or reckless - leading me to the TechnicalDebtQuadrant. -->

クラフトの種類によって負債とそれ以外に分けるべきか、という議論が定期的に起こる。私としては、その負債が「意図的」なものか、「慎重」なのか「無鉄砲」なのかで考えることが有益であると思っている。このことについては、[技術的負債の四象限](/TechnicalDebtQuadrant)にまとめた。

<!-- ## Further Reading -->
## さらに詳しく知るために

<!-- As far as I can tell, Ward first introduced this concept in an experience report for OOPSLA 1992. It has also been discussed on the wiki. -->

私の知る限り、Wardが最初にこの概念を提供したのは、[OOPSLA 1992](http://c2.com/doc/oopsla92.html)の体験レポートだった。今でも[Wiki](http://wiki.c2.com/?ComplexityAsDebt)で議論が続いている。

<!-- Ward Cunningham has a video talk where he discusses this metaphor he created. -->

Ward Cunninghamは、彼の作ったこのメタファーについて[動画で語っている](https://www.youtube.com/watch?v=pqeJFYwnkjE)。

<!-- Dave Nicolette expands on Ward's view of technical debt with a fine case study of what I refer to as Prudent Intentional debt -->

Dave Nicoletteは、Wardの技術的負債の考えを拡張し、[優れたケーススタディ](https://neopragma.com/2019/03/technical-debt-the-man-the-metaphor-the-message/)としてまとめている。私はこれを「[慎重かつ不注意](TechnicalDebtQuadrant)」型と呼んでいる。

<!-- A couple of readers sent in some similarly good names.  David Panariti refers to ugly programming as deficit programming.  Apparently he originally started using a few years ago when it fitted in with government policy; I suppose it's natural again now. -->

数名の読者から同様のいい名前が送られてきた。David Panaritiは、醜悪なプログラミングのことを「赤字プログラミング」と呼んでいる。彼は数年前から使い始めたようだが、当時の政策をよく表している。今でも自然に使える名前だ。

<!-- Scott Wood suggested "Technical Inflation could be viewed as the ground lost when the current level of technology surpasses that of the foundation of your product to the extent that it begins losing compatibility with the industry.  Examples of this would be falling behind in versions of a language to the point where your code is no longer compatible with main stream compilers." -->

Scott Woodは「現在の技術レベルがプロダクトの基盤のレベルを上回り、業界との互換性が失われるようになると、こうした基盤の喪失は『技術的インフレ』と見なせるだろう。言語のバージョンを例にすると、あなたのコードと主流のコンパイラとの互換性がなくなるようなことである」と提案している。

<!-- Steve McConnell brings out several good points in the metaphor, particularly how keeping your unintended debt down gives you more room to intentionally take on debt when it's useful to do so.  I also like his notion of minimum payments (which are very high to fix issues with embedded systems as opposed to web sites). -->

[Steve McConnell](http://www.construx.com/10x_Software_Development/Technical_Debt/)は、技術的負債の優れたポイントをいくつか明らかにしている。たとえば、意図しない負債を抑えておくことで、便利な負債を意図的に受け入れる余裕を残す方法を述べている。彼の「最低限の返済」の考えも好きだ（ウェブサイトとは違い、組込みシステムで問題を修正するのは非常に高い）。

<!-- Aaron Erickson talks about Enron financing. -->
Aaron Ericksonは、[エンロンの財務管理](https://www.informit.com/articles/article.aspx?p=1401640)について語っている。

<!-- Henrik Kniberg argues that it's older technical debt that causes the greatest problem and that it's wise to a qualitative debt ceiling to help manage it. -->

[Henrik Kniberg](https://blog.crisp.se/2013/10/11/henrikkniberg/good-and-bad-technical-debt)は、最大の問題を引き起こすのは最古の技術的負債であると主張している。そして、こうした負債を管理するには、質的に上限を設けるべきだと述べている。

<!-- Erik Dietrich discusses the human cost of technical debt: team infighting, atrophied skills, and attrition. -->

Erik Dietrichは、[技術的負債の人的コスト](https://daedtech.com/human-cost-tech-debt/)（チーム内の紛争、スキルの退化、疲弊）について説明している。

<!-- ## Revisions -->
## 履歴

<!-- I originally published this post on October 1 2003.  I gave it a thorough rewrite in April 2019. -->

最初に投稿したのは2003年10月1日である。2019年4月に大幅に書き換えた。（訳注：過去のバージョンはgithubの履歴でたどれます）
