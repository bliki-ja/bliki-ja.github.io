---
title: リファクタリングの語源
tags: [refactoring]
---

<!-- Where did the word refactoring come from? -->
### *リファクタリング*はどこからやってきた？

<!-- This question struck my mind a few times when writing the refactoring book. I knew the term was used within a fairly small community, so in order to discover the etymology of refactoring I talked to the people in that group (Ward Cunningham, Kent Beck, Bill Opdyke, John Brant, Don Roberts, Ralph Johnson...) to find what had led them to come up with the term. -->

この疑問は、私が『リファクタリング』の執筆中に何度か頭をよぎりました。この用語は比較的小さなコミュニティ内で使用されていることを知っていたため、彼ら（ウォード・カニンガム、ケント・ベック、ビル・オプダイク、ジョン・ブラント、ドン・ロバート、ラルフ・ジョンソンなど）にリファクタリングの語源について話を聞くことにしました。彼らはどこから用語の着想を得たのでしょうか。

<!-- 以前の文章の翻訳：リファクタリング本を執筆中、この疑問が何度か頭に浮かびました。ただそのときは、語源を捜し求めることが遣り甲斐のあることだとは思えませんでした——焦点をあてていたのは''技術''だったからです。ですが、リファクタンリングのアイデアをつくりあげるのを手伝ってきた人ち（Ward Cunningham, Kent Beck, Bill Opdyke, John Brant, Don Roberts, Ralph Johnson...)に聞いてみることにはしました。 -->


<!-- The obvious answer comes from the notion of factoring in mathematics. You can take an expressions such as x^2 + 5x + 6 and factor it into (x+2)(x+3). 
By factoring it you can make a number of mathematical operations much easier. 
Obviously this is much the same as representing 18 as 2*3^2. 
I've certainly often heard of people talking about a program as well factored once it's broken out into similarly logical chunks. -->

リファクタリングが数学の因数分解（ファクタリング）に由来するのは明らかです。たとえば、`x^2 + 5x + 6`は`(x+2)(x+3)`に因数分解できます。因数分解することで、数学的な演算を大幅に簡略化できます。`18`を`2*3^2`にするのも同じことです。プログラムを論理的に意味のある単位に分解できたことを「うまく因数分解できた」と表現している人がいるというのはよく耳にします。

<!-- リファクタリングが、数学の因数分解（ファクタリング）から来ていることは明らかです。x^2 + 5x + 6 という式は、(x+2)(x+3)というふうに因数分解できます。因数分解を行うことで、複雑な式が簡単になるのです。もちろん、18 を 2*3^2 と表すのも、同じことです。I've certainly often heard of people talking about a program as well factored once it's broken out into similarly logical chunks.★
 !-- （案１：一度うまく分解されたプログラムは、論理的なまとまりにうまく分かれているとよく耳にします。）（案２：一旦論理的なまとまりに分かれたプログラムが、良く因数分解されたのと同様に言われるのをしばしば耳にします。)（案３：プログラムを論理的な塊に分けるということは因数分解のようなものだとよく耳にします。）(案４：ソフトウェアが似たロジックの塊ごとにうまく分割されていることを、うまくファクタリングされていると説明するのはよく聞きます。) -->

<!-- When I asked around the creators of refactoring, the common answer was that they had no idea. The term had been around for a while and they don't know where it came from. -->
リファクタリングの考案者たちに用語の由来について質問したところ、口をそろえて「知らない」という答えが返ってきました。以前から使われてきたはずですが、その由来については誰も把握していなかったのです。

<!-- リファクタリングのクリエーターたち(the creators of refactoring)に語源を聞いてまわったら、口を揃えて「分からない」と言われました。用語としては、しばらく使われてきたはずなのですが、どこから来たのか、語源は分かりません。 -->

<!-- The one definite answer I got was from Bill Opdyke, who did the first thesis on refactoring. He remembered a conversation during a walk with Ralph Johnson. 
They were discussing the notion of Software Factory, which was then in vogue. 
They surmised that since software development was more like design than like manufacturing, it would be better to call it a Software Refactory. 
Refactory has gone on to be the name for the consulting organization that Ralph and his colleagues use. -->

確かな回答が[ビル・オプダイク](https://csc.noctrl.edu/f/opdyke/)から得られました。彼はリファクタリングに関する[最初の学位論文](ftp://st.cs.uiuc.edu/pub/papers/refactoring/opdyke-thesis.ps.Z)を書いた人物です。彼は散歩中にラルフ・ジョンソンと交わした会話を覚えていました。彼らは当時流行していた「ソフトウェア・ファクトリー」の概念について議論していました。彼らは、ソフトウェア開発は[製造よりも設計に近い](https://patricklogan.blogspot.com/2003_08_31_patricklogan_archive.html)ため、「ソフトウェア・リファクトリー」と呼ぶほうが適切だと考えました。なお、「リファクトリー」はラルフたちの[コンサルティング会社](https://refactory.com/)の社名に採用されています。

<!-- リファクタリングについて[最初の論文](ftp://st.cs.uiuc.edu/pub/papers/refactoring/opdyke-thesis.ps.Z)を書いた [Bill Opdyke](http://csc.noctrl.edu/f/opdyke/) から聞いた確かな情報があります。彼は、Ralph Johnson と立ち話で、当時流行っていた「ソフトウェアファクトリー」について議論していたそうです。ソフトウェア開発というものは、[製造というより設計である](http://patricklogan.blogspot.com/2003_08_31_patricklogan_archive.html)。故に、ソフトウェア''リ''ファクトリーと呼んだほうがいいんじゃないか。彼らはそう思ったそうです。「リファクトリー」は、Ralphらの[コンサルティング会社](http://www.refactory.com/)の名前となって残っています。 -->

<!-- The foundations of what we refer to these days as refactoring comes from the Smalltalk communities. However the metaphor of factoring a program was also part of the Forth community. Bill Wake dug out the first known printed mention of the word “refactoring” in a Thinking Forth, a 1984 book by Leo Brodie. We're pretty sure that this usage didn't pass from the Forth community to the Smalltalk community, but developed independently. -->

現在「リファクタリング」と呼ばれる手法の基礎はSmalltalkコミュニティに由来します。ただし、プログラムを「因子分解する」という比喩表現は、Forthコミュニティでも用いられていました。[ビル・ウェイクの調査](https://www.laputan.org/catfish/2011/03/post.html)によると「リファクタリング」という用語がはじめて印刷物に登場したのは、レオ・ブロディの著書『Thinking Forth』（1984年）だそうです。ただし、ForthコミュニティからSmalltalkコミュニティに伝播したわけではなく、それぞれが独立して発展したと私たちは考えています。
