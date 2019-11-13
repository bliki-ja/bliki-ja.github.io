---
title: ウォーターフォールプロセス
tags: [BAD THINGS, PROCESS THEORY]
---

<!-- In the software world, “waterfall” is commonly used to describe a style of software process, one that contrasts with the ideas of iterative, or agile styles.  Like many well-known terms in software it's meaning is ill-defined and origins are obscure - but I find its essential theme is breaking down a large effort into phases based on activity. -->

ソフトウェアの世界では、ソフトウェアプロセスの方式を説明するときに「ウォーターフォール」という言葉がよく使われる。これは、反復型あるいはアジャイル方式の考えとは対照的なものだ。ソフトウェアの世界でよく知られている用語の多くがそうであるように、この「ウォーターフォール」も意味が明確に定義されておらず、起源もあいまいである。だが、その本質的なテーマは「大きな労力を活動をベースにしたフェーズに分割する」ことだと私は考えている。

<!-- It's not clear how the word “waterfall” became so prevalent, but most people base its origin on a paper by Winston Royce, in particular this figure: -->

「ウォーターフォール」という言葉がどのように広まったかは定かではない。だが、その起源は[Winston Royceの論文](http://www-scf.usc.edu/~csci201/lectures/Lecture11/royce1970.pdf)とされており、以下の図を参照することが多い。

![](https://martinfowler.com/bliki/images/waterfallProcess/royce-fig2.png)


<!-- Although this paper seems to be universally acknowledged as the source of the notion of waterfall (based on the shape of the downward cascade of tasks), the term “waterfall” never appears in the paper. It's not clear how the name appeared later. -->

この論文は（滝のようにタスクが流れ落ちていく形状から）ウォーターフォールの考えの起源であると広く認知されている。だが、「ウォーターフォール」という言葉は、この論文には登場しない。この名前が後にどのように登場したかは定かではない。

<!-- Royce’s paper describes his observations on the software development process of the time (late 60s) and how the usual implementation steps could be improved.  [1] But “waterfall” has gone much further, to be used as a general description of a style of software development.  For people like me, who speak at software conferences, it almost always only appears in a derogatory manner - I can’t recall hearing any conference speaker saying anything good about waterfall for many years.  However when talking to practitioners in enterprises I do hear of it spoken as a viable, even preferred, development style.  Certainly less so now that in the 90s, but more frequently than one might assume by listening to process mavens. -->

Royceの論文は、当時（60年代後半）のソフトウェア開発プロセスの観察結果と、通常の実装ステップをどのようにすれば改善できるかを示しているにすぎない[^1]。だが、「ウォーターフォール」はさらに先まで行ってしまい、ソフトウェアの開発方式の一般的な説明として使われるようになった。私も含め、ソフトウェアのカンファレンスで講演する人たちは、必ずと言っていいほどウォーターフォールを軽蔑の対象として登場させている（ウォーターフォールの利点を話している講演を何年も耳にしたことがない）。だが、企業の実務家を相手にした講演では、ウォーターフォールは価値のある（むしろそのほうが好ましい）開発方式とされている話を耳にする。90年代に比べると少なくなってきてはいるが、プロセスの専門家の話を聞く限り、その頻度はみんなが思っているよりもずっと多い。

<!-- But what exactly is “waterfall”? That’s not an easy question to answer as, like so many things in software, there is no clear definition. In my judgment, there is one common characteristic that dominates any definition folks use for waterfall, and that’s the idea of decomposing effort into phases based on activity. -->

「ウォーターフォール」とは一体何だろうか？これは簡単に答えることができない質問である。ソフトウェアの多くのことがそうであるように、ウォーターフォールにも明確な定義がないからだ。だが、私の考えでは、さまざまなウォーターフォールの定義に共通した、ひとつの特徴が存在する。それは「労力を活動をベースにしたフェーズに分割する」という考えだ。

<!-- Let me unpack that phrase.  Let’s say I have some software to build, and I think it’s going to take about a year to build it.  Few people are going to happily say “go away for a year and tell me when its done”.  Instead, most people will want to break down that year into smaller chunks, so they can monitor progress and have confidence that things are on track.  The question then is how do we perform this break down? -->

これらのフェーズを紐解いてみよう。たとえば、私があるソフトウェアを構築するとしよう。それには1年かかる。「それじゃあ、1年後に完成したら言ってくださいね」などと言ってくる幸せな人はいないだろう。通常であれば、1年を小さな塊に分割しようとするだろう。そして、進捗を監視して、軌道に乗っていることに確信を得たいと思うはずだ。ここで質問。どうやって分割するのだろうか？

<!-- The waterfall style, as suggested by the Royce sketch, does it by the activity we are doing.  So our 1 year project might be broken down into 2 months of analysis, followed by 4 months design, 3 months of coding, and 3 months of testing.  The contrast here is to an iterative style, where we would take some high level requirements (build a library management system), and divide them into subsets (search catalog, reserve a book, check-out and return, assess fines).  We'd then take one of these subsets and spend a couple of months to build working software to implement that functionality, delivering either into a staging environment or preferably into a live production setting.  Having done that with one subset, we'd continue with further subsets. -->

Royceの図が示すウォーターフォール方式では、実施する活動によって分割する。1年間のプロジェクトであれば、分析に2か月、設計に4か月、コーディングに3か月、テストに3か月、のようになる。一方の反復方式では、高レベルの要求（図書館マネジメントシステムの構築）をサブセット（蔵書検索、書籍予約、貸出、返却、罰金）に分割する。その後、いずれかのサブセットを選択し、数か月かけて動作するソフトウェアを構築し、該当する機能を実装して、ステージング環境や（できることなら）本番環境にデリバリーすることになる。ひとつのサブセットが終わったら、次のサブセットを続けていく。

![](https://martinfowler.com/bliki/images/waterfallProcess/sketch.png)

<!-- In this thinking waterfall means “do one activity at a time for all the features” while iterative means “do all activities for one feature at a time”. -->

ウォーターフォールの考えは「すべてのフィーチャについて、一度にひとつの活動を実施する」であり、反復型の考えは「一度にひとつのフィーチャについて、すべての活動を実施する」である。

<!-- If the origin of the word “waterfall” is murky, so is the notion of how this phase-based breakdown originated.  My guess is that it’s natural to break down a large task into different activities, especially if you look to activities such as building construction as an inspiration.  Each activity requires different skills, so getting all the analysts to complete analysis before you bring in all the coders makes intuitive sense.  It seems logical that a misunderstanding of requirements is cheaper to fix before people begin coding - especially considering the state of computers in the late 60s.  Finally the same activity-based breakdown can be used as a standard for many projects, while a feature-based breakdown is harder to teach. [2] -->


「ウォーターフォール」の言葉の起源がはっきりしないというのなら、このフェーズベースの分割の起源はどこにあるのだろう？これは私の推測になるが、大きなタスクをさまざまな活動に分割するというのは、特に建築の活動を参考にしていたならば、ごく自然なことなのだろう。各活動にはさまざまなスキルが要求される。したがって、コーダーを集める前に、アナリストに分析を終わらせようとするのは、直感的に理にかなっている。コーディングを開始する前に要求の誤解を解決したほうがコストが安い、というのは論理的に思える。60年代後半のコンピューターの状態を考えればなおさらだ。最終的に、活動ベースの分割は多くのプロジェクトの標準として使われるようになった。その一方で、フィーチャベースの分割はなかなか教えられなくなっていった[^2]。

<!-- Although it isn’t hard to find people explain why this waterfall thinking isn’t a good idea for software development, I should summarize my primary objections to the waterfall style here.  The waterfall style usually has testing and integration as two of the final phases in the cycle, but these are the most difficult to predict elements in a development project.  Problems at these stages lead to rework of many steps of earlier phases, and to significant project delays.  It's too easy to declare all but the late phases as "done" , with much work missing, and thus it's hard to tell if the project is going well.  There is no opportunity for early releases before all features are done.  All this introduces a great deal of risk to the development effort. -->

ウォーターフォールの考え方がソフトウェア開発に適していない理由を説明できる人を見つけるのはそう難しくないだろうが、ここでは私のウォーターフォール方式に対する主な異論をまとめておきたい。ウォーターフォール方式では、サイクルの最終フェーズにテストと統合が用意されていることが多いが、これらは開発プロジェクトにおいて最も予測が難しい要素である。これらのステージで問題が見つかると、それ以前のフェーズの多くのステップで手戻りが発生し、プロジェクトの大幅な遅延につながる。遅延したフェーズを「完了」したと宣言するのは簡単だが、やり残しの作業が多ければ、プロジェクトが順調かどうかを判断するのが難しくなる。また、すべてのフィーチャが完成するまで、早期にリリースできる余地もない。こうしたことすべてが、開発活動に大量のリスクをもたらすことになる。

<!-- Furthermore, a waterfall approach forces us into a predictive style of planning, it assumes that once you are done with a phase, such as requirements analysis, the resulting deliverable is a stable platform for later phases to base their work on. [3] In practice the vast majority of software projects find they need to change their requirements significantly within a few months, due to everyone learning more about the domain, the characteristics of the software environment, and changes in the business environment.  Indeed we've found that delivering a subset of features does more than anything to help clarify what needs to be done next, so an iterative approach allows us to shift to an adaptive planning approach where we update our plans as we learn what the real software needs are. [4] -->

さらにウォーターフォール方式は、予測型の計画づくりを強制してくる。このことは、あるフェーズ（たとえば要求分析フェーズ）が終わると、その成果物は後続のフェーズが乗っかる安定したプラットフォームになることが前提となっている[^3]。実際には、ソフトウェアプロジェクトの大半は、数か月以内に要求を大きく変えることになる。その原因は、みんながドメインについて学ぶことだったり、ソフトウェアの環境の特性だったり、ビジネスの環境の変化だったりする。実際、フィーチャのサブセットをデリバリーすることで得られるのは、次に何をすべきかが明確になることに他ならない。つまり、反復型のアプローチによって、適応型の計画づくりに移行できるようになるということだ。本物のソフトウェアが必要とすることを学びながら、計画をアップデートしていけるのである[^4]。

<!-- These are the major reasons why I've glibly said that "you should use iterative development only in projects that you want to succeed". -->

以上が、これまで私が「成功させたいプロジェクトならば反復型開発を使用すべき」と[何度も主張してきた](https://martinfowler.com/books/uml.html)主な理由である。

<!-- Waterfalls and iterations may nest inside each other.  A six year project might consist of two 3 year projects, where each of the two projects are structured in a waterfall style, but the second project adds additional features.  You can think of this as a two-iteration project at the top level with each iteration as a waterfall.  Due to the large size and small number of iterations, I'd regard that as primarily a waterfall project.  In contrast you might see a project with 16 iterations of one month each, where each iteration is planned in a waterfall style.  That I'd see as primarily iterative.  While in theory there's potential for a middle ground projects that are hard to classify, in practice it's usually easy to tell that one style predominates. -->

ウォーターフォールと反復型が内部で組み合わさっていることもある。たとえば、6年間のプロジェクトがあるとする。これは、ウォーターフォール方式の3年間のプロジェクト2つで構成されているが、後半のプロジェクトではフィーチャが追加される可能性がある。トップレベルから見ると、これはウォーターフォールのイテレーションが2つあると考えることもできる。だが、イテレーションが大規模で数が少ないため、私はこれをウォーターフォールのプロジェクトと見なすだろう。反対に、16回のイテレーションで構成されているプロジェクトがあるとする。イテレーションの期間は1か月だが、いずれもウォーターフォール方式で計画されている。私はこれを反復型のプロジェクトと見なすだろう。理論的にはいずれかに分類できない中間的なプロジェクトが存在する可能性があるが、実際にはいずれかのスタイルが優位に働いており、簡単に見分けることができる。

<!-- It is possible for a mix of waterfall and iterative where early phases (requirements analysis, high level design) are done in a waterfall style while later phases (detailed design, code, test) are done in an iterative manner.  This reduces the risks inherent in late testing and integration phases, but does not enable adaptive planning. -->

前半のフェーズ（要求分析、概要設計）はウォーターフォール方式で、後半のフェーズ（詳細設計、コーディング、テスト）は反復型と、両者を組み合わせることも可能ではある。これにより、テストと統合のフェーズに固有のリスクは軽減されるが、適応型の計画づくりが可能になるわけではない。

<!-- Waterfall is often cast as the alternative to agile software development, but I don't see that as strictly true.  Certainly agile processes require an iterative approach and cannot work in a waterfall style.  But it is easy to follow an iterative approach (i.e. non-waterfall) but not be agile. [5] I might do this by taking 100 features and dividing them up into ten iterations over the next year, and then expecting that each iteration should complete on time with its planned set of features.  If I do this, my initial plan is a predictive plan, if all goes well I should expect the work to closely follow the plan.  But adaptive planning is an essential element of agile thinking.  I expect features to move between iterations, new features to appear, and many features to be discarded as no longer valuable enough. -->

ウォーターフォールは、アジャイルソフトウェア開発の対抗馬としての役割を担わされることが多い。だが、私はこれは厳密には正しくないと考えている。確かにアジャイルプロセスには反復型のアプローチが必要であり、ウォーターフォール方式で作業することなどできない。だが、反復型のアプローチ（非ウォーターフォール）に従っているが、アジャイルではないことも可能である[^5]。たとえば、100のフィーチャがあったときに、10のイテレーションに分割することもできる。各イテレーションでは、計画したフィーチャを納期通りに完成させることが求められる。このとき、私の初期の計画は予測型の計画になる。すべてがうまくいくのなら、物事を計画通りに進められるだろう。だが、アジャイルの考え方には、[適応型の計画づくりが必要不可欠な要素](https://martinfowler.com/articles/newMethodology.html#PredictiveVersusAdaptive)である。フィーチャはイテレーション間で移動し、新しいフィーチャが登場することもあれば、価値がなくなったフィーチャが破棄されることもある。

![](https://martinfowler.com/bliki/images/waterfallProcess/venn3.png)

<!-- My rule of thumb is that anyone who says “we were successful because we were on-time and on-budget” is thinking in terms of predictive planning, even if they are following an iterative process, and thus is not thinking with an agile mindset.  In the agile world, success is all about business value - regardless of what was written in a plan months ago. Plans are made, but updated regularly.  They guide decisions on what to do next, but are not used as a success measure. -->

私の経験則を述べよう。「納期通りかつ予算通りなので成功」と言っている人は、たとえ反復型プロセスに従っているとしても、それは予測型の計画づくりの観点で考えているのである。そして、それはアジャイルマインドセットの考え方ではない。アジャイルの世界では、数か月前の計画書に何が書いてあろうとも、成功はビジネス価値で判断する。計画は作る。だが、定期的にアップデートする。計画は次に何をすべきかを決めるガイドとなる。だが、成功基準として使うものではない。

<!-- ## Acknowledgements -->
## 謝辞

<!-- My thanks to Ben Noble, Clare Sudbury, David Johnston, Karl Brown, Kyle Hodgson, Pramod Sadalage, Prasanna Pendse, Rebecca Parsons, Sriram Narayan, Sriram Narayanan, Tiago Griffo, Unmesh Joshi, and Vidhyalakshmi Narayanaswamy who discussed drafts of this post on our internal mailing list. -->

社内メーリングリストに投稿したドラフトに意見をくれた方々（Ben Noble, Clare Sudbury, David Johnston, Karl Brown, Kyle Hodgson, Pramod Sadalage, Prasanna Pendse, Rebecca Parsons, Sriram Narayan, Sriram Narayanan, Tiago Griffo, Unmesh Joshi, Vidhyalakshmi Narayanaswamy）に感謝する。


<!-- ##Notes -->
## 注釈

<!-- [^1]: There have been quite a few people seeking to interpret the Royce paper. Some argue that his paper opposes waterfall, pointing out that the paper discusses flaws in the kind of process suggested by the figure 2 that I've quoted here.  Certainly he does discuss flaws, but he also says the illustrated approach is "fundamentally sound".  Certainly this activity-based decomposition of projects became the accepted model in the decades that followed. -->

[^1]: かなり多くの人たちがRoyceの論文を解読しようとしてきた。ここで私が引用した図2が示すプロセスには欠陥があることを説明しているのだから、この論文はウォーターフォールに反対するものだと主張する人もいる。確かに彼は欠陥について触れている。だが、このアプローチは「基本的には健全（fundamentally sound）」とも述べている。このプロジェクトを活動ベースで分割するやり方は、その後の数十年にわたって受け入れられるモデルとなった。


[^2]: This leads to another common characteristic that goes with the term “waterfall” - rigid processes that tell everyone in detail what they should do. Certainly the software process folks in the 90s were keen on coming up with prescriptive methods, but such prescriptive thinking also affected many who advocated iterative techniques. Indeed although agile methods explicitly disavow this kind of Taylorist thinking, I often hear of faux-agile initiatives following this route.

[^3]: The notion that a phase should be finished before the next one is started is a convenient fiction. Even the most eager waterfall proponent would agree that some rework on prior stages is necessary in practice, although I think most would say that if executed perfectly, each activity wouldn't need rework. Royce's paper explicitly discussed how iteration was expected between adjacent steps (eg Analysis and Program Design in his figure). However Royce argued that longer backtracks (eg between Program Design and Testing) were a serious problem.

[^4]: This does raise the question of whether there are contexts where the waterfall style is actually better than the iterative one. In theory, waterfall might well work better in situations where there was a deep understanding of the requirements, and the technologies being used - and neither of those things would significantly change during the life of the product. I say "in theory" because I've not come across such a circumstance, so I can't judge if waterfall would be appropriate in practice. And even then I'd be reluctant to follow the waterfall style for the later phases (code-test-integrate) as I've found so much value in interleaving testing with coding while doing continuous integration..

[^5]: In the 90s it was generally accepted in the object-oriented world that waterfall was a bad idea and should be replaced with an iterative style. However I don't think there was the degree of embracing changing requirements that appeared with the agile community.
