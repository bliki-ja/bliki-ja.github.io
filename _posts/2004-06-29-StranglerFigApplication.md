---
title: ストラングラーフィグアプリケーション
tags: [application architecture, legacy rehab]
---

<!-- When Cindy and I went to Australia, we spent some time in the rain forests on the Queensland coast. One of the natural wonders of this area are the huge strangler figs. 
 !-- They seed in the upper branches of a tree and gradually work their way down the tree 
 !-- 	until they root in the soil. 
 !-- Over many years they grow into fantastic and beautiful shapes, 
 !-- meanwhile strangling and killing the tree that was their host. -->

Cindyとオーストラリアに行ったとき、クイーンズランド州の沿岸にある熱帯雨林でしばらく時間を過ごした。
この辺りの自然の素晴らしさのひとつに、巨大な[ストラングラーフィグ](https://en.wikipedia.org/wiki/Strangler_fig)がある。
ストラングラーフィグは、他の木の上の枝に種を蒔き、その木をつたわりながら下りていき、最後には土に根を張るのである。
宿主である木を絞め殺しながら、長い年月をかけて幻想的で美しい姿に成長するのだ。

![](https://martinfowler.com/bliki/images/stranglerApplication/11090068.jpg)

<!-- This metaphor struck me as a way of describing a way of doing a rewrite of an important system. Much of my career has involved rewrites of critical systems. You would think such a thing as easy - just make the new one do what the old one did. Yet they are always much more complex than they seem, and overflowing with risk. 
 !-- The big cut-over date looms, the pressure is on. While new features (there are always new features) are liked, old stuff has to remain. Even old bugs often need to be added to the rewritten system. -->

このメタファーは、重要なシステムの書き換えの方法を表すのに使えるんじゃないかと私は思った。
私のキャリアの大半は、クリティカルなシステムの書き換えであった。
書き換えなんて、新しいシステムに古いシステムと同じ動作をさせればいいだけの簡単なものだと思うかもしれない。
だが、書き換えは思ってるよりもずっと難しいし、リスクがいっぱいある。
移行日が不気味に迫る。お尻に火がつく。
新しい機能が求められているのに（新しい機能は常にあるものだ）、
既存の機能もそのまま使えるようにしておかなければならない。
バグもそのまま新しいシステムに残さなきゃならない、なんてこともある。

<!-- An alternative route is to gradually create a new system around the edges of the old, letting it grow slowly over several years until the old system is strangled. Doing this sounds hard, but increasingly I think it's one of those things that isn't tried enough. In particular I've noticed a couple of basic strategies that work well. The fundamental strategy is EventInterception, which can be used to gradually move functionality to the strangler fig and to enable AssetCapture. -->

新しいシステムを古いシステムの周りにじょじょに作っていき、
数年かけてゆっくりと成長させ、
最後には古いシステムを窒息死させるという方法もある。
この方法は難しそうに聞こえるが、私はこう思うようになってきた。
「それって、ちゃんとやってないだけなんじゃねーの？」
私はいくつかの基本戦略がうまくいくのではないかと思っている。
まずは、[イベントインターセプション](/EventInterception)。
これは段階的に機能を移行する際に使える。
また、[財産確保](/AssetCapture)を可能にしてくれる。

<!-- My colleague Chris Stevenson was involved in a project that did this recently with a great deal of success. They published a first paper on this at XP 2004, and I'm hoping for more that describe more aspects of this project. They aren't yet at the point where the old application is strangled - but they've delivered valuable functionality to the business that gives the team the credibility to go further. And even if they stop now, they have a huge return on investment - which is more than many cut-over rewrites achieve. -->

最近、同僚の[Chris Stevenson](http://www.skizz.biz/)があるプロジェクトで非常に大きな成功をあげた。
このプロジェクトについての[最初の論文](http://www.skizz.biz/whitepapers/an-agile-approach-to-a-legacy-system.pdf)を[XP 2004](http://www.xp2004.org/)で発表していたが、
私はこのプロジェクトの様々な側面についてもっと記述してもらいたいと思っている。
彼らはまだ古いアプリケーションを窒息死させるところまでは出来ていない。
だが、彼らは価値ある機能をビジネスにもたらした。
そのことで彼らは、チームへの信頼性をも獲得した。
プロジェクトが休止している今も、彼らは巨額の投資対効果をもたらしている。
これは、多くの書き換えプロジェクトが成し遂げたものよりも大きい。

<!-- The most important reason to consider a strangler fig application over a cut-over rewrite is reduced risk. A strangler fig can give value steadily and the frequent releases allow you to monitor its progress more carefully. Many people still don't consider a strangler fig since they think it will cost more - I'm not convinced about that. Since you can use shorter release cycles with a strangler fig you can avoid a lot of the unnecessary features that cut over rewrites often generate. -->

ストラングラーフィグアプリケーションが書き換えアプリケーションよりも優れているといえるのは、リスクが減少した点にこそある。
ストラングラーを使えば着実に価値を提供することができ、頻繁なリリースによって、進捗をより注意深く観測することができる。
だが、多くのひとはストラングラーをまだ認めていない。
コストがかかると思っているからだ（私もまだ確信していない）。
しかし、ストラングラーを使って短期リリースを行うことが出来れば、
書き換えで頻発する大量の「不必要な機能」を作らなくても済むだろう。

<!-- There's another important idea here - when designing a new application you should design it in such a way as to make it easier for it to be strangled in the future. Let's face it, all we are doing is writing tomorrow's legacy software today. By making it easy to add a strangler fig in the future, you are enabling the graceful fading away of today's work. -->

重要な考えがもうひとつある。
以上の理由から、新しいアプリケーションを設計する際には、将来的に窒息死しやすいように設計するということだ。
今日作っているシステムは、明日のレガシーシステムである。
そのことから目をそむけてはならない。
将来的に窒息死しやすくすることで、今の仕事から安らかにフェイドアウトすることが出来るのである。

<!-- Further Reading -->

### 参考資料

<!-- Paul Hammant has a good summary of case studies using this approach. -->
Paul Hammantは、このアプローチを使用した[ケーススタディのまとめ](http://paulhammant.com/2013/07/14/legacy-application-strangulation-case-studies/)を提供している。

<!-- Revisions -->
### 更新履歴

<!-- Changed URL and name to Strangler Fig Application April 29 2019 -->
2019年4月29日にURLと名称を「ストラングラーフィグアプリケーション」に変更した。

<!-- I thought this post was a nice metaphor, but didn't expect the degree that it would grow in popularity (in recent months it gets over 3000 page views a month). The popularity is nice, but there is a problem. The original post was entitled “Strangler Application”, and when used, the pattern is often referred to as a “strangler”. But its usage often gets separated from its metaphorical root, and takes on a unpleasantly violent connotation. -->
素晴らしいメタファーだとは思っていたが、これほど人気がでるとは思ってもいなかった（この数か月は月間3000ページビューを超えている）。人気がでるのはいいのだが、少し問題が出てきた。元の記事では「ストラングラーアプリケーション」にしていたのだが、パターンとして使われるときに「ストラングラー（絞殺）」と呼ばれることが多くなった。これでは比喩的な表現から切り離され、不快で暴力的な意味合いを帯びてしまう。

<!-- Some people, therefore, have advocated avoiding or changing the name. 
 !-- I don't have any great objection to that, I haven't used the name in my own writing 
 !-- 	since that original posting.  -->
<!-- But the trouble with attempting a rename, is that once a name has lodged itself in a community's mind, it's very hard to dislodge. -->

この名前を回避したり、変更を求める人も出てきた。
それに対して異論はない。私も元の投稿以来、この名前は使っていない。
ただし、一度コミュニティに定着してしまうと、名前を変更するのは非常に難しいという問題がある。

<!-- Recently I thought of a small tweak that might help things a little. 
 !-- If I rename the post to “Strangler Fig Application”, and use the term “Strangler Fig” as much as possible, then hopefully that would reduce the violent connotation 
 !-- 	by reinforcing the metaphorical link that is the whole point of the name. 
 !-- Because it's a small change, maybe it will spread enough to be worthwhile, and it's not much effort, so seems worth a try. -->

最近、微調整すれば事態が少しでも改善されるのではないかと考えた。
記事のタイトルを「ストラングラーフィグアプリケーション」にして、
できるだけ「ストラングラーフィグ」という用語を使うようにすれば、
暴力的な意味合いが軽減され、本来の比喩的な表現であることが伝わるのではないかと思っている。
小さな変更なので、これなら広まるかもしれない。
手間もかからないので、やってみる価値はありそうだ。
