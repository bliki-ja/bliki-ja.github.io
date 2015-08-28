---
title: CheaperTalentHypothesis
tags: [bad things, productivity, recruiting, thoughtworks]
---

http://martinfowler.com/bliki/CheaperTalentHypothesis.html

2008/2/8

//One of the commonly accepted beliefs in the software world is that talented programmers are more productive. Since we CannotMeasureProductivity this is a belief that cannot be proven, but it seems reasonable. After all just about every human endeavor shows some people better than others, often markedly so. It's also commonly observed by programmers themselves, although it always seems to be remarked on by those who consider themselves to be in the better talented category.

ソフトウェア業界では、才能あるプログラマのほうが生産性が高いとよく言われる。
CannotMeasureProductivityなので証明はできないのだけど、おそらくそれは正しいだろう。
人間の活動のほとんど全てにおいて、他人よりも優れた人がいるのである。
そしてその違いは、著しいことがしばしばだ。
ソフトウェア業界においては、プログラマ自身がその違いに気づくことが多い。
ただ、その場合も常に自分を「才能ある方」に入れているみたいだけど。

//Naturally better programmers cost more, either as full-time hires or in contracting. But the interesting question is, despite this, are more expensive programmers actually cheaper?

当然ながら、優れたプログラマは、フルタイムで雇うにせよ契約するにせよ、その単価は高い。しかし、たとえ単価が高いとしても、'''高価なプログラマのほうが実際には安価なのではないだろうか？'''

//On the face of it, this seems a silly question. How can a more expensive resource end up being cheaper? The trick, as it is so often, is to think about the broader picture of cost and value.

バカげた質問に聞こえるかもしれない。
何をどうしたら高価な人材が安価になるっていうんだろう？
タネ明かしをすると、まぁいつものことなんだけど、価格と価値に対する視点をもっと広げることにある。

//Although the technorati generally agree that talented programmers are more productive than the average, the impossibility of measurement means they cannot come up with an actual figure. So let's invent one for argument sake: 2. If you can find a factor-2 talented programmer for less than twice of the salary of an average programmer - then that programmer ends up being cheaper. To state this more generally: If the cost premium for a more productive developer is less than the higher productivity of that developer, then it's cheaper to hire the more expensive developer. The cheaper talent hypothesis is that the cost premium is indeed less, and thus it's cheaper to hire more productive developers even if they are more expensive.

テクノラティで検索すると、才能あるプログラマのほうが平均的なプログラマよりも生産性が高いことは概ね同意されているようだが、計測が不能なのだから実際の数字に表すことはできない。
そこで、この議論のために、仮に「2」という数字を設定してみよう。
つまり、才能あるプログラマは、給料が半分以下の平均的なプログラマに比べて、生産性が2倍高いということにする。すると、才能あるプログラマのほうが結果的に安価だということが分かるだろう。なお、コストの差額が生産性の差分よりも小さかったら、高価な開発者を雇うほうが安価であると考えることにしょう。
「優秀なほうが安い説」とは、コストの差額が実際には小さくなる、というものである。
そのため、単価が高くてもより生産性の高い開発者を雇うほうが、結果的に安くなるということである。

//In case anyone hasn't noticed this hypothesis is a key part of our philosophy at ThoughtWorks and is one of the main reasons why I ended up switching from an independent consultant to join. We believe we actually end up cheaper for our clients, even though our rates were higher. Of course, we do have difficulty persuading many clients that this is true - that lack of objective productivity measures strikes again. I still remember a meeting with one prospective client complaining about how our rates were higher than a company who had made a previous, failed, attempt at the system we were bidding on. We had to politely point out that paying less rates for a project that delivered no value was hardly a financially prudent strategy.

これが我々ThoughtWorksの哲学の鍵だということにお気づきだろうか。
私が独立コンサルタントを辞めてThoughtWorksに入社した理由がココにある。
我々の単価は高いかもしれない。しかし、最終的には、クライアントにとって安価になると我々は信じている。
もちろん、多くのクライアントにこれが正しいと説得しなければならない難しさはある。
ここでも、生産性を計測する客観的な指標がないことがネックになる。
以前、見込み客が、以前失敗した未完のシステムを担当した企業よりも、我々のほうが料金が高いことに文句をつけてきたことを今でも覚えている。
我々は、少ない料金を払ったことで何の価値ももたらさないプロジェクトにしてしまったことが、いかにファイナンス的に良くない戦略であったかを、丁寧に指摘しなければならなかった。

//There are some notable consequences to the the cheaper talent hypothesis. Most notably is one that it actually follows a positive scaling effect - the bigger the team the bigger the benefits of cheaper talent. Let's assume we actually have put together a team of ten talented developers to run a project in some alternative universe where we have actually measures that they are twice as productive as the average - and thus do cost exactly twice as much to hire. In this case you might naturally assume that a rival team of average programmers would be a team of twenty.

「優秀なほうが安い説」には注目すべき結果がいくつかある。
もっとも注目すべきは、好ましいスケーリング効果があることだ——チームサイズが大きくなればなるほど、優秀なほうが安いという利点が大きくなるのである。
たとえば、10人の優秀な開発者でチームを作るとしよう。
彼らは平均的な開発者のチームの2倍の生産性があるので、給料も2倍だ。
これはどこか違う世界の話なので、細かいところは気にしないでおくれ。
さて、この場合、優秀な開発者に対応するには、平均的な開発者は何人いればいいだろうか。単純に考えると20人ということになる。

//The trouble is that that assumption assumes productivity scales linearly with team size, which again observation indicates isn't the case. Software development depends very much on communication between team members. The biggest issue on software teams is making sure everyone understands what everyone else is doing. As a result productivity scales a good bit less than linearly with team size. As usual we have no clear measure, but I'm inclined to guess at it being closer to the square root. If we use my evidence-free guess as the basis then to get double the productivity we need to quadruple the team size. So our average talent team needs to have forty people to match our ten talented people - at which point it costs twice as much.

しかし、生産性はチームサイズに対して線形にスケールするわけではない。
チームサイズが重要なのではない。
ソフトウェア開発においては、チームメンバとのコミュニケーションが重要なのである。
ソフトウェアチームにおけるもっとも大きな課題は、他のメンバが何をしているかをチームメンバ全員が確実に理解することである。
そのため、チームサイズが大きくなるにつれて、生産性は低くなるのである。
ここでもまた明確な測定基準はないのだが、私はチームサイズの平方根が生産性の値になるのではないかと思っている。
何の証拠もない私の推測をベースにすると、2倍の生産性を得たければチームサイズを4倍にする必要がある。
つまり、優れたチームの2倍の生産性を得るには、平均的なチームのチームサイズは4倍、つまり40人にする必要がある。すると、コストについては2倍になるわけだ。

//Another factor that plays a role here is time-to-market. Let's assume two teams of four people, one talented and one average. To stack the deck of our argument against our talented team, discount the previous paragraphs, and assume the talented team is only twice as productive as the average team. If the talented team charges twice as much then can we assume that it doesn't matter financially which team we pick?

もうひとつここで重要となる要因は、製品化に要する時間（タイムトゥマーケット）である。
2つの4人チームを考えてみよう。1つは優れたチーム。もう1つは平均的なチームだ。
優れたチームが有利にならないように、
上の段落で使った数字を割り引くことにしよう。
ここでは、優れたチームの生産性は平均的なチームの2倍とする。
なお、優れたチームの給料は2倍だ。
これでファイナンス的にはどちらのチームを選んでもよいことになっただろうか？

//I'm afraid the talented team wins again. They'll complete the project in half of the time of the average team, which means that the customer will start yielding value from the delivered software earlier. This earlier value, compounded by the time value of money, represents a financial gain for picking the talented team, even thought their cost per output is the same.

残念ながら、またもや優れたチームが勝つのである。
優れたチームは平均的なチームの半分の時間でプロジェクトを完遂する。
つまり、顧客は、納品されたソフトウェアを使って、より早く価値を生むことができるのである。
より早く生み出された価値は、お金の時間的価値によってさらに強化され、かかるコストが一緒であっても、ファイナンス的に優れたチームを選ぶほうがメリットがあることを示すことになる。

//Agile development further accelerates this effect. A talented team has a faster cycle time than an average team. This allows the full team to explore options faster: building, evaluating, optimizing. This accelerates producing better software, thus generating higher value. This compounds the time-to-market effect. (And it's natural to assume that a talented team is more likely to produce better software in any case.)

さらに、アジャイル開発がこの効果を一層加速させる。
優れたチームは、平均的なチームよりも速いスピードで開発サイクルをまわすことができる。これにより、チーム全体が、構築、評価、最適化の選択肢をより速く見つけることができる。
この高速化によって、よりよりソフトウェアを構築できる。
結果として、より高い価値を生み出すことになる。
これが、タイムトゥマーケット効果をさらに増強するのである。
（それに、当然のことながら、優れたチームのほうがよりよいソフトウェアを開発することができるだろう）

//Faster cycle time leads to a better external product, but perhaps the greatest contribution a talented team can make is to produce software with greater internal quality. It strikes to me that the productivity difference between a talented programmer and an average programmer is probably less than the productivity difference between a good code-base and an average code-base. Since talented programmer tend to produce good code-bases, this implies that the productivity advantages compound over time due to internal quality too.

より速くサイクルをまわすことで、製品はよくなっていくだろう。
しかし、優れたチームがもっとも貢献できるのは、おそらく、ソフトウェアの内部的な品質の向上なのである。
優れたプログラマと平均的なプログラマの生産性の違いよりも、優れたプログラマのコードと平均的なプログラマのコードの違いのほうが大きい。
優れたプログラマは優れたコードを作り出す。
このことはつまり、内部的な品質が優れているために、
優れたプログラマの生産性は時間の経過にともなって向上していくということである。

//All this sounds, at least to me, like a highly compelling argument. It's also one that's widely accepted (at least by programmers who consider themselves talented). But it's far off being accepted by the software industry as a whole. We can tell this because the premium for talented developers (in terms of salary/contracting fees) is less than the productivity difference. Probably the major reason for this the inability to objectively measure productivity. A hirer cannot have objective proof that a more expensive programmer is actually more productive. Only the higher cost is objective. As a result a hirer has to match a subjective judgment of higher value against an objective higher cost. Many hirers, even if they believe the talented programmer is worthwhile personally, isn't prepared to justify the full higher cost to managers, HR, and purchasing.

このことはすべて、少なくとも私にとっては、説得力のある話だ。
それにこれは、広く受け入れられたものでもある（少なくとも、自分のことを優れたプログラマだと思っているプログラマにとっては）。
しかし、ソフトウェア業界全体で受け入れられているとは言いがたい。
というのも、優れた開発者への給料や契約金のプレミアムは、生産性の違いほど差がないからである。
雇用者は、高価なプログラマが実際に生産性が高いという客観的な証拠を持っていない。
コストが高いということだけが客観的だ。
結果として、雇用者は、価値が高いという主観的な判断と、コストが高いという客観的な判断とに折り合いをつけなければならない。
多くの雇用者は、個人的に優れたプログラマに価値があると信じていても、マネージャや人事部や購買部に対して、そのコストの全額を正当化する覚悟ができないのである。

//This effect is compounded by the difficulty in making even a subjective assessment. At ThoughtWorks we rely on peer assessment - developers abilities are assessed by fellow team members. The result is hardly pinpoint precision, but it's the best anyone can do.

これは主観的評価においても難しい。ThoughtWorksでは、同僚の評価に頼っている——開発者の能力はチームメンバによって評価される。結果が正確になることはないが、誰にでもできるベストな方法である。

//Which all points out that hiring and retaining talented programmers is hard work. Hiring and assessment is hard work. You have to deal with people with very individual desires, which are even more important to track as they are effectively underpaid. So a hirer is faced with certain extra work and higher costs versus only a judgment call for higher productivity.

優れたプログラマの採用や雇用は難しい。
採用や評価は難しい仕事だ。
非常に個人的な要望を持った人を扱わなければならない。
これは薄給であることよりも重要なことである。
雇用者は、追加業務と
高いコストと主観的な生産性の高さの対立に
直面するのである。

//So I understand the situation but don't accept it. I believe that if the software industry is to fulfill its potential it needs to recognize the cheaper talent hypothesis and close the gap between high productivity and higher compensat
