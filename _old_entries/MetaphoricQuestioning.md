http://martinfowler.com/bliki/MetaphoricQuestioning.html

2004/12/16

//As regular readers of my work may know, I'm very suspicious of using metaphors of other professions to reason about software development. In particular, I believe the engineering metaphor has done our profession damage - in that it has encouraged the notion of separating design from construction. 

常連さんはご存じでしょうが、
私は他業種のメタファを使ってソフトウェア開発を論ずるのはどうかと思っています。
とりわけエンジニアリングのメタファは
[[設計と構築を分離する|http://martinfowler.com/articles/newMethodology.html]]([[翻訳|http://www007.upp.so-net.ne.jp/kengai/fowler/newMethodology_j.html]])という考えをもたらし、
我々の業界に多大な損害を与えたと信じてやみません。

//As I was hanging around our London office, this issue came up in the context of Lean Manufacturing, a metaphor that's used quite often in agile circles - particularly by the Poppendiecks. If I don't like metaphoric reasoning from civil engineering, do I like it more from lean manufacturing?

ロンドン支社の辺りで、リーン生産方式絡みでこの問題について考えました
（リーン生産方式とはアジャイル界隈でよく使われるメタファで、
{{isbn('4822281930','ポッペンディーク夫妻')}}などが使っています）。
建築のメタファが好きではないなら、
リーン生産方式のメタファならいいのでしょうか？

//I think the same dangers apply, but it all comes down to how you use the metaphor. Comparing to another activity is useful if it helps you formulate questions, it's dangerous when you use it to justify answers.

私は、同様の問題が発生すると思います。
しかし、すべてはメタファの使いようです。
問題を提起するために使うのであれば、
他の活動と比較することも役に立つでしょう。
しかし、答えを正当化するために使うのであれば、それは大変危険です。

//So as an example - one of the principles of lean manufacturing is the elimination of inventory. This leads to the question of whether there is an analogous item to inventory in software development. People have suggested that up front documentation is such an analog. It sits there, producing no value, until you actually deliver some software that's based on it.

リーン生産方式の原則のひとつ「在庫のムダとり」を例に挙げましょう。
ソフトウェア開発において「在庫」とは何でしょうか。
前払いのドキュメントがまさに「在庫」だとみんなは言っています。
ドキュメントを元にして実際に何らかのソフトウェアを作り出すまで
何の価値も生み出していませんから、ドキュメントはまさに「在庫」でしょう。

//Here the metaphor is helping us look at our practices from a different point of view. It helps us to ask questions about what we do. Thus far I think a metaphor is useful.

メタファを使うと、我々がいつもやっていることを新たな視点から見ることができます。
我々が行っていることについて質問することができるのです。
ここまでは、メタファは有益なものです。

//The breaking point comes when people say: "we eliminate inventory in lean manufacturing, up front documentation is the equivalent of inventory, therefore we eliminate up front documentation". Now I agree we need to substantially reduce this kind of speculative documentation; but the rationale for doing so must come from thinking about the software development process, not from purely reasoning by analogy.

しかし、「我々はリーン生産方式でいう"在庫"を廃止する。
前払いのドキュメントは"在庫"だ。ゆえにドキュメントを廃止する。」
と言った時点で、もうメタファは必要なくなります。
リスクあるドキュメントを減らす必要があるというのには賛成です。
ですが、その根拠はソフトウェア開発プロセスから出てこなければなりません。
例え話だけで判断してはいけないのです。

{{rcomment}}
*2004-12-27 (月) 12:08:15 ''[[kdmsnr]]'' : 変更しました。
*2004-12-27 (月) 11:44:43 ''[[名無しさん]]'' : 「メタファによる問いかけ」や「メタファを使った疑問」でも題名としてかなり良くなると思います。
*2004-12-25 (土) 12:53:49 ''[[名無しさん]]'' : 確かに内容を想像できない題名ですね。「メタファへの疑問」に一票。
*2004-12-25 (土) 10:59:26 ''[[名無しさん]]'' : 文中で「メタファ」を使うなら「メタファへの疑問」でいいんじゃないかと。
*2004-12-22 (水) 18:12:28 ''[[holic]]'' : 表題の MetaphoricQuestioning です。素直に訳すと、「比喩的な問いかけ」なのは確かなんですけどね。
*2004-12-20 (月) 17:41:16 ''[[kdmsnr]]'' : 「疑わしさ」の意味がよく分からないんですが、どのあたりでしょうか？

*2004-12-20 (月) 17:22:10 ''[[holic]]'' : questioning は「問いかけ」よりは「疑わしいさ」のほうが、原文にあっている気がします。
