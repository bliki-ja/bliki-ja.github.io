---
title: リファクタリングの語源
tags: TAGS
---

http://martinfowler.com/bliki/EtymologyOfRefactoring.html

!!''リファクタリング''はどこからやってきた？

リファクタリング本を執筆中、この疑問が何度か頭に浮かびました。ただそのときは、語源を捜し求めることが遣り甲斐のあることだとは思えませんでした——焦点をあてていたのは''技術''だったからです。ですが、リファクタンリングのアイデアをつくりあげるのを手伝ってきた人ち（Ward Cunningham, Kent Beck, Bill Opdyke, John Brant, Don Roberts, Ralph Johnson...)に聞いてみることにはしました。

リファクタリングが、数学の因数分解（ファクタリング）から来ていることは明らかです。x^2 + 5x + 6 という式は、(x+2)(x+3)というふうに因数分解できます。因数分解を行うことで、複雑な式が簡単になるのです。もちろん、18 を 2*3^2 と表すのも、同じことです。I've certainly often heard of people talking about a program as well factored once it's broken out into similarly logical chunks.★
（案１：一度うまく分解されたプログラムは、論理的なまとまりにうまく分かれているとよく耳にします。）（案２：一旦論理的なまとまりに分かれたプログラムが、良く因数分解されたのと同様に言われるのをしばしば耳にします。)（案３：プログラムを論理的な塊に分けるということは因数分解のようなものだとよく耳にします。）(案４：ソフトウェアが似たロジックの塊ごとにうまく分割されていることを、うまくファクタリングされていると説明するのはよく聞きます。)

リファクタリングのクリエーターたち(the creators of refactoring)に語源を聞いてまわったら、口を揃えて「分からない」と言われました。用語としては、しばらく使われてきたはずなのですが、どこから来たのか、語源は分かりません。

リファクタリングについて[[最初の論文|ftp://st.cs.uiuc.edu/pub/papers/refactoring/opdyke-thesis.ps.Z]]を書いた [[Bill Opdyke|http://csc.noctrl.edu/f/opdyke/]] から聞いた確かな情報があります。彼は、Ralph Johnson と立ち話で、当時流行っていた「ソフトウェアファクトリー」について議論していたそうです。
ソフトウェア開発というものは、[[製造というより設計である|http://patricklogan.blogspot.com/2003_08_31_patricklogan_archive.html]]。故に、ソフトウェア''リ''ファクトリーと呼んだほうがいいんじゃないか。彼らはそう思ったそうです。
「リファクトリー」は、Ralphらの[[コンサルティング会社|http://www.refactory.com/]]の名前となって残っています。
