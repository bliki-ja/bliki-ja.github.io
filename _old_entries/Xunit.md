---
title: Xunit
tags: TAGS
---

http://martinfowler.com/bliki/Xunit.html

//XUnit is the family name given to bunch of testing frameworks that have become widely known amongst software developers. The name is a derivation of JUnit the first of these to be widely known.

XUnitとは、今やソフトウェア開発者に広く知られるようになったテスティングフレームワークの総称である。最初に有名になった[[JUnit|http://junit.org/]]にちなんでその名がつけられている。

//The origins of these frameworks actually started in Smalltalk. Kent Beck was a big fan of automated testing at the heart of software development. To help him, and his clients, do this he would build a simple framework to organize and run unit tests. The focus was on making it easy for programmers to define the tests using their regular smalltalk environment, and then to run either a subset or a full set of tests quickly. Kent and his followers would run unit tests after every change to the system going through a rapid edit and test cycle in the Smalltalk IDE.

テスティングフレームワークの起源はSmalltalkである。
Kent Beckは、ソフトウェア開発の心臓部である自動テスティングの熱烈な愛好者だった。
彼は自分自身、そしてクライアントが、自動テスティングを行えるように、ユニットテストを構成したり実行したりするためのシンプルなフレームワークを作った。
このフレームワークの狙いは、通常のSmalltalk環境を使ったテストをプログラマが簡単に定義できるようにすること、そして、テストの一部または全てを迅速に実行できるようにすることだった。
Kentと彼のフォロワーたちは、Smalltalk IDEを使って編集とテストのサイクルを迅速に回すことで、システムを変更するたびにユニットテストを実行していた。

//I ran into Kent at this time. I'd already done the same thing myself, but Kent's framework had a nice combination of absurd simplicity and just the right features for me. Basically he did a better job of it than I did so I just used his. In particular we used the framework on C3, where Ron Jeffries was also introduced to it.

私がKentに出会ったのはその頃だった。
私もすでに同じようなことはやっていたのだが、Kentのフレームワークはウソのようにシンプルで、私が欲しい機能がピッタリそろった、絶妙な組み合わせの代物だった。
要するに、私よりも彼のほうがうまくやっていたわけで、私も彼のフレームワークを使うようになった。たとえば、[[C3]]でもこのフレームワークを使った。Ron Jeffriesもそこからそれを使うようになった。

//I say 'it' but that's really a misnomer. There was no single kent-beck-smalltalk-unit-testing framework. Kent wants people to control their own environment, so he liked to have each team build the framework themselves (it only took a couple of hours), that way they would feel happy to change it to suit their particular circumstances - essentially it was really a Seedwork.

先ほど「それ」といったが、実際には違う。
単一の kent-beck-smalltalk-unit-testing フレームワークは存在しないのだ。
Kentはみんなに環境をコントロールしてもらいたいと思っていたので、各チームには自分たちでフレームワークをビルドしてもらっていた（ビルドには数時間かかる）。
こうすることで、環境に合わせて自由に変更することができた——まさに[[Seedwork]]だったわけだ。

//It was still unknown outside the Smalltalk community, so it's fair to give JUnit the credit for spreading the idea more. JUnit was born on a flight from Zurich to the 1997 OOPSLA in Atlanta. Kent was flying with Erich Gamma, and what else were two geeks to do on a long flight but program? The first version of JUnit was built there, pair programmed, and done test first (a pleasing form of meta-circular geekery). I heard about it and demanded a copy, which makes me one of the first alpha users. I felt free to change things I didn't like, sending some contributions back to Kent and Erich. If you're wondering who to blame for the fact that assertion messages are the first argument instead of following the java convention of putting optional arguments at the end....

この時、Smalltalkコミュニティの外では、まだテスティングフレームワークは知られていなかった。そのため、JUnitがこのアイデアを広く広めたものとしてクレジットされている。
JUnitは、1997年にアトランタで開かれたOOPSLAに向かうチューリッヒ発の飛行機のなかで産声を上げた。
KentはErich Gammaと一緒だったが、2人のギークが長時間のフライトでやることといったら、それはプログラムしかないでしょう。
JUnitの最初のバージョンは、そこで、ペアプログラミングで、テストファーストで作られた（メタ循環的なのがギークっぽくてよいね）。
私はそれを聞いて、早速コピーをお願いし、最初のアルファユーザーになることができた。
気に入らないところは自由に変更することができたので、KentとErichにフィードバックを送ったりもした。
アサーションのメッセージがJavaの慣習のように引数の最後ではなく最初に置かれているのは誰のせいなんだと思っている人がいるかもしれないね……（遠い目）。

//JUnit also introduced the red/green bar progress indicator. At C3 we would color the whole window red once a test failed and green if they all passed. It was easy to see the window on the central build machine when you were integrating. JUnit introduced doing this as a progress bar, and thus added some new vocabulary to software developers.

JUnitでは、レッド／グリーンのプログレスバーも導入した。
C3では、テストが失敗するとウィンドウ全体が赤に、すべてパスすれば緑になった。
統合時に中央のビルドマシンのウィンドウを見るのが簡単だったのだ。
JUnitはこれをプログレスバーとして採用した。
そして、新しい語彙をソフトウェア開発者にもたらした。

//JUnit took off like a rocket - and was essential to supporting the growing movement of Extreme Programming and Test Driven Development. I've seen a huge change of attitude towards testing in the last decade, and I think JUnit played a big role in that. By being small and simple it encouraged people to learn and use it. It also proved amenable to others extending it integrating it into tools. (Although I wish Sun would just bundle the whole thing into the JDK.)

JUnitはロケットのように飛び立った——XPやTDDのムーブメントを支える必要不可欠な存在となった。
この10年でテスティングに対する姿勢が大きく変わったことを、私は目の当たりにしている。
それはJUnitの貢献であることが大きい。
小さくシンプルなことで、みんなが学びやすく使いやすかったわけだ。
ツールに統合して伝えれば影響を与えやすいということも分かった
（SunにはすべてをまとめてJDKにバンドルして欲しいと思っている）。

//As JUnit became more popular, other languages wanted one as well. I remember Michael Feathers putting together CppUnit for C++, which may have been the first port. Tons followed, nearly every language has at least one JUnit port. I suppose it was inevitable that it was also 'ported' back to Smalltalk as a real framework.

JUnitが有名になれば、他の言語でも必要とされる。
Michael FeathersがC++用のCppUnitを作ったのを覚えている。
おそらくそれが他言語への最初の移植だったと思う。
それから多くの言語が追従し、今ではおそらくほぼすべての言語に、少なくとも1つ以上のJUnitポートが存在する。
いつか本物のフレームワークとしてSmalltalkに「移植」され直す日が来ることだろう。

//The ports vary. Some are line by line reworkings of the original JUnit, with little concession to the target language. The first version of NUnit even had a "isVAforJava" method which originated in special handling for Visual Age for Java. Others have been more sophisticated: NUnit 2.0 was praised by Anders Heljsberg for its use of attributes in C# - experience that has come back to the Java community and JUnit itself as Java developed annotations.

移植されたものは様々である。
ターゲットの言語を考慮しながら、
オリジナルのJUnitを1行1行書き直しているものもある。
たとえば最初のバージョンの[[NUnit|http://nunit.org/]]は、Visual Age for Javaの特別な処理である"isVAforJava"メソッドまで備えていた。
オリジナルより洗練されているものもある。
NUnit 2.0 では、C#のアトリビュートを使ったことをAnders Hejlsbergに称賛されている——このことはJavaコミュニティとJUnitにフィードバックされ、Javaはアノテーションを採用するに至った。

//With all of these ports cropping up, Ron Jeffries decided to keep a list of xUnits on his website. It's still the main place to go to if you want to find an xUnit for your current language. (Ron also has a copy of Kent's original paper on the smalltalk patterns.)

多くの移植が登場してきたことで、Ron Jeffriesが[[xUnitのリスト|http://www.xprogramming.com/software.htm]]をWebサイトに掲載することにした。
今使っている言語のxUnitを探したいときは、ここを見るとよいだろう。
（RonはKentの[[Smalltalkパターンに関する論文|http://www.xprogramming.com/testfram.htm]]も掲載している）
