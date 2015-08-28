---
title: Transactionless
tags: [database, application architecture]
---

http://martinfowler.com/bliki/Transactionless.html

2007/3/18

//A couple of years ago I was talking to a couple of friends of mine who were doing some work at eBay. It's always interesting to hear about the techniques people use on high volume sites, but perhaps one of the most interesting tidbits was that eBay mostly hardly ever uses database transactions.

数年前にeBayで働く友人たちと話していたときのことだ。
大規模サイトで使われる技術の話を聞くのはいつも楽しいが、特に興味深かったのが、eBayでは滅多にデータベーストランザクションを使用しないという話だった。

//For most people, coming into a transactionless environment is quite a shock. Using transactions is a very accepted part of working with databases. A lot of people, including myself, see transactions as one of the key benefits that databases give you.

トランザクションがない環境というのは驚くべきことではないだろうか。
データベースを扱うときにトランザクションを使うのはごくごく一般的なことだ。
多くの人にとって（私もそうだが）トランザクションはデータベースを使う利点のひとつだ。

// The rationale for not using transactions was that they harm performance at the sort of scale that eBay deals with. This effect is exacerbated by the fact that eBay heavily partitions its data into many, many physical databases. As a result using transactions would mean using distributed transactions, which is a common thing to be wary of.

eBayがトランザクションを使わないのは、あのような規模ではパフォーマンスに影響が出てしまうからだというものだった。
eBayではデータをいくつもの物理的データベースにパーテション分割しており、
それがトランザクションを使わない理由に拍車をかけていた。
その状況でトランザクションを使うとなると、分散トランザクションを使わざるを得ないからだ。

// This heavy partitioning, and the database's central role in performance issues, means that eBay doesn't use many other database facilities. Referential integrity and sorting are done in application code. There's hardly any triggers or stored procedures.

高度にパーテショニングするというのがパフォーマンス問題におけるデータベースの中心的な役割であり、eBayではその他のデータベース機能を使っていなかった。
参照整合性やソートなどはすべてアプリケーションコード側で行っており、トリガーやストアドプロシージャも使っていなかった。

//My immediate follow-up to the news of transactionless was to ask what the consequences were for the application programmer, in particular the overall feeling about transactionlessness. The reply was that it was odd at first, but ended up not being a big deal - much less of a problem than you might think. You have to pay attention to the order of your commits, getting the more important ones in first. At each commit you have to check that it succeeded and decide what to do if it fails.

その話を聞いたとき、私はすぐに「アプリケーションプログラマへの影響はどうだった？トランザクションがないことについてはどんな感じだった？」と質問した。
答えは「最初は変な感じだったけど、あまり問題にならなくなった。考えていたほどの問題はなかった。データベースコミットの順番については、より重要なものを先に処理するなどして、注意を払う必要がある。また、各コミットが成功したかどうかを確認する必要があるし、失敗した場合にどう対処すればよいかも決めておかなければならない」というものだった。

// This style of programming intrigued me, but since I was told about it quietly, I wouldn't talk about it more widely. I can now because Dan Pritchett gave a fascinating talk at QCon this week about eBay's architecture, including this aspect. (I expect his talk, as well as an interview, will appear on InfoQ in a while.)

このプログラミングスタイルは非常に興味深いものだった。
だがその時はおとなしく話を聞いていて、誰かに言いふらしたりはしなかった。
今になってこの話ができるのは、[Dan Pritchett](http://www.addsimplicity.com/)が今週のQConでeBayのアーキテクチャについて[講演](http://qcon.infoq.com/qcon/speakers/show_speaker.jsp?oid=175)したからだ。そこではこのトランザクションレスの話についても述べられていた。（インタビューだけでなく、彼の講演も[InfoQ](http://www.infoq.com/)に掲載されるといいのだけれど）

// I'd like to see more about the details of programming without transactions in this kind of manner. Apart from the fact that it's always worth thinking about alternatives, it's also the case that transactionlessness is more common than many people think. It's common to have multi-step business processes with multiple resources that either would need long-running distributed transactions, or resources that have no support for transactions.

私はこのようなトランザクションレスのプログラミングについて、もっと詳しく知りたいと思っている。
代替案を考えることは重要だという意味もあるが、それよりもこれは、トランザクションレスは多くの人たちが考えている以上に普通のことなんだという事例である。
複数のリソースを使ってマルチステップビジネスプロセスを実行するのはよくあることだ。
そこでは長時間の分散トランザクションやトランザクションをサポートしないリソースが必要となる。

// We shouldn't read too much into this. Nobody is arguing that we should tear transactions out of our toolkit. I don't know enough details about eBay to judge whether avoiding transactions is the right approach even for them. But eBay's example suggests that living without transactions is far less impossible than many people think.

この話を深読みしてはいけない。
誰もトランザクションをツールボックスから叩き出せと言っているわけではない。
eBayが、少なくとも彼らにとって、トランザクションを使用しない手法が正しいと判断した理由を私は与り知らない。
だがeBayの事例は、トランザクションなしでやっていくことは思っているほど不可能なことではないことを示している。

!参考

* http://www.addsimplicity.com/downloads/eBaySDForum2006-11-29.pdf
