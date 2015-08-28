---
title: ThoughtWorksにおけるRuby
tags: TAGS
---

----
以下の文章は、Martin Fowlerによる[[Ruby at ThoughtWorks|http://martinfowler.com/articles/rubyAtThoughtWorks.html]]の日本語訳である。
----

// ThoughtWorks started using Ruby for production projects in 2006, from then till the end of 2008 we had done 41 ruby projects. In preparation for a talk at QCon I surveyed these projects to examine what lessons we can draw from the experience. I describe our thoughts so far on common questions about Ruby's productivity, speed and maintainability. So far our conclusions are that Ruby is a viable platform that should be seriously considered for many forms of applications - in particular web applications using Ruby on Rails. I also go through some technical lessons, including some thoughts on testing with Active Record.

""ThoughtWorksは、2006年から本格的なプロジェクトにRubyを使い始めた。2008年の終わりまでには、Rubyプロジェクトの数は41個になった。この経験から我々は何を学んだのか。QConの講演に備えて、私は調べてみることにした。ここでは、Rubyの生産性、スピード、保守性など、よくある質問に対する現時点での我々の考えについて述べていく。現時点での我々の結論としては、Rubyは十分に使えるプラットフォームであり、様々な形態のアプリケーションに利用することを真剣に考慮すべきである、というものだ。特に、Ruby on Rails を利用したWebアプリケーションにおいてはそうである。最後に、Active Record のテスティングに対する考えなど、技術的な教訓についても触れる。

最終更新日：2009/6/11

目次：

{{toc_here}}

----

//ThoughtWorks, my employer, is primarily a software delivery company. We build software for people, including products built for ourselves. An important part of our philosophy in an openness to to different development platforms, so we can choose the appropriate platform for our widely varying clients. When I joined ThoughtWorks in 2000, Java was our overwhelmingly major platform. Shortly afterwords we started working with .NET and these two platforms dominated our work by the middle of the decade.

//[typo?]
//- openness to to 
//+ openness to

私の雇用主であるThoughtWorksは、主にソフトウェア開発を生業としている。
我々はソフトウェアを誰かのために構築する。自らのために構築することもある。
特定の開発プラットフォームに依存しないことが我々の大切な信条であり、
我々はクライアントに最も適したプラットフォームを選択することができる。
2000年に私がThoughtWorksに参加した頃は、Javaが圧倒的に有力なプラットフォームであった。
間もなく、.NETも使い始めたが、最初の5年間はこれら2つのプラットフォームが我々の仕事のほぼすべてを占めていた。

//A few people, however, had started experimenting with LAMP scripting languages, in particular Ruby. The appearance of the Ruby on Rails web framework gave Ruby a big push, enough that in 2006, we started doing some serious project work with the Ruby platform. As I write this in 2009, the Ruby platform is has a firm share of our work, not as high as Java and C#, but a significant portion.

しかし、LAMPスクリプティング言語（とりわけRuby）を使い始める者たちがいた。
WebアプリケーションフレームワークであるRuby on Railsの登場は、Rubyを一躍スターダムにのし上げた。2006年の時点でそれは十分に有名で、我々はRubyプラットフォームで本格的なプロジェクトを始めた。本稿は2009年のものであるが、Rubyプラットフォームは我々の仕事で一定のシェアを占めている。JavaやC#ほどではないが、かなりのシェアがある。

//During these three years we've learned a lot about Ruby in practice. As 2009 began, I was asked to give a talk on our experiences with Ruby for the QCon conference. To prepare for this I conducted an extensive survey of our Ruby projects and probed our Ruby leaders for their thoughts and experiences. It's taken me a bit longer than I'd like to produce this article as well, but here it is.

ここ3年間で我々は、Rubyについて実践を通じて多くのことを学んだ。
2009年の初頭に、こうしたRubyの経験についてQConで講演しないかと持ちかけられた。
私は、我々のRubyプロジェクトについて大規模な調査を実施し、Rubyを使っているリーダーたちの考えや経験についてヒアリングを行った。
本稿を書き上げるのには思った以上に時間がかかったが、ここに書き上げることができた。

//I've divided the article into three parts. To start with I'll look at the profile of our Ruby project experience, to give you a sense of what kinds of projects we've been tackling over the years. Next I'll move onto several common questions about Ruby and how our experiences answer these questions. Finally I'll launch into some lessons we've learned from using Ruby.

本稿は3つのパートに分かれている。
まずは、ここ数年間で我々がどのようなプロジェクトに取り組んできたかを皆さんに知ってもらうために、プロジェクトの概要について説明する。
次に、Rubyに関するよくある質問と、それらに対する我々の答えについて見ていく。
最後に、実践で学んだRubyの教訓について触れる。

//The Shape of Our Projects
!プロジェクトの形態

//During 2006-8, ThoughtWorks has been involved in some 41 Ruby projects. I define a Ruby project as a project where Ruby was the primary development language. Ruby has appeared on other projects too, there's a lot of recent developments using ruby for build automation or functional testing for Java projects. Almost all these projects have involved Rails, and most of them are web site projects where Rails is at least as important as Ruby.

2006年から2008年の間に、ThoughtWorksは41個のRubyプロジェクトに携わった。
ここで言う"Rubyプロジェクト"とは、Rubyが主要言語であったプロジェクトを指す。
他のプロジェクトでもRubyが使われることはある。
最近の開発では、Javaのプロジェクトでも自動ビルドや機能テスティングにRubyを使うことが多い。
Rubyプロジェクトの多くは、Railsも使っている。
Webサイトの開発プロジェクトが多く、RailsはRubyと同様に重要な存在である。

//Figure 1: Scatterplot of peak headcount versus involved length for ThoughtWorks Ruby projects in 2006-8.

[[http://martinfowler.com/articles/rubyAtThoughtWorks/projectScatter.png]]

''図1: 2006年から2008年におけるThoughtWorksでのRubyプロジェクトに関わった人数（ピーク時）と期間の散布図''

//Figure 1 gives a feel for the size of the projects we've been involved in. The headcount here is the peak headcount of everyone involved (ThoughtWorks, client and others; developers, project managers, analysts etc). The length is the duration that we've been involved in the project.

図1を見ると、我々の関わったプロジェクトの規模が掴めると思う。ここの人数(headcount)とは、関係者（ThoughtWorks、クライアント、その他関係者。開発者、プロジェクトマネージャ、アナリストなど）を含めたピーク時の人数である。期間は、プロジェクトに関わった期間である。

//Ruby projects are generally seen as shorter and smaller than other projects. Sadly I don't have comparative data for our projects on other platforms to get a better feel on whether this is true. Certainly we can see that most projects involve less than 20 people for less than a year.

Rubyプロジェクトはほとんどの場合、他のプロジェクトよりも短く、小規模のようだ。
残念ながら他のプラットフォームとの比較データがないため、これが正しいかどうかは伝わりにくい。
しかし、ほとんどのプロジェクトは20人以下で、1年未満のものであることは確かだ。

//There are a few projects that stand out. By far our largest project is the one that I'll refer to as the Atlanta project, with a peak headcount of over 40 people involved. Another large and long running project is the Jersey project. These two are related in that there's been a good bit of rotation between the two, so many of our more experienced Ruby people have been on both projects.

いくつか突出したプロジェクトがある。
最も大規模なプロジェクトをAtlantaプロジェクトと呼ぼう。
ピーク時の人数は40人を超えている。
もう1つの大規模プロジェクトは、Jerseyプロジェクトだ。
これら2つのプロジェクトは、お互いに大幅な人員のローテーションを行っている。
そのため、弊社の熟練Rubistの多くは、どちらのプロジェクトにも携わったことがある。

//The third project I've called out here is Mingle, which is a particularly interesting case as it's a product from ThoughtWorks Studios - and as such we can be more public about it than we can about projects done for clients. It's been a long running project and also an international project: starting in Australia, moving to Beijing, and now multi-sited in Beijing and San Francisco.

3つ目のプロジェクトは、以前ここでも触れたことのあるMingleプロジェクトだ。
これは特に興味深いケースで、"ThoughtWorksスタジオ"から製品化されているものだ。
自社製品なので、クライアント向けのプロジェクトよりも公開できることが多い。

//Figure 2: Strip chart showing effort for project for each year.

[[http://martinfowler.com/articles/rubyAtThoughtWorks/yearStrip.png]]

''図2: 各年ごとのプロジェクトの工数を表したストリップチャート''

//Figure 2 looks at the shape a different way, looking at the effort involved in the various projects we've been involved in for each year. Each dot on the strip chart represents total effort (all people) in one project during that year. This chart provides a good feel for how much increase we've seen in ruby projects over the last three years.

図2は、また別の視点から様子をとらえている。
これは各年ごとに関わったプロジェクトの工数である。
ストリップチャートの各点が、その年の1つのプロジェクトの合計工数（全員の工数）を示している。
このチャートからは、ここ3年間で我々のRubyプロジェクトがどれだけ増えたかが分かる。

//Figure 3: Strip chart showing project effort per host country

[[http://martinfowler.com/articles/rubyAtThoughtWorks/countryStrip.png]]

''図3: 国別のプロジェクトの工数を表したストリップチャート''

//Figure 3 looks at the projects by host country. It's somewhat rough and ready, as I haven't tried to properly deal with the few multi-site projects or projects that have moved (Mingle, for example, I classed as a China although it's history is more varied.)

図3は国別のプロジェクトを表している。
いくつかのマルチサイトプロジェクトや途中で移動したプロジェクトについてはきちんと扱っていないため（たとえばMingleプロジェクトは様々な場所で開発されているので中国に分類してある）、いくぶん粗く即席なものになっている。

// The country split shows that the US has seen the biggest interest in Ruby work. India has also seen a fair amount - indeed our first Ruby project was run out of Bangalore. The UK has seen less uptake. This probably reflects the fact that our early Ruby advocates were mostly US based and there was considerable skepticism to Ruby in the UK. The level of involvement from India is encouraging, traditionally India is seen as a laggard in using new technologies but we seem to be doing a reasonable job of making our Indian offices be rather different.

国別チャートによると、アメリカが最もRubyの仕事に関心を持っているようだ。
インドにもかなりの数がある——我々の最初のRubyプロジェクトはバンガロールからだった。
イギリスではあまり盛り上がっていないようだ。
これはおそらく、アメリカには早期のRuby提唱者がいた一方で、イギリスにはRubyに懐疑的な人が多くいたということだろう。
インドがこんなにも関わってくれているのは心強い。
昔からインドは新しいテクノロジーを使い始めるのが遅いと思われていたが、
我々はインドオフィスをそれとは異なるものにするという正当な仕事をしたのではないだろうか。

//Our experience selling Ruby work is that using a dynamic language like Ruby fits in well with our overall appeal. Our strength is that we hire highly talented people who are difficult to attract to the typical IT organization. Ruby has a philosophy of an environment that gives a talented developer more leverage, rather than trying to protect a less talented developer from errors. An environment like Ruby thus gives our developers more ability to produce their true value.

Rubyの仕事を生業にするという経験から分かったことは、Rubyのような動的言語を使うことは我々全体の魅力にうまく馴染むということである。
我々の強みは、典型的なIT企業では引き込めないような非常に有能な人たちを雇用しているという点だ。
Rubyには、あまり有能ではない開発者をエラーから守るよりも、
有能な開発者がさらにうまく物事を成し遂げられる環境のほうがよいという哲学がある。
Rubyのような環境を使うことで、我々の開発者たちは真の価値を生み出す能力を与えられているのである。

//Ruby also fits in with our preference for using agile software development processes. The agile philosophy is one of rapid feedback by building software and reviewing it regularly with the customer. The more productive an development environment, the more frequently you can review progress, and the better the agile "inspect and adapt" process works.

Rubyはまた、アジャイルソフトウェア開発プロセスの使用を好むという我々の嗜好にも合っている。
アジャイルの哲学には、ソフトウェアを構築し、定期的に顧客と一緒にレビューすることで素早いフィードバックを得るというものがある。
開発環境の生産性が高まれば、頻繁にプロセスをレビューすることができるし、アジャイルの「検査と適応」プロセスがもっとうまく働くようになる。

//Questions About Ruby
!Rubyに関する質問

//Was Ruby the Right Choice?
!!Rubyで本当にいいのか？

//When looking back on our 41 projects, perhaps the most important question to ask is whether the Ruby platform was the correct choice. One way to approach that question is to ask technical leads on the project whether, in hindsight, they think the choice was correct.

41個のプロジェクトをふりかえるときに最も大切な質問は、Rubyプラットフォームが正しい選択だったかということだろう。
この質問に答えるには、プロジェクトのリーダーに正しい選択だったかどうかを（プロジェクトが終わってから）聞いてみるという手が考えられる。

//Figure 4: Was Ruby the correct choice of platform for this project?

[[http://martinfowler.com/articles/rubyAtThoughtWorks/hindsightPie.jpg]]

''図4: プロジェクトのプラットフォームにRubyを選んだのは正しかったか？''

//As Figure 4 indicates, the vote was a very positive 36 to 5 support of the choice. As a group our technical leads are usually not shy of indicating if they are unhappy with a technological choice. So I see this as a firm statement of the viability of the Ruby platform as a reasonable choice.

図4では、正しい選択をしたと考える人が36人。正しくないと考える人が5人いたことを表している。
我々の技術リーダは技術的選択に満足がいかなかなくても、それを示すことにためらうことはない。
つまりこの結果は、Rubyプラットフォームが合理的な選択だったという確かな声明と考えられるだろう。

//I dug a little more into the five regretful projects. The first thing that stood out was that in four of the five cases, the leads felt that using Ruby wasn't a worse choice than the alternatives. Ruby's relative unusualness means that we feel that using Ruby has to come with a benefit over alternatives, if Ruby is the same as a more widely used option, then it isn't worth introducing the unusual technology. Four of the five also reported problems due to integration with other technologies that Ruby isn't as well suited for. .NET tools tend to integrate better with .NET technologies, for example. Another theme that two of the projects reported was social issues - that people in the client organization were opposed to Ruby or other dynamic languages. The one worse-off project showed these social problems - an IT organization that resisted Ruby tooth and nail (the business sponsor in this case was a Ruby fan).

5個の残念なプロジェクトについてもう少し詳しく見ていこう。
まず最初に分かったのは、5件中4件でそうだったのだが、リーダーはRubyを使ったこと自体は悪くなかったと感じていることだ。
Rubyに独特さがあっても、代替案を使うよりはメリットがあると我々は感じている。
もっと広く使われているものと違いがないのであれば、Rubyの独特な技術を導入する価値はない。
また、5件中4件は、Rubyに適していない他の技術との統合が問題の原因だったと報告した。
たとえば、.NETツールなら.NET技術とうまく統合できる。
他にも、5件中2件から政治的な問題が報告された——クライアントがRubyのような動的言語に反対したのである。
1つの残念なプロジェクトからは、こうした政治的問題が報告された。
IT部門がRubyの奇妙な"歯"や"爪"に耐えられなかったそうだ。
（このときのビジネススポンサーはRubyのファンだった）

//Indeed when I asked further about red flags for using Ruby in software project, the only clear answer was around social issues. Ruby was generally accepted or encouraged for our software development work, but the biggest sign to avoid it was a social resistance from the client.

ソフトウェアプロジェクトでRubyを使うことの危険信号についてさらに質問してみたが、唯一の明確な答えは、政治的な問題に関することだった。
Rubyはソフトウェア開発作業に受け入れられ、推奨もされていたが、その使用が避けられる最大の原因は、クライアントからの政治的な抵抗にあった。

//Is Ruby More Productive?
!!Rubyの生産性は高いのか？

//When people are asked about why Ruby should be used on a project, the most common answer is for increased productivity. One early indicator was an assessment of a project that suggested that Ruby would have yielded an order of magnitude improvement in productivity.

Rubyをプロジェクトに使うのは生産性が高いから、というのがよくある答えだ。
最初に指標としたのは、Rubyの生産性は1桁違うと言っていたプロジェクトの評価だった。

//As a result it seemed obvious to survey the project technical leads and ask them about productivity - had ruby increased productivity and if so, by how much. I asked them to compare this to a mainstream (Java or .NET) project done in the most productive way they knew how.

プロジェクトの技術リーダーに聞けばよいと思われたので、生産性について尋ねてみた
——Rubyは生産性を高めたのか。もしそうなら、どれくらい高めたのか。
さらに、最も生産性の高い方法で行われたときの主流（Java/.NET）プロジェクトとも比較してもらった。

//Figure 5: How much did Ruby improve productivity for this project? (Compared to the best mainstream tools you know.)

[[http://martinfowler.com/articles/rubyAtThoughtWorks/productivityBar.jpg]]

''図5: Rubyによってプロジェクトの生産性はどれくらい高まったか？（生産性が最も高いと思う主流ツールと比べた場合）''

//You should take these result with some salt. After all there is no way we can objectively measure software productivity. These are just the subjective, qualitative assessments from the technical lead of each project. (I didn't get a response from all projects.) However they are still suggestive that there's a real productivity boost going on.

この結果は、ある程度、割り引いて見てもらいたい。
ソフトウエアの生産性を客観的に計測する方法はないのだ。
これらは、各プロジェクトのリーダによる主観的で、定性的な評価に過ぎない
（すべてのプロジェクトから返答を得ているわけではない）。
しかしながら、実際に生産性が向上しているような印象を受ける。

//This suggestion is further reinforced by staffing considerations. Scott Conley, who manages our Atlanta office, reports that once a ruby project has got going, he expects them to need 50% more people whose focus is on requirements preparation than would be expected for other technologies.

これは人員の配置を見るとより確かだと分かる。
Scott ConleyはAllantaオフィスのマネージャだが、
彼は、Rubyプロジェクトが始まると、要求獲得にフォーカスした人材が他のプロジェクトのときよりも1.5倍必要になると報告している。

//One thing we have seen is that you shouldn't expect these productivity increases to turn up right away. I've heard several times that people were alarmed in early weeks about the slow progress of a new Ruby team - a consequence of what I call the Improvement Ravine. It does take time for a Ruby team to get the hang of how the platform works and during that time they'll be slower than you expect.

ただし、これらの生産性の向上がすぐに表れると思ってはいけない。
新しく作られたRubyチームの最初の進捗がものすごく遅くてびっくりされた、という話を何度か耳にしたことがある——これは私の言う「ImprovementRavine」の結果だ。
Rubyプラットフォームの動作のコツをつかむまでには時間がかかり、
その間は期待よりも進捗が遅くなってしまうのだ。

//The improvement ravine is a common phenomenon and a usual palliative is to ensure there are some experienced people on the team. Our history, however, is that the most important experience here is that of dynamic languages that support the kinds of meta-programming features that Ruby does, rather than specifically Ruby experience. As Scott Conley puts it: the difference is between efficiency risk and delivery risk. A team with dynamic language experience but little Ruby experience will be slower initially (efficiency risk) but a team without any dynamic language experience can get produce a knotty code base that could risk the overall delivery.

改善の谷は一般的な現象で、通常はチームに経験者を入れるようにする。
ここで言う経験は、Rubyの経験というよりも、Rubyで使うメタプログラミングなどをサポートする動的言語の経験である。
Scott Conleyが「効率性のリスクと納品のリスクの違い」と表現している。
動的言語の経験はあるがRubyの経験はあまりないチームだと、最初のうちは進捗が遅い（効率性のリスク）。
しかし、動的言語の経験がまったくないチームだと、
難のあるコードを生み出しかねず、それが全体的な納品のリスクにつながる。

//Is Ruby Slow?
!!Rubyは遅いのか？

//In a word "yes". Search around for benchmarks on the net and you'll find numerous surveys that show that, even by the standards of scripting languages, Ruby is a tortoise.

一言で言えば「yes」。
ネットでベンチマークを検索したが、
他のスクリプト言語の基準と比べてみてもRubyはノロマな亀であると
多くの調査が示している。

//On the whole, however, this has been irrelevant to us. Most of our uses of Ruby are in building database backed websites. I've visited many projects over the decades like this, using Ruby and other technologies, nearly every project has spent time working on performance issues and in almost every case those performance issues are database access. People spend time tuning SQL not tuning their processing code. So since most applications are I/O bound, the use of a slow language for processing doesn't make any appreciable impact to the overall performance of a system.

ただ、我々にはあまり関係のないことである。
Rubyを使っているのは、Webサイトの裏にあるデータベース構築の部分がほとんどだ。
私はこの10年間で、今回の調査のように多くのプロジェクトを訪れたが、
Rubyを使ったプロジェクトもそうでないプロジェクトも、
ほとんどすべてのプロジェクトで
パフォーマンス問題に多くの時間を使っていた。
そしてほとんどの場合、こうしたパフォーマンス問題はデータベースアクセスに原因があった。
つまり、処理コードのチューニングではなく、SQLのチューニングに時間を費やしていたわけである。
ほとんどのアプリケーションはI/Oバウンドであり、処理に速度の遅い言語を使っていても、システムの全体パフォーマンスに甚大な影響を与えることはない。

//You'll notice I've used the usual pundit weasel words in the above paragraph. Although almost every project is I/O bound, you do run into the occasional exception - and an interesting one is Mingle. Mingle is unusual in many ways. It's very dynamic display means it can't use any page caching to improve performance, which immediately makes it unlike most web applications. As a result it isn't I/O bound and for good performance needs more hardware than many people expect (a four core box with 2GB of memory to support a 20-40 person team).

先の段落で、評論家みたいな逃げ口上を使ったことに気づいたかもしれない。
ほとんどのプロジェクトはI/Oバウンドだが、たまに例外に遭遇することがある——興味深いのはMingleである。Mingleは様々な点で普通じゃない。
たとえば、本当に動的な表示をする。つまり、パフォーマンス向上のためにページキャッシュを使うことができなかった。これだけで普通のWebアプリケーションでなくなった。
結果として、I/Oバウンドではなくなり、
パフォーマンス向上のために通常よりも多いハードウェアを必要とした
（20〜40人のチームをサポートするのに4コア、2GBメモリ）。

//But the Mingle team still feel they made the right choice in using Ruby. The Mingle team has built many features very quickly and they feel the productivity boost they got from Ruby is worth the higher hardware demands on the final product. As with so many things, this is a hardware versus productivity trade-off - one of the oldest trade-offs in computing. Each team needs to think about which matters. The good news here is that Mingle has good horizontal scalability (throw more processors at it and you get proportionally good performance). Hardware scalability is often the most valuable thing you can have in these situations as hardware costs keep declining.

それでもMingleチームはRubyが正しい選択だと思っている。
Mingleチームは多くの機能を素早く構築したが、Rubyから受けた生産性のブースト効果は最終成果物で必要となる高価なハードウェア要求に値するものだと感じている。
これはいわゆるハードウェアと生産性とのトレードオフである——コンピュータの世界における最も古いトレードオフの1つだ。
チームはどちらが大事なのかを考える必要がある。
ちなみに、Mingleは水平スケーラビリティ（プロセッサを投入してそれに比例するパフォーマンスを得る）を得ることができた。ハードウェアスケーラビリティは、ハードウェアのコストが下落しているような状況では、最も有用な代物である。

//I should re-emphasize. For most projects Ruby's speed has been irrelevant as almost all of them are I/O bound. Mingle is an exception, not the common case.

改めて強調しておこう。
ほとんどすべてのプロジェクトはI/Oバウンドだから、Rubyのスピードはさほど重要ではない。
ただしMingleは例外で、一般的なケースではない。

//Is a Ruby Code-base Hard to Understand?
!!Rubyのコードは理解しにくいのか？

//A concern we frequently hear about Ruby is that its dynamic typing, support for meta-programming, and lack of tools makes it liable to leave a code base that's difficult to follow. In general this hasn't turned out to be a issue in practice for us. The story I hear is that the fact that you can write much less code for the same functionality means that it's easier to keep the code clean than it is for mainstream languages.

我々がRubyについてよく耳にするのは、動的型付、メタプログラミングのサポート、追いにくいコードを任せられるツールの欠如である。
実際にこれらが我々にとって問題となったことはない。
聞いた話によると、主流の言語と比べ、同じ機能を書くときのコードの量が少なく、より簡単にコードをクリーンに保てるようだ。

//That said, it's important to remember our context. ThoughtWorks developers tend to be far above average in terms of ability and also very keen on highly disciplined approaches, such as Extreme Programming. We place a high value on testing (something that's true of the Ruby community generally) and these tests do much to keep the code base clear. So I can't say whether our experiences will carry over to less able and disciplined developers. (Even the tooling and relative control of other languages doesn't stop us from seeing some pretty horrible code, so it's open to question whether a poor Ruby code base would be that much worse.)

とは言うものの、我々の状況を忘れないで欲しい。
ThoughtWorksの開発者たちは、能力という点では平均よりも高く、エクストリームプログラミングのような規律ある手法に熱心な者ばかりである。我々はテスティングに非常に重きを置いており（Rubyコミュニティでも大切だとされている）、テストによってコードをよりクリアに保つことができている。
つまり、我々の経験が、能力や規律の少ない開発者でもうまくいくのかどうかは分からない。
（
他の言語では、ツールなどで制御していても恐ろしいコードを見なくなることがないのだから、貧弱なRubyコードがそんなに悪いものなのかということには疑問が残る
）

//We have seen a common sequence of attitudes to meta-programming.

メタプログラミングに対する考え方の一連の流れがこれだ。

//Figure 6: Progression of feelings about meta-programming

[[http://martinfowler.com/articles/rubyAtThoughtWorks/metaprogramming.png]]

''図6: メタプログラミングに対する感情の経過''

//    * Scary and Bad: People are wary of meta-programming and don't use it much
//    * Scary and Good: people begin to see the value of meta-programming but are still uncomfortable with using it.
//    * Easy and Good: as people get comfortable they begin to use it too much, which can complicate the code-base.
//    * Easy and Bad: people are wary of meta-programming and realize that it's very useful in small doses.

* 恐いしダメ:  メタプログラミングに対して慎重で、あまり使わない人たち
* 恐いけどイイ:メタプログラミングの良さは分かってきたものの、まだ慣れないと思ってる人たち
* 簡単だしイイ:メタプログラミングに慣れてきたので多用したばかりにコードがぐちゃぐちゃになる人たち
* 簡単だけどダメ:メタプログラミングに対して慎重だが、部分的に使えばかなり有用だと分かってる人たち

//In the end the analogy I like best for these kinds of techniques is that they are like prescription drugs. They are very valuable in small amounts but you need to ensure that you don't overdose.

最後にこうした技術に相応しい比喩の話をしておこう。
これらは処方薬のようなものなのだ。
少量なら非常に効果があるが、過剰摂取しないように気をつけなければならない。

//As with many things, experience is the great helper here as it can get you through this curve more rapidly. In particularly it's important to expect this adoption curve, particularly the over-usage. When learning something new it's common to over-use it at some stage because without crossing the line it's hard to know where that line is. It can also be useful to try and build a sandbox - a relatively contained area of the code-base for people to overdo the meta-programming in. With a suitable sandbox it's easier to undo the over-usage later on.

多くのことと同様に、経験はここでも大いに役に立つ。経験があればこの谷をもっと早く脱出できるのだ。この受容曲線をあらかじめ知っておくことは重要で、特に使いすぎの部分には気をつけよう。
何か新しいことを学ぶときは、どこかの段階で使いすぎてしまうことがよくある。使いすぎのラインを越えない限りは、そのラインがどこにあるか分からないからである。
そのためにはサンドボックスで何かを試しに作ってみるのがいいかもしれない——サンドボックスは、メタプログラミングなどをやり過ぎても大丈夫なように閉ざされたコードベースになっている。
適切なサンドボックスがあれば、やり過ぎてもあとから簡単に戻すことができる。

//Is Ruby a Viable Platform
!!Rubyは使えるプラットフォームなのか？

//All of these questions sum up into the key question for us: is Ruby (and Rails) a viable platform for us and our clients. The answer thus far is a resounding "yes". It offers palpable gains in productivity, allowing us to be more responsive and produce better software, more quickly for our clients. This isn't to say it's the right choice for all situations. Choosing a development platform is never a simple choice, particularly since it usually is more of a social choice than a technological choice. But the headline conclusion is that Ruby is a choice that's worth considering, worthy enough for us to want to keep this tool in our toolkit.

これまで見てきた質問は鍵となる質問に集約される。
「Ruby（とRails）は我々やクライアントにとって、使えるプラットフォームなのか？」
現時点での答えは「yes」だ。
生産性が明らかに高まり、我々の反応がよくなり、より良いソフトウェアが作れ、クライアントに素早くお届けすることができる。
ただし、すべての状況において正しい選択であるとは言えない。
開発プラットフォームを選ぶのは決して簡単なことではない。
通常は、技術的な選択よりも、政治的な選択であることが多い。
それでも、冒頭の結論の意味するところは、Rubyは考慮に値する選択肢であり、我々の道具箱に入れておきたいほど価値のある存在だということである。

//An interesting side question here is the role of other less-common languages. Should we be using Groovy, F#, Python, Smalltalk, and others? I wouldn't be surprised if many of the same trade-offs we see for Ruby are true also for these other languages. I hope we'll see some of these added to our toolkit in the future.

それでは、あまり一般的でない他の言語についてはどうだろうか。
我々は、Groovy、F#、Python、Smalltalkなどを使うべきだろうか？
これまでRubyについて見てきたトレードオフが、その他の言語についても同じ結果になったとしても、私はさほど驚かない。
いずれこれらも我々の道具箱に入って欲しいと願っている。

//I should also stress that it isn't a case of either/or when it comes to using these languages and the mainstream Java/C# options. I've always advocated that development teams using a language like Java/C# should also use a scripting language for various support tasks. Ruby makes an excellent choice for this, and we are seeing this combination increase on our projects. With the rise of support for these languages on the JVM and CLR, we see more opportunities to intermix different languages with different strengths - an approach Neal Ford refers to as Polyglot Programming.

これらの言語とJavaやC#などの主流の言語は、排他的な選択肢ではないということも強調しておこう。
Java/C#を使っている開発チームでも、サポート的なタスクにスクリプト言語を使うべきだとこれまで私は主張してきた。Rubyは最適な選択肢である。
そして、この組み合わせを使うプロジェクトで増えてきているのを目の当たりにしている。
JVMやCLR上でこうした言語がサポートされ始めているので、異なる強みを持つ異なる言語を混ぜる機会が増えている。
Neal Fordはこのやり方を[[Polyglot Programming|http://memeagora.blogspot.com/2006/12/polyglot-programming.html]]と呼んでいる。

//Some Development Tips
!開発のヒント

//In this last section, I'll run over a grab-bag of lessons we've learned from using Ruby.

最終節では、我々がRubyを使う上で学んだ教訓の詰め合わせをお届けしよう。

//Testing with Active Record
!!Active Recordのテスティング

//Right at the beginning of our use of Ruby, there was a debate on how best to organize testing in the presence of the Active Record database layer in Rails. The basic problem is that most of the time, performance of enterprise applications is dominated by database access. We've found that by using a Test Double we can greatly speed up our tests. Having fast tests is crucial to our test-intensive development process. Kent Beck recommends a basic commit build of under ten minutes. Most of our projects manage this these days, and using a database double is a vital part of achieving it.

Rubyの使い始めたとき、Railsのデータベース層であるActive Recordをどうやってテストするのが最善の方法なのかという議論が起こった。
問題は、エンタープライズアプリケーションのパフォーマンスがデータベースアクセスに占められていることにある。
TestDoubleを使えば、テストをスピードアップできると分かった。
テストが速いことは、テスト中心の開発プロセスにとっては重要なことだ。
Kent Beckは、基本的なコミットビルドは10分以内に収めるべきと言っている。
最近では、ほとんどのプロジェクトがこれを達成しようとしている。
そして、データベースダブルを使うことが、この達成のために重要なことのだ。

//The problem with Active Record is that by combining database access code with business logic, it's rather harder to create a database double. The Mingle team's reaction to this was to accept that Rails binds the database tightly and thus run all the commit tests against a real database.

Active Recordの問題は、データベースアクセスコードをビジネスロジックと一緒にしてしまっていることだ。これでは、データベースダブルを作ることが難しい。
Mingleチームでは、Railsがデータベースと密接に結びついていることを受け入れ、
本物のデータベースに対してすべてのコミットテストを実行している。

//The contrary view was advocated most firmly by the Atlanta and Jersey teams. Ruby has a powerful feature that allows you to redefine methods at run-time. You can use this to take an active record class, and redefine the the database access methods in that class as stubs. The team started the gem unitrecord to help with this.

まったく逆の視点が、AtlantaチームとJerseyチームから提唱された。
Rubyにはメソッドを実行時に再定義できる強力な機能がある。
これを使って、Active Recordのクラスにあるデータベースアクセスメソッドを再定義して、Active Recordクラスをスタブ化するのである。
チームはこのために gem の [[unitrecord|http://github.com/dan-manges/unit-record]] を使い始めていた。

//In the three years, we've not seen a generally accepted victor in this debate. The Mingle team run a couple of thousand tests against a real postgres database in around 8 minutes. (They parallelize the tests to make use of multiple cores.) The Atlanta and Jersey teams consider it valuable that their commit test runs in 2 minutes with stubs versus 8 minutes without. The trade-off is the simplicity of the direct database tests versus the faster commit build of the stubbed tests.

3年経つが、我々はまだこの議論に決着がついていない。
Mingleチームは、本物のpostgresデータベースに接続して、8分以内に数千ものテストを実行している（マルチコアを活用してテストを並列処理している）。
AtlantaチームとJerseyチームは、コミットテストがスタブなしで8分以内に終わるよりも、スタブありで2分以内に終わることのほうが大切だと考えている。
このトレードオフは、データベースを直接テストするシンプルさと、スタブテストの素早いコミットビルドとの対決だと言える。

//While both teams are broadly happy with their positions in this debate, the use of stubbing has led to another issue for the Atlanta/Jersey teams. As the teams became familiar with using method stubbing, they used it more and more - falling into the inevitable over-usage where unit tests would stub out every method other than the one being tested. The problem here, as often with using doubles, is brittle tests. As you change the behavior of the application, you also have to change lots of doubles that are mimicking the old behavior. This over-usage has led both teams to move away from stubbed unit tests and to use more rails-style functional tests with direct database access.

どちらのチームもそれぞれの立場に満足しているが、
Atlanta/Jerseyチームでは、スタブを使ったことでまた別の問題が起きている。
メソッドスタブを使うことに慣れると、もっと使うようになってしまった——ユニットテストで使うメソッド以外はすべてスタブアウトするなど、使いすぎが止まらない。
ここでの問題は、ダブルを使うとよくこうなるのだが、テストが脆くなることだ。
アプリケーションの振る舞いを変えると、古い振る舞いを模倣するダブルも大量に変えなくてはならない。
使いすぎがひどくなると、スタブ化されたユニットテストをやめて、railsスタイルのデータベースに直接アクセスする機能テストに移行せざるを得なくなるだろう。

//Active Record Leaks
!!Active Recordの漏れ

//A common situation that people report is time spent futzing with SQL. Active Record does a good job of hiding much database access from the programmer, but it fails to hide it all - essentially the abstraction leaks. As a result people have to spend a reasonable amount of time working with SQL directly.

みんなからはSQLをいじる時間について多くの報告を受けた。
Active Recordはデータベースアクセスをプログラマからうまく隠してくれている。
しかし、すべてを隠してくれているわけではない——抽象化が漏れている。
結果として、SQLを直接いじらなくてはならない時間が多くなっている。

//This leakiness is a common feature of object/relational mapping frameworks. Pretty much every time I talk to people on a project, they'll say that the O/R mapping framework hides the SQL efficiently about 80-90% of the time, but you do need to spend some time working on SQL in order to get decent performance. So in this respect Active Record is really no different from any other O/R mapper.

この漏れは、オブジェクトリレーショナルマッピングフレームワークの特徴だ。
私は、プロジェクトのみんなと話すときはいつも、O/RマッピングフレームワークはSQLを80〜90%を隠してくれるが、きちんとしたパフォーマンスを得るにはSQLをいじらなければいけないと言っている。
Active Recordも、この点については、他のO/Rマッパーと何ら変わりがない。

//Indeed one comment I do hear is that with Active Record, the abstraction breaks cleanly. When chatting with DHH, he's always stressed that he believes that developers who use a relational database should know how to work with SQL. Active Record simplifies the common cases, but once you start getting to more complicated scenarios it expects you use SQL directly.

Active Recordの抽象化の漏れはキレイだという人もいる。
DHHと話したとき、彼は「リレーショナルデータベースを使う開発者はSQLの扱い方を知らなければならないと思う」と常に強調していた。
Active Recordはよくあるケースをシンプルにしてくれる。
しかし、複雑なシナリオになると、SQLを直接書かなければならない。

//I don't see the leakiness of the O/R abstraction as a condemnation of these frameworks. The point of these frameworks is to improve productivity by making the easier to do common things. It allows a team to focus its effort on the few cases that really matter. The problem only comes when a team believes the abstraction is water-tight, and puts no effort into working with SQL. It's a common failing, but not a reason to abandon the real advantages of O/R frameworks when they are used correctly.

O/Rの抽象化の漏れが激しく非難されているのを見たことはない。
これらのフレームワークのポイントは、よくあることを簡単にできるようにすることで、生産性を上げるということだ。そして、本当に重要なごくわずかなケースにチームが注力できるようにしてくれる。
問題が起こるのは、チームが抽象化は防水加工されていて漏れることはなく、SQLを触る必要がまったくないと信じているときだ。
こうした欠点はあるものの、正しく使えているのであれば、O/Rフレームワークのメリットを捨てる理由はない。

//Long Running Requests
!!長時間のリクエスト

//A common problem we've seen is applications that get into a tangle when they take on a task that takes some time to carry out. Done naively this can result in the web request handler going dark for a worryingly long time while it deals with the request.

我々がよく目にする問題は、アプリケーションが実行に時間のかかるタスクを引き受けたときに、固まってしまうというものだ。単純に対応しようとすると、リクエストハンドラがリクエストを処理するのに途方もない時間がかかり、日が暮れてしまう。

//This is a very common issue with any human interface, and has a common solution - handing off the task to a background process or thread. Anyone who has programmed with a rich-client GUI application will recognize doing something like this. People do get themselves into trouble, however, if this hand-off and communication is done badly.

ヒューマンインタフェースのあるときにはよく起こる問題で、一般的なソリューションがある——バックグラウンドプロセスやスレッドにタスクを渡すのだ。
リッチクライアントのGUIアプリケーションのプログラミングをした者であれば、やったことがあるだろう。
しかし、この受け渡しがうまくいかないと、自分で自分の首を絞めることになる。

//The route I prefer, and fortunately it seems most ThoughtWorkers agree with, is to use an actor. In this model the web request handler takes any long-running task, wraps it in a command and puts it it onto a queue. The background actor then monitors the queue, taking commands off the queue and executing them, signaling the human-interaction actor when it's done with each one. The queue usually starts as a table in the database, and then may migrate to a real message queue system if required.

私が好きな方法は、幸いなことにThoughtWorkersの多くが同意してくれているのだが、アクターを使うことだ。このモデルでは、リクエストハンドラは長時間のタスクを受け取り、コマンドにラップして、キューに入れる。
バックグラウンドのアクターは、キューを監視して、キューのコマンドを受け取り、それを実行し、１つの処理が終わったらヒューマンインタラクションアクターに知らせる。
キューは最初はデータベースのテーブルであることが多い。
必要であれば、そこからメッセージキューシステムへと移行する。

//As with the leakiness of Active Record, I point this out not because it's a particular problem to Rails applications, we see this in all sorts of applications. It's worth pointing out because it seems too easy for many people using Rails to forget that this kind of thing happens, and thus they need to use this kind of pattern. We have found that Rails makes much of the repetitive part of web application easier and quicker to do - but the more involved stuff remains.

Active Recordの漏れと同様に、これはRailsアプリケーションだけの問題ではなく、あらゆる種類のアプリケーションで遭遇することがある。
Railsを使う多くの人たちは、こうしたことが起きるのをすぐに忘れてしまうし、上記のようなソリューションを使う必要があるため、ここで私が指摘しておこうと思う。
Railsは、Webアプリケーションの何度も起こる部分の多くを、簡単に、素早くできるようにしてくれている。しかし、やるべきことはまだ残っているのだ。

//Deployment
!!デプロイ

//Rails applications are easy to build, but sadly have been very awkward to deploy. The common scenario of using a pack of several mongrel web servers is at best rather fiddly to set up. This is something that has stuck out rather starkly due to the contrast with the smoothness of much of the rest of the ruby experience.

Railsアプリケーションのビルドは簡単だ。しかし、残念なことにデプロイは非常に厄介だ。
よくMongrel Webサーバを複数使うことがあるが、このセットアップが非常に面倒くさい。
Rubyはその他の部分がスムーズなので、それに比べるとこの面倒くささは目立ってしまう。

//The current consensus is that Phusion Passenger makes this whole thing very much simpler and is now the recommended deployment approach with the MRI.

現在は、Phusion Passengerを使うことでずいぶん楽になった。
これにはMRIを使ってデプロイする方法が推奨されている。

//We've been also big fans of using JRuby for deployments. JRuby allows people to use the standard Java Web-App stack, which can make it much easier to deal with in many corporate settings. Mingle has also used this approach to make it easier to install for customers. Indeed the Mingle team does all its development with the MRI but deploys to JRuby. They do this because the faster startup time of the MRI makes it quicker to develop on. (JRuby requires a JVM start-up, which is noticeably hesitant.)

我々はJRubyを使ってデプロイするのも好きだ。
JRubyだとJavaのWebアプリのスタックが使えるため、多くの企業環境で扱うのが簡単になる。
Mingleでは、この方法で顧客がインストールしやすいようにしている。
Mingleチームは、MRIですべての開発を行っているが、デプロイにはJRubyを使っている。
MRIは立ち上がりが速く、開発が早くできるからだ（JRubyはJVMの起動が必要なので、明らかに遅い）。

//Controlling Gems
!!Gemsの管理

//Ruby includes a package-management system, Ruby Gems, that makes it easy to install and upgrade third-party libraries. Rails also has plugins that carry out a similar task for rails. These are good tools, but it's easy for teams to get in a tangle if different machines are set up with different versions of different libraries.

Rubyには、パッケージ管理システムであるRuby Gemsがあり、サードパーティのライブラリのインストールやアップグレードが簡単に行えるようになっている。
Railsにはプラグインもあり、Railsの同じようなタスクを外出ししている。
これらはいいツールだが、チームで使っていると、ライブラリのバージョンや種類が揃わずにぐちゃぐちゃになることがある。

//There's a couple of ways to handle this. The first approach involves taking a copy of the source code for all third-party libraries and checking that into source control. This way a simple checkout will get you all the right version of all the libraries. A second approach is to use a script that downloads and activates the correct versions of all libraries. This script needs to be kept in source control.

対応方法はいくつかある。
まずは、すべてのサードパーティライブラリのソースコードをコピーして、
ソースコントロールにチェックインしておくことだ。
この方法だと、チェックアウトすれば、
正しいバージョンのすべてのライブラリが手に入ることになる。
もう1つの方法は、すべてのライブラリの正しいバージョンをダウンロードしてアクティベートするスクリプトを使う方法である。
このスクリプトはソースコントロールに入れておかなければいけない。

//Along similar lines, most teams also takes a copy of the Rails source itself. This allows them to apply patches to Rails directly to fix any bugs or other vital issues. These patches can then be sent to the core team. Using distributed version control systems, like git, have made this a good bit easier to manage. It's certainly much easier than our memories of having to decompile and patch Java application servers in the past.

同様に、ほとんどのチームはRailsのソース自体もコピーして持っている。
これだと、バグや致命的な問題があった場合に、Rails本体に直接パッチを書くことができる。
これらのパッチはRailsコアチームに送ることもある。
Gitなどの分散バージョン管理システムを使うと、もっと管理が楽になる。
昔みたいにJavaアプリケーションサーバをデコンパイルしてパッチを書いた思い出よりかは、遙かに簡単だ。

//Schedule Time for Updates
!!アップデートのタイミング

//Ruby generally, and Rails in particular, moves quickly. There are frequent updates to the rails system, with features that we want to use. We've found that we need to ensure we schedule time for handling rails updates and include these in the planning process. They are more significant than for other platforms, but the good news is that there's a steady stream of new capabilities.

Rubyは、特にRailsはそうだが、動きが速い。
Railsシステムの更新は頻繁に行われ、使いたい機能が追加される。
我々はRailsの更新スケジュールを調整する必要がある。
そしてこれは、計画プロセスのなかに入れておかなくてはいけない。
これらは他のプラットフォームよりも重要なことだが、喜ばしいことに新しい機能が次々と追加されている。

//Developing on Windows
!!Windowsでの開発

//Ruby was born in the unix world, and most of the people who have flocked to the platform use forward slashes for directory paths. It is possible to run, deploy, and develop for ruby on a windows platform, but it's also much more tricky. Our general advice is to use a unix platform for all development. Macs are commonly preferred, but plenty of people use other FOSS Unixen too.

RubyはUNIXの世界で生まれた。
そして、このプラットフォームに集まる人たちは、ディレクトリパスにスラッシュを使う。
Windowsプラットフォームでも、Rubyの実行、デプロイ、開発は可能だが、いくぶん扱いにくいものとなっている。
我々のアドバイスとしては、開発はすべてUNIXプラットフォームで行ったほうがいい。
Macは一般的に好まれているが、多くの人は FOSS UNIX も使っている。

//We hope this situation will change as Iron Ruby develops. It would be nice to have the option to deploy Ruby applications on the base Unix, JVM, or the CLR. Indeed this would make Ruby a particularly flexible option for runtime support across multiple platforms. It would also help our .NET projects to have Ruby as a scripting language in conjunction with the mainline .NET languages.

我々はこの状況がIron Rubyの開発によって一変されることを望んでいる。
RubyアプリケーションUnix、JVM、CLRなどにデプロイできるようになるのは好ましい。
実際、これでRubyが複数のプラットフォームで実行できる柔軟な選択肢になる。
我々の.NETプロジェクトでも、Rubyをメインの.NET言語と結合するスクリプト言語として使えるようになる。

----

//Acknowledgments
■謝辞

//Even more than usual, I couldn't have put all this together without the collaboration of many of my colleagues. Although I've been using Ruby for much personal work for many years, there's a big difference between one man cobbing together his personal web site and the kinds of application that we do with our clients. I'm grateful that so many of my colleagues took time out to give me the information I needed to truly assess Ruby's value.

いつにも増して、多くの同僚たちとのコラボレーションがなければ、すべてをまとめきることはできなかった。
私は何年も前から個人的にRubyを使っているが、1人で作っている個人サイトと、クライアントと一緒に作るアプリケーションとでは、違いが大きすぎる。
Rubyを評価するために必要だった情報を多くの同僚達が時間を費やして私に提供してくれたことに感謝している。

//And like any users of Ruby, we owe thanks to the wider Ruby and Rails communities. With any open-source effort, the role of the community is vital, so to all Ruby-hackers and Rubyists we at ThoughtWorks say ありがとうございました.

他のRubyユーザーと同様に、我々もRubyおよびRailsコミュニティに感謝している。
オープンソース活動では、コミュニティの役割は非常に大きい。
すべてのRubyハッカー、Rubyistたちに、ThoughtWorksから「ありがとうございました」。

//Significant Revisions
■更新履歴

//11 Jun 09: First published on martinfowler.com

2009/6/11: martinfowler.com に公開

//03 Jun 09: Draft for internal TW review

2009/6/3: 社内レビュー用の草稿


■日本語訳用: さらに詳しく知るために

* [[QCon Tokyo 2009 に行ってきました。一日目のメモ|http://d.hatena.ne.jp/wayaguchi/20090411/1239470414]]
* [[Yosuke's Perspective: QCon Tokyo 2009 1st Day#5: 実世界のRuby - Martin Fowler|http://yosuke-perspective.blogspot.com/2009/04/qcon-1st-day5-ruby-martin-fowler.html]]

■日本語訳について

* 訳：kdmsnr
* 2009/6/14 初出


{{rcomment}}
*2012-04-26 (木) 03:51:12 age : ぐっじょぶd(´∀｀*)グッ♂ http://ylm.me
*2009-12-04 (金) 05:33:44 kenboo : ダブル(TestDouble)は一般的名用語ではまだないので、説明が必要でしょう。英語版のリンク先を読んでやっとわかりました。
