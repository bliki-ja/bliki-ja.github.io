---
title: 意味の希薄化
tags: [agile adoption]
---

<!-- http://www.martinfowler.com/bliki/SemanticDiffusion.html -->

<!-- I have the habit of creating Neologisms to describe the things I see in software development. 
 !-- It's a common habit amongst writers in this field, 
 !-- 	for software development still lacks much useful jargon. 
 !-- One of the problems with building a jargon 
 !-- 	is that terms are vulnerable to losing their meaning, 
 !-- in a process of semantic diffusion - to use yet another potential addition to our jargon. -->

ソフトウェア開発で目撃したものを説明するために、私は[造語](Neologisms)を作る習慣があります。
便利な用語が少ないので、ソフトウェア開発の分野の書き手はこのようなことをよくやります。
造語を作るときの問題は、意味の希薄化により本来の意味が失われ、別の意味が追加されてしまうことです。


<!-- Semantic diffusion 
 !-- 	occurs when you have a word that is coined by a person or group,often with a pretty good definition, 
 !-- 	but then gets spread through the wider community in a way that weakens that definition. 
 !-- This weakening risks losing the definition entirely - and with it any usefulness to the term. -->

意味の希薄化が発生するのは、個人やグループが作った用語があり、適切に定義されていたにもかかわらず、歪められた定義がコミュニティに広まったときです。
これにより、用語の定義が完全に失われる危険性があります。
また、それに伴い、用語の利便性も失われてしまうでしょう。

<!-- I'm partly prompted to write this because I see this semantic diffusion happening very publicly to two terms at the moment: 'agile' and 'Web2.0'.  -->
<!-- Both were coined in the last few years 
 !-- 	and both come with lengthy definitions. (Agile has the agile manifesto, together with numerous books and articles by the authors of the manifesto.  -->
<!-- Web 2.0 has an excellent definitional article by Tim O'Reilly.)  -->
<!-- Yet both of these face a lot of corruption in the field.  -->
<!-- I've run into people who think agile methods mean you shouldn't do any planning and those who think Web 2.0 is solely about using AJAX. 
 !-- (A more personal case is RefactoringMalapropism, but I'll leave that aside for the moment.) -->

私が本記事を書こうと思ったのは、「アジャイル」と「[Web 2.0](Web2.0)」に意味の希薄化が発生しているからです。
いずれも数年前に作られた用語であり、しっかりとした定義があります（アジャイルには[アジャイルマニフェスト](https://agilemanifesto.org/)があり、署名者たちが執筆した書籍や[記事](https://www.martinfowler.com/articles/newMethodology.html)も多数あります。Web 2.0にはTim O'Reillyが[定義を記したすばらしい記事](http://www.oreillynet.com/pub/a/oreilly/tim/news/2005/09/30/what-is-web-20.html)があります）。
しかし、どちらの用語も現場では意味が改変されています。
私は「アジャイル手法では計画を立てることはない」や「Web 2.0とはAJAXを使用することである」と誤解している人たちに出会ったことがあります（個人的なケースとしては[リファクタリングの誤用](RefactoringMalapropism)もありますが、それは脇に置いておきましょう）。

<!-- Semantic diffusion is essentially a succession of the telephone game 
 !-- 	where a different group of people to the originators of a term start talking about it 
 !-- 	without being careful about following the original definition.  -->
<!-- These people are listened to by a further group 
 !-- 	which then goes on to add their own distortions.  -->
<!-- After a few of these hand-offs 
 !-- 	it's easy to lose a lot of the key meaning of the term 
 !-- 	unless you make the point of going back to the originators.  -->
<!-- It's ironic that it's popular terms that tend to suffer from this the most.  -->
<!-- That's inevitable, of course, since unpopular terms have less people to create the telephone chains. -->

意味の希薄化は[伝言ゲーム](https://en.wikipedia.org/wiki/Chinese_whispers)の一種です。
用語の発案者ではない人たちが、元の定義に注意を払うことなく用語について話しているのです。
その話を聞いた人たちが、さらに独自の歪みを追加します。
このような伝言ゲームを何度か繰り返していくと、発案者まで戻らない限り、用語の重要な意味が失われます。
皮肉なことに、この影響を最も受けやすいのが人気のある用語です。
人気のない用語の伝言ゲームに加わる人はいないので、これは必然とも言えます。

<!-- Semantic diffusion tends to coincide 
 !-- 	with hype phase of an idea.  -->
<!-- As an idea becomes attractive, lots of people are... well... attracted.  -->
<!-- Many of these followers talk about the term and teach about it.  -->
<!-- If these people aren't careful to go back to the source, 
 !-- 	the telephone game begins.  -->
<!-- Popular ideas also spread primarily 
 !-- 	though communication media 
 !-- 	that are more likely to lead to misunderstanding - such as writing. 
 !-- Many followers aren't fortunate enough to work directly with the originators and thus learn directly from them. -->

意味の希薄化は、アイデアのハイプサイクルの「ピーク」と一致します。
アイデアが魅力的になると、多くの人たちが……何と言うか……その魅力にひかれます。
そして、その用語について話したり、教えたりします。
こうした人たちが原典に戻ることはありません。伝言ゲームの始まりです。
また、人気のあるアイデアは誤解を生みやすいメディア（文書）を通じて広がります。
多くの人たちが発案者から直接学べるわけではないのです。

<!-- A related indicator to popularity is desirability.  -->
<!-- A word that sounds good may be more likely to suffer from semantic diffusion.  -->
<!-- 'Agile' sounds like something you'd certainly want to be, 
 !-- 	the antonyms of agile aren't at all appealing.  -->
<!-- Who would want to still be merely 1.0 of the web?  -->
<!-- Kent Beck noticed this effect and thus deliberately picked Extreme Programming as a name 
 !-- 	because it less inherently desirable: 'extreme' is often used as a pejorative.  -->
<!-- Using a less desirable term 
 !-- 	may reduce semantic diffusion, but I don't think it avoids the problem completely.  -->
<!-- After all we saw semantic diffusion occur to 'object-oriented' which is a neutral term. -->

人気と関連する指標は「望ましさ」です。
響きの良い単語は意味の希薄化の影響を受けやすいのです。
「アジャイル」はそうなりたいと思えますが、アジャイルの反対語はそうではありません。
「Web 1.0」のままでいたい人などいるでしょうか？
Kent Beckはこうした効果に気づき、意図的に「エクストリームプログラミング」という名前を選びました。
「エクストリーム」は本質的に望ましいものではなく、非難するときに使われる言葉だからです。
望ましくない用語を使用すると、意味の希薄化の可能性は下がるでしょうが、問題を完全に回避できるわけではありません。
中立的な用語である「オブジェクト指向」にも意味の希薄化が発生したわけですから。

<!-- Semantic diffusion is more likely to occur with things 
 !-- 	that are broad concepts rather than hard technologies. 
 !-- Ruby on Rails is getting a lot of hype at the moment, 
 !-- 	but since it's a concrete tool it's hard for its meaning to weaken.  -->
<!-- Extreme Programming's list of concrete practices may also reduce this problem 
 !-- 	compared to agile's broader list of values and principles. -->

意味の希薄化は、具体的な技術よりも幅広い概念のほうが発生しやすいです。
たとえば、今はRuby on Railsがブームですが、具体的なツールなので意味が歪められることは少ないでしょう。
エクストリームプログラミングの具体的なプラクティスも、アジャイルの価値や原則などと比べると、こうした問題は軽減されるでしょう。

<!-- Semantic diffusion is a painful process to watch, 
 !-- particularly for those who find the ideas useful. 
 !-- At the moment I see signs of despair for both of these terms, 
 !-- some people in the agile world are talking of ditching the word agile. -->

意味の希薄化は、これらのアイデア（アジャイルとWeb 2.0）が有用だと思っている人たちにとっては見るのが辛いプロセスです。
現時点では、どちらの用語にも絶望の兆しが見えています。
アジャイルの世界にいる一部の人たちは「アジャイル」を捨てようとしています。

<!-- I'm more sanguine about all this, 
 !-- 	largely because I've seen it before.  -->
<!-- There was a time 
 !-- 	when almost any software tool or method was described as object-oriented.  -->
<!-- But now, years later, the essential meaning of OO is reasonably well understood.  -->
<!-- I saw the same thing happen with patterns.  -->
<!-- So terms do recover their semantic integrity 
 !-- 	and the current diffusion doesn't inevitably mean the terms will lose their meaning.  -->
<!-- I'm also less worried about it because I expected it, again having gone through this process before.  -->
<!-- I think it's an inevitable consequence of ideas becoming popular and despite its problems, 
 !-- 	I prefer the hype to ignorance.  -->
<!-- A final comforting thought is that once the equally inevitable backlash 
 !-- 	comes we get a refocusing on the original meaning.  -->
<!-- As I'm writing this I'm comforted by the fact that 
 !-- 	I can't think of a term that lost its meaning entirely, 
 !-- although I'm sure it's happened. 
 !-- (SOA doesn't count, as I don't think there ever was a commonly agreed meaning for that to start with.) -->

しかし、私は楽観的です。似たような状況を見たことがあるからです。
以前、ほぼすべてのソフトウェアツールや手法がオブジェクト指向だった時代がありました。
数年後の現在では、OOの本質的な意味が理解されています。
同じことはパターンでも起こりました。
したがって、用語の意味は回復しており、用語が普及しても意味が失われるわけではありません。
このプロセスは以前にも経験したことがあり、予想もできているので、それほど心配はしていません。
これはアイデアが普及する際には避けられないことですし、問題はあるものの、誰にも知られないよりもブームになるほうが好ましいと思います。
最後に気休めの考えを伝えておくと、同じく避けられない反論があった場合には、本来の意味に立ち戻ればいいのです。
また、実際に起きたことではありますが、意味が完全に失われた用語をすぐには思いつかないので、私は安心しています（SOAは当てはまりません。合意された意味が最初から存在しなかったからです）。

<!-- Whatever the eventual outcome 
 !-- 	we still have to cope with semantic diffusion as it happens.  -->
<!-- One option is abandonment, 
 !-- 	to drop the diffuse term and pick a new one.  -->
<!-- I don't like this option 
 !-- 	because a new term only adds to the confusion and 
 !-- 	even if you're successful you just end up repeating the process for the new term.  -->
<!-- So my preference is to keep re-articulating the current terminology, 
 !-- 	pointing to those who understand the true meaning. -->

最終的な結果が何であれ、私たちは意味の希薄化が起こるたびに対処しなければなりません。
選択肢のひとつは放棄です。希薄化した用語を捨て、新しい用語を選択します。
私はこの選択肢は好きではありません。新しい用語は混乱を招くだけであり、たとえうまくいったとしても、新しい用語が同じプロセスを繰り返すことになります。
したがって、本当の意味を理解している人たちに向けて、現在の用語を何度も説明し続けることのほうが私の好みです。

<!-- A further complication is that these terms also shift.  -->
<!-- I'm sure if you asked the original seventeen authors of the agile manifesto, 
 !-- they would come up with a different document today. 
 !-- (Let alone the fact that that group wouldn't be the best group to speak for the movement today.)  -->
<!-- Again it's a responsibility for those who are identified as originators to point this out, both by talking about the way the ideas evolve and by pointing to new people who are playing an active role in that evolution.
 !-- (I'm pleased that the original seventeen "let the ship sail" to go its own way.)  -->
<!-- Let's not forget there's a tricky balance between holding to a clear definition and dogmatism. -->

さらに複雑なのは、これらの用語が変化することです。
アジャイルマニフェストの署名者17人は、今なら別の文書を残すことでしょう
（彼らは現在のムーブメントを語るのに最適なグループではありません）。
繰り返しになりますが、このことを指摘するのは発案者の責任です。
そのためには、アイデアの進化について語ったり、進化に積極的に関与している新しい人たちに注意を向けたりする必要があります（この点に関して言えば、発案者の17人が「[船を出航](agileStory)」させ、自由な展開を許したことを嬉しく思います）。
明確な定義を維持することと教義主義の間には難しいバランスがあることを忘れないでください。

<!-- All of this is hard work, but a good term is worth fighting for - particularly since the only bullets you need are words. -->

いずれも大変な作業ですが、優れた用語は守る価値があります。必要な武器は言葉だけなのですから。

<!-- Semantic Inversion -->
## 意味の反転

<!-- A common form of semantic diffusion is
 !-- 	when the term ends up meaning the opposite of what it was coined to describe. 
 !-- Such as "DevOps" turning into the name for a separated operations team or "Minimal Viable Product" being used for a $12M first release. Holly Cummins neatly coined "Semantic Inversion" to describe this variant of concern. -->

意味の希薄化の一般的な形態は、当初の意味とは反対の意味になってしまうというものです。
たとえば、「DevOps」が隔離された運用チームの名前になったり、「MVP」が1,200万ドルかかった最初のリリースに使用されたりすることです。
Holly Cumminsはこうした概念を説明するために「意味の反転」という用語を[作りました](https://x.com/holly_cummins/status/1416040187889688582)。
