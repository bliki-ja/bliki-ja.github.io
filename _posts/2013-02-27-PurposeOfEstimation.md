---
title: 見積もりの目的
tags: [metrics, project planning, estimation]
---

https://martinfowler.com/bliki/PurposeOfEstimation.html

アジャイルソフトウェア開発の私の出会いは、エクストリーム・プログラミングの始まりとして、ケント・ベックと働いたときでした。そのプロジェクトで印象的だったことの一つは、計画のやり方でした。これは見積もりをする方法を含んでいます。それは今までに見たものよりも、軽量でありながら効果的であるという両方をもっていました。それから10年以上過ぎた今、経験のあるアジャイル主義者の間には議論があります。それは見積もりというものが、本当に行う価値があるものなのか、それとも実は激しく害があるかということです[1]。私は、この問題に答えるために、見積もりが何の目的に使われるのかを見ないといけないと思っています。

一般的なシナリオでは次のように進行します:

* 開発者は、これから来る仕事への見積もりを尋ねられます (もしくは見積もりを与えられます)。
　人というのは楽観的なものです。それらの見積もりは低すぎる傾向にあります。それを低くする圧力がなくても(そしては普通は多少なりとも暗黙の圧力があるものです)。
* これらのタスクと見積もりは、バーンダウンチャートで追跡されるリリース計画になります。
* 時間と労力は、それらの計画に対する進捗の監視になります。
　実績が最後に見積もりよりも大きくなったときは、みんな愕然とします。見積もりに合わせてペースを上げる努力の中でさらに開発者は質を犠牲にせよと言われます。それは[事態をより深刻にする](/DesignStaminaHypothesis)だけなのですが。

この話の中で、見積もりに注ぐ労力は、どううまく言っても、無駄ということです。「見積もりは真新しいシャツの中での推測である」[2]ということだったからです。見積もりが[機能の専念](/FeatureDevotion)を促進するとき、普通は激しい害を持って終わります。それは、人々がプロジェクトの本当の結果に立ち向かうよりも、主機能が順番に完了しているかどうかだけを評価し始める酷い状況です。[3]

見積もりはまた期待を設定しますが、見積もりは普通低すぎるため、非現実的な期待を設定することになります。[4] 時間の増加、主機能の減少は、そのとき損失としてみられます。損失嫌悪([loss-aversion](http://en.wikipedia.org/wiki/Loss_aversion))に依れば、これらの損失は誇張された効果を持っています。[5]

このような状況に直面したとき、人々が見積もりに対して憤慨し睨みつけるのを見ることは簡単です。これは、見積もりに携わった人がみんな本当のアジャイル主義者ではないという考えを増やしてしまうことになります。「これが意味するのは、アジャイル開発とは、それが終わったときに終わり、それを好きになるという約束のもとに進めていき、曖昧なものを実行するような開発者に関するものだ」というアジャイルの批判が言われています。

私は本質的に悪の活動として見積もりを見るようなことは共感しません。もし私が見積もりが悪いことであるかどうか聞かれたなら、私の答えは、標準的なコンサルタントの答え「ものによる」です。誰かが「ものによる」と答えたときはいつでも、続く質問は、「何による？」です。それに答えるために私たちはなぜ見積もりをしているのか聞かなければいけません。私は「上手くやる価値があるなら、一体なぜあなたはそれをやっているのか尋ねる価値がある。」と言うことが好きだからです。

私にとって、**見積もりは、重要な決定の手助けするときに価値があるものです。**

見積もりに基づいた決定について、私の最初の例として、人員の配置があります。
組織は大抵固定のお金と人を持っていて、普通はやるべきことが多すぎます。だから決定に直面します。私たちはAとBどちらを実行するのか？ そういった決定に直面したとき、どれだけの労力(そして費用)がそれぞれ関与するのかを知ることが役立ちます。何をやるべきかという賢明な決定をするには、費用と利益の両方の感覚を持つ必要があります。

別の例は、調整を助けるためのものです。青チームはウェブサイトへの新しい主機能をリリースしたいのですが、緑チームが必要不可欠なデータを渡す新しいサービスを構築するまではそれができません。緑チームが2ヶ月の間に完了すると見積もりを立てて、青チームはその主機能を構築するのに1ヶ月かかると見積もるとします。そのとき、青チームは、今日始める価値はないと知ります。
彼らは、早くリリースできる他の主機能に対して1ヶ月作業をすることができます。

だからこそ、見積もりを求めようと考えているときはいつも、その見積もりが教えてくれる決定は何かということを常に明らかにしないといけません。もし一つも見つからないなら、または意味がある決定でないなら、それは見積もりが無駄であるということのシグナルです。
ある決定を見つけたなら、そのとき、それを知ることが見積もりに焦点を当てていることになります。なぜなら、決定は文脈を与えるからです。それはまた、望んでいる確度と精度を明らかにすべきです。

決定を理解することはまた、見積もりに関与しないかもしれない別の行動を導くかもしれません。もしかすると、タスクBよりも、タスクAが重要かもしれません。タスクBは、それを先に実行しようとすべての力を注ぐ見積もりが必要ありません。おそらく、青チームのメンバーが、緑チームともっと早くサービスを構築する方法があるはずです。

同様に、計画への取り組みも、それが意思決定をどのように教えてくれるかによって進められるべきです。私のいつもの意見をここにあげると、計画は、変化の評価に役立つベースラインとして働くということです。もし私たちが新しい主機能を追加したいなら、どうやってそれを [5ポンドの鞄](/FivePoundBag)へ入れればいいのか。見積もりは、それらのトレードオフを理解させ、だからこそ、変化にどう対応するかを決定するのに役立ちます。リリース全体を大規模に再見積もりすることは、このプロジェクト全体が未だにエネルギーを最大限活かすべきものなのかどうかを理解させてくれます。数年前私たちは、2週間経って再見積もりした結果中止された一年間のプロジェクトがありました。私たちはそれを成功と見做しました。なぜなら、再見積もりは、プロジェクトが最初に期待したよりも長い時間が掛かることを示したからです。早めの中止は、顧客により良い標的へ人員を投入させられます。

しかし計画への取り組みで覚えて欲しいのは、見積もりには有効期限があるということです。私は一度ひねくれたプロジェクトマネージャがこう言っていたことを思い出します。計画と見積もりは、レタスのように2日間は良い状態である。ところが、1週間後にはしおれた状態、そして2ヶ月後には認識もできない状態になります。

見積もりはチームメンバーが互いに話をするのに役立つ強制的な機能を提供するということを、たくさんのチームが発見します。見積もり会議は、今後のユーザーストーリーを実装する様々な方法、未来のアーキテクチャの方向、コード上の設計問題をより良く理解するのに役立ちます。この場合、出てきた見積もりの数字は、重要ではないかも知れません。そんな話を起こす色んなやり方がありますが、見積もりの議論は、このような会話がなされなかった場合に導入されるのです。逆に、もし見積もりを止めようと思ったら、見積もりする間の有益な会話がどこか別の場所で続けられるということを確実にしておく必要があります。

何でもいいのでアジャイルの勉強会へ行ってみて下さい。そしたら、見積もりなしに効果的に仕事をするチームの話を聞くことができるでしょう。いつもこれは上手くいきます。なぜなら、彼らと彼らの顧客が、見積もりをすることが重要な決定に影響を与えることにはならないと分かっているからです。一つの例としては、業務と親密に働く小さなチームがあります。もし広範囲な業務は人々をその業務単位へ割り当てることでよしとするならば、仕事は優先順位によって実行されます。しばしば、チームが仕事を十分小さい単位への細分化することによって、それは成り立ちます。アジャイル流暢モデル ([agile fluency model](https://martinfowler.com/articles/agileFluency.html)) のチームのレベルが、ここに大きな役割を演じます。チームが物事を進める際に、始めは見積もりと闘い、次にそれがかなり上手くなり、次に彼らが見積もりを常には必要としない状態へ達します。

見積もりは、良いのか、悪いのかどちらでもありません。もし見積もりなしに効果的に仕事ができるなら、それなしにそのまま進めていきましょう。もし多少は見積もりが必要と考えるならば、決定するときの見積もりの役割をきちんと理解しておきましょう。もし見積もりが有意義な決定に影響を与えるのなら、そのまま進めて、自分ができる最高の見積もりをしましょう。とりわけ、見積もりがいつも必要だ、もしくは全く必要ないと言うような人には警戒しましょう。見積もりの利用に関するあらゆる議論は常に、特定の文脈に対して正しい技術が何かを決めるアジャイル原理を尊重します。

この bliki の投稿は、 **どうやってアジャイルプロジェクトでの見積もりをするのか**に関する PDF ebook の一部として、ソートワークス・スタジオから出版されました。このebookは、ストーリーポイントとストーリカウンティング技術による見積もりに関する8つの論述を含んでいます。



## 謝辞

私は色々なソートワークスの人たちのコメントに感謝することを繰り返し言います。特に、私はアンジェラ・ファーガソン、デイヴ・パティンソン、パット・クーアを声に出したいです。そして非常に早い返答と流暢モデルへのリンクに関する私の質問に関して、ジェームズ・ショアにも感謝しないといけません。


## 注釈

1: 最近の読み物としては[見積もりは悪](http://pragprog.com/magazines/2013-02/estimation-is-evil)があります。それはロン・ジェフリーズによる見積もりがもたらす問題に関する素晴らしい議論です。

2: 私はロン・ジェフリーズからこの類推を得ました。これについて書かれている出典は持っていませんが。[訳者注：非常に理想的できれいな条件の中で推測するという意味]

3: この状況は、[メトリクスの不適切な利用](https://martinfowler.com/articles/useOfMetrics.html)の素晴らしい例です。

4: 見積もりと期待
同僚のアンジェラ・ファーガソンによる、これについてのコメントが私は特に好きです。「見積もりが期待を設定する方法は、私たち次第です。見積もりが固定されている、もしくは 生の見積もり = 実績労力 / 期間 であると考える顧客に辿り着いついてしまうのは、**貧弱なプロジェクトマネジメント(それはプロジェクトマネージャによるか、もしくは他のチームメンバーによるのかどちらかですが)になります。**」
「私は実際、主要な顧客と週一で成果の悪い知らせを実践しようとしました。物事が期待してたように進んでいるときでさえ。『そしたら私たちは今かなりうまく軌道に乗っているように見えているが、もし仮に期待しているより長い時間が掛かるようなものをみつけた、もしくは要求が期待しているより大きく膨れ上がる、もしくは新しく非常に重要なものを見つけたなら、その一番良い進め方はどうなると思いますか。』そのとき、選択肢を探すことになります。ストーリーを切り落とす、時間を追加する、定員を増やすなど。これは、予期していた予期しないことが起きるとき(起きると知っているからです)、その会話が顧客にとって新しく恐ろしいものにはならないだろうということを意味します。」

5: 非常に雑に言えば、人は得をする喜びの2倍分、損失の痛みを感じます。

6: もしこれをするなら、[ジャンケン見積り](/ThrownEstimate)のような方法が、議論を良いペースへ持っていきます。

7: もちろん、小さい単位へ仕事を細分化することは、暗黙の見積もりが多少必要になります。しかしもっと一般的で明示的な見積もり活動に対して、実はこれは違うしろものです。

8: ジェームズ・ショアの最近のブログ投稿として、流暢さが見積もりの実践にどれだけ影響を与えるかについての[観察を詳細に述べた](http://www.jamesshore.com/Blog/Estimation-and-Fluency.html)ものがあります。私は、流暢さの色々な段階において、似たような実践の分析が非常に役立つと思っています。


訳：nishimori
