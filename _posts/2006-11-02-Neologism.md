---
title: 造語
tags: [writing]
---

<!--
Neologism:

1: a new word, usage, or expression.
2: a meaningless word coined by a psychotic.

-- Merriam-Webster
-->

> 造語（Neologism）
>
> 1. 新しい単語、用法、または表現
> 2. 精神疾患の影響で作られた意味のない言葉
>
> -- [Merriam-Webster](http://www.webster.com/cgi-bin/dictionary?va=neologism)

<!-- If you read much of my writing you'll quickly notice that I am a compulsive neologiser. I'm always looking to come up with new words and phrases, indeed this bliki is designed around this habit. -->

私の文章を多く読んでいると、私が強迫的に造語せずにはいられないタイプだと気づくでしょう。私はいつも新しい言葉やフレーズを思いつこうとしていて、実のところ、このblikiもその習性を前提にして設計されています。

<!-- I do it because much of what I try to write about is the tricky subject of software design, where our vocabulary is limited and often confusing. As I see concepts that are little-known or oft-misunderstood, I try to give them a name so they are easier to talk about. Developing a domain-specific jargon is often criticized for being exclusionary, but as Kathy Sierra points out, such a jargon makes communication much more efficient and interesting. -->

私がこれをする理由は、私が扱おうとしているテーマの多くがソフトウェア設計という難解な分野であり、その語彙が限られていて、しばしば混乱を招くからです。私は、あまり知られていない概念や誤解されやすい概念を見つけたとき、それに名前を付けることで議論をしやすくしようとします。分野特有の専門用語は、排他的であると批判されることがよくあります。しかし、Kathy Sierraが[指摘している](https://headrush.typepad.com/creating_passionate_users/2006/11/why_web_20_is_m.html)ように、そのような専門用語はコミュニケーションをより効率的で面白いものにするのです。

<!-- Nelogising is something I share with the broader pattern movement. From the very beginning the patterns community has put a lot of energy figuring how best to name the patterns they describe. -->

造語は、パターンムーブメントとも共通するものです。初期の頃から、パターンコミュニティは自分たちが記述するパターンに最適な名前を付けることに多くのエネルギーを費やしてきました。

<!--
Naming a pattern immediately increases our design vocabulary. It lets us design at a higher level of abstraction. Having a vocabulary for patterns lets us talk about them with our colleagues, in our documentation, and even to ourselves. It makes it easier to think about designs and to communicate them and their trade-offs to others. Finding good names has been one of the hardest parts of developing our catalog.

-- The Gang of Four
-->

> パターンに名前を付けることで、私たちの設計語彙はすぐに拡張される。それにより、より高い抽象レベルで設計ができるようになる。パターンの語彙を持つことで、同僚と話し合い、ドキュメントに記述し、さらには自分自身の思考整理にも使えるようになる。設計について考えたり、それを他者に伝えたり、そのトレードオフを議論したりするのが容易になるのだ。良い名前を見つけることは、パターンカタログを作成する上で最も難しい課題のひとつだった。
>
> -- The Gang of Four

<!-- Of course there are downsides to trying to create this kind of vocabulary. It does become a jargon which, while aiding communication for those who know it, also excludes those who don't. On the whole I feel that the benefits win out. -->

もちろん、このような語彙を作ることにはデメリットもあります。確かに、それを知っている人にはコミュニケーションを助けますが、知らない人には排他的なものになってしまいます。しかし、私は全体としてはメリットの方が大きいと感じています。

<!-- Choosing good words, whether for my more permanent patterns or just for these bliki entries is a hard task. I spend a lot of time trying to think of how words will work, looking something that is an evocative name, doesn't get confused with existing terms, and is reasonably short (and ideally catchy). -->

私の考案したパターンのためであれ、このblikiのエントリのためであれ、私は言葉を慎重に選びます。言葉がどのように機能するかを考え、直感的で、既存の用語とまぎらわしくなく、適度な短さがあり、理想的にはキャッチーなものを探します。

<!-- Creating completely new terms is what gets the attention, but its actually something I'd rather not do. I prefer to use an existing term if there's one available. After all that's less effort. I then balance it with its common usages to see how well it fits the concept I'm talking about. Sometimes this results in making a change, for instance my resistance to using InversionOfControl to describe what was going on with dependency injection. I always find this a hard decision - it's much better to use the existing term if it fits, but often the existing term has a diffuse meaning and I need something crisper. -->

完全に新しい用語を作ることは注目を集めやすいですが、実は私はできればそれを避けたいと思っています。既存の言葉が使えるなら、それを使う方が手間がかかりません。そこで、まずは既存の用語の意味を調べ、それが私の扱う概念にフィットするかどうかを検討します。場合によっては用語を変更することもあります。たとえば、私は[制御の逆転](/InversionOfControl)という用語が依存オブジェクト注入 (Dependency Injection) を説明するのに適しているかどうかに疑問を持っていました。私はこのような決定を下すのがいつも難しいと感じます。既存の用語が適していれば、それを使うのがベストですが、多くの場合、既存の用語は意味が広すぎてぼやけているため、より明確な表現が必要になるのです。

<!-- I have been accused of being to quick to neologise, that perhaps reflects my preference for unfamiliar but precise terms over well known but fuzzy language. -->

私は造語しすぎだと言われることがあります。それはよく知られたが曖昧な言葉よりも、馴染みがないが正確な言葉を好む私の性格を反映しているのかもしれません。

<!-- Of course the limitation of this is that there's no way for me, or any group of patterns writers, to standardize the vocabulary of everyone. The terms I use often don't get the most currency. That's understandable, but it doesn't stop me. I find that if without a consistent vocabulary I can't write clearly, even if that vocabulary is only consistent for me. So my fundamental reason is selfish, I develop a consistent vocabulary because I need one. -->

もちろん、造語を広めることには限界があります。私や他のパターンライターたちが語彙を標準化できるわけではありません。私の考えた用語が広まるとは限りません。しかし、それでも私はやめません。一貫した語彙がなければ、私は明確に文章を書くことができないからです。たとえ、その語彙が私の中だけで一貫しているものだったとしても。

<!-- I find it odd that you run into the occasional accusation that this is done for some kind of material gain. I've never seen anyone make money from coining terms, otherwise Rebecca, Josh and I would be idling on an island from POJO and Jesse James Garrett would have bought an island from Ajax. Indeed most people who use the term probably don't know who came up with POJO, and that's just fine with me. -->

これが金銭的な目的で行われているとたまに非難されるのが不思議です。私は造語で金銭的な利益を得ている人を見たことがありません。もしそんなことができるなら、[POJO](/POJO)を生み出したRebeccaやJoshは、南の島でのんびり暮らしているでしょうし、[Ajax](http://www.adaptivepath.com/publications/essays/archives/000385.php)を広めたJesse James Garrettは島を買っているはずです。実際のところ、大半の人はPOJOという用語の生みの親が誰かすら知らないでしょう。それでも私は気にしません。

<!-- Neologising is something I did a lot before I became a software writer, although my earlier activity was quite different, and something many people do. This is using domain modeling to build up a UbiquitousLanguage to create communication between developers and their customers. It's a different activity with a much narrower audience. Many projects do it, and even those who don't create a language in their code to describe the domain, even if it isn't shared with non-geeks. -->

造語は、私がソフトウェアライターになる前からやっていたことです。ただし、昔の活動は今とは異なります。多くの人が実践していることですが、ドメインモデリングを通じて、[ユビキタス言語](/UbiquitousLanguage)を作り上げることで、開発者と顧客のコミュニケーションを円滑にするという手法があります。これは対象となる人が限られた活動であり、ソフトウェア開発のプロジェクトごとに行われるものです。実際、多くのプロジェクトがこれを行っており、たとえ明示的に共通言語を作らなくても、コードの中でドメインを表現するための語彙は確立されています。

<!-- Despite these differences, both activities share the desire to speak with brevity and precision about some domain. In either case I neologise because I find these words are useful tools that helps me enormously in understanding a domain. I use them publicly because I believe that the tools that help me can be useful to others too. -->

違いはあるものの、どちらの活動にも共通する目的があります。ある分野について、簡潔かつ正確に語れるようにすることです。どちらのケースでも、私は造語をすることで、その分野の理解を助けるツールを作り出しているのです。そして、それが私にとって役に立つなら、他の人にとっても役立つかもしれないと思い公開しています。
