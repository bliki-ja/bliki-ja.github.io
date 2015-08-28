---
title: FeatureDevotion
tags: [agile, bad things, requirements analysis, process theory]
---

http://martinfowler.com/bliki/FeatureDevotion.html

2006/11/2

//A common, perhaps dominant, practice of agile methods is to develop a list of features (often called stories) for the software that's being built. These features are tracked with index cards, work queues, burndown charts, backlogs, or whatever your tool of choice is.

一般的な（おそらく最も使用されている）アジャイル方法論のプラクティスは、構築するソフトウェアの機能リスト（ストーリーカード）を作ることだろう。
リスト化された機能は、インデックスカード、作業キュー、バーンダウンチャート、バックログなど、あなたにとって最適なツールで追跡することになる。

//On the whole I like this kind of approach. By breaking down everything you need to do into small tasks that you can complete in a week or few, you can visualize progress and get a sense of how much you can get done. I've often said that the key benefit of iterative development is to reduce risk by forcing completion of software in chunks instead of the waterfall habit of leaving long and hard to manage activities (testing, integration) till late in the project.

こういったやり方は、私は好きである。やるべきことをすべて数週間程度で完遂できる小さなタスクに分解し、進捗を見える化し、成し遂げたことを一目見て分かるようにする。
反復開発の利点は、ある程度まとまりのあるソフトウェアを完遂させることにより、リスクを低減することにある。これは、期間が長く管理しにくいアクティビティ（テスト、結合）をプロジェクトの後半まで残しておくウォーターフォール開発とは異なる点だ。

//The problem comes when this list suddenly grows horns and fangs and becomes a Fixed-Price Fixed-Scope Big Up-Front Project Plan. Craig Larman once joked that the waterfall process has strong antibodies that reject iterative processes by warping them into some form of waterfall. RUP has been a common victim of these antibodies, seeing its phases turn into some variant of the analysis-design-build-test conveyor.

ただし、この機能リストが[[突如としてツノを生やし、牙を剥き、固定価格、固定スコープ、前払い設計プロジェクトになってしまう|http://dannorth.net/archives/32]]ときが問題だ。
Caraig Larmanは、かつて「ウォーターフォールプロセスには、反復開発を何らかのウォーターフォールに変形させる強い抗体がある」というジョークを言った。
RUPはその抗体の犠牲になった一例だ。
RUPの「フェーズ」は「分析、設計、実装、テスト」コンベアの変種へと形を変えてしまった。

//The key to beating off the waterfall is to realize that, as Dan puts it, agilists value Outcomes over Features. The feature list is a valuable tool, but it's a means not an end. What really matters is the overall outcome, which I think of as value to the customers.

ウォーターフォールを跳ね返すカギは、Danも言っているように、アジャイラ(agilist)の価値である「機能よりも成果{{fn('訳注：アジャイル宣言の5番目の価値と呼ばれている。')}}」にある。
機能リストは有用なツールである。だが、それは手段であって目的ではない。
重要なのは、最終的な成果である。私はそれを「顧客価値」だと考えている。

//An important part of this thinking is that you expect the feature list to change as the project goes on. This happens you discover new things that you can do, and re-prioritize old things. This is the essence of adaptive planning, which has always been a key indicator of agile thinking. This results a big shift in how people think about a plan. In plan-driven projects, success and failure is often worded in terms of "did things go according to the plan?" In agile projects this is a meaningless question, because plans change so often. The plan is a tool, primarily one that you use to gauge the effect of changes: "how will adding this feature affect what we do". The plan is a tool to figure out what should fit in the FivePoundBag. If your plan's not constantly changing, you are very unlikely to be doing adaptive planning, and hence aren't agile.

重要なのは、機能リストはプロジェクトが進むにつれて変わりうるものだということを、あらかじめ認識しておくところにある。
その都度、新しくできることを発見し、再度、優先付けを行う。
これが[[適応型計画|http://www007.upp.so-net.ne.jp/kengai/fowler/newMethodology_j.html#A40]]の肝であり、アジャイルな考え方の指標である。
これにより、計画に対する考えに大きな変化がもたらされた。
計画駆動プロジェクトでは、成功（あるいは失敗）は「計画通りだったか？」という観点で語られることが多い。
しかしアジャイルプロジェクトでは、これは意味のない質問である。
その計画が頻繁に変更されるからだ。
計画とは、主に変更による影響（「この機能を追加したら、どれだけ影響がでるか」）を測るために使用するツールである。
計画とは、FivePoundBagにどれだけ入るかを見積もるためのツールである。
計画が頻繁に変更しないのであれば、適応型計画をしていないのであり、つまりは、アジャイルではないということである。

//Feature lists have another problem - you easily lose sight of the context that makes the feature valuable. This is a reason why Alistair Cockburn is a proponent of use cases, because they concentrate on a narrative of how someone uses a system. Marc NcNeil also talks about this in terms of Customer Journeys. The weakness of use cases in planning is that they don't give you clear units to tick off so you can assess progress and project consequences of choices into the future. That makes them less useful as a planning tool, but that doesn't negate their value as tool for imagining what a good outcome would be.

機能リストには他にも問題がある——機能に価値をもたらすコンテクストを容易に見失ってしまう点だ。
Alistair Cockburnがユースケースを提唱しているのはそのためだ。
ユースケースは、システム利用者の利用方法をナラティブ（物語）として描写しているからだ。
Marc NcNeilも「[[Customer Journeys|http://www.dancingmango.com/blog/2006/10/19/ditch-the-feature-shopping-list-think-customer-journeys/]]（顧客旅行）」という言葉を使って同様のことを述べている。
計画時におけるユースケースの弱点は、
進捗をチェックしたり、プロジェクトの★したりできるような明確な単位に分かれていないことだ。
そのため、ユースケースは計画ツールとしてはあまり役に立たない。
しかし、最適な成果は何なのかを想像するには良いツールであることを否定してはいけない。
