---
title: 柔軟性と複雑性
tags: TAGS
---

http://www.artima.com/intv/flexplexP.html

!!Martin Fowlerとの対談 第４回
!!!対談者 Bill Venners
!!!2002/11/25

!!!Summary
Martin Fowler, chief scientist at Thoughtworks, Inc. and author of numerous books on software design and 　　process, talks with Bill Venners about how to combat design decay, the cost of flexibility and reusability, four criteria for a simple system, and test-first design of interfaces.

!!!要約
Thoughtworks社のチーフサイエンティストであり、またソフトウェアの設計やプロセスについての多数の本の著者でもあるMartin FowlerとBill Vennersが、
設計の劣化との戦い方、柔軟性と再利用性のコスト、シンプルなシステムのための４つの基準、およびテストファーストのインターフェイス設計について対談しました.

Over the last decade, Martin Fowler pioneered many software development techniques in the development of business information systems. He's well known for his work on object-oriented analysis and design, software patterns, Unified Modeling Language, agile software processes (particularly extreme programming), and refactoring. He is the author of Analysis Patterns (Oct. 1996), Refactoring (June 1999; coauthored with Kent Beck, et al.), UML Distilled (Aug. 1999; with Kendall Scott), Planning Extreme Programming (Oct. 2000; with Kent Beck), and the soon to be released Patterns of Enterprise Application Architecture (Nov. 2002), all published by Addison Wesley.

ここ１０年ほど、Martin Fowlerはビジネス情報システムの開発に置いてたくさんのソフトウェア開発技術を開拓しました。
彼はオブジェクト指向の分析と設計、ソフトウェアパターン、UML、アジャイル方法論(特にXP)、およびリファクタリングで有名です.
彼は、全てAddison Wesley社から出版された、アナリシスパターン(1996/10)、リファクタリング(1999/6;Kent Beckとの共著)、UMLモデリングのエッセンス(1999/8;Kendall Scottと)、XPエクストリーム・プログラミング実行計画(2000/10; Kent Beckと)、および最近リリースされたPatterns of Enterprise Application Architecture (2002/11)の著者です.

In this six-part interview, which is being published in weekly installments, Fowler gives his views on many topics, including refactoring, design, testing, and extreme programming. In Part I, Fowler makes the business case for refactoring and testing, and describes the interplay between refactoring, design, and reliability. In Part II, Fowler discusses design principles of avoiding duplication, separating presentation and domain logic, being explicit, and describes how refactoring depends on code ownership. In Part III, Fowler differentiates between planned and evolutionary design, suggests that focusing on superficial problems can lead to the discovery of substantial problems, and claims that doing a good job won't slow you down. In this fourth installment, Fowler discusses design decay, flexibility and reusability versus complexity, four criteria for a simple system, and interface design.

インタビューは６つのパートがあり、毎週公表されていきます。Fowlerはリファクタリング、テスト、及びextreme programmingなどの様々なトピックについての彼の視点を語ります。
パートIでは、Fowlerはリファクタリングとテストについてのbusiness case(教材?)を作り、またリファクタリングと設計および信頼性の間の相互作用について示します。
パートIIでは、重複を避ける、プレゼンテーションとドメインロジックを分ける、明白にする、といった設計の法則について議論し、またリファクタリングがどのようにコードの所有に依存するかを示します。
パートIIIでは、設計を計画的と進化的とにわけ、表面的な問題へと注目することが本質的な問題の発見に導き、また良い仕事が速度の低下を防ぐと提案します。
この第４回では、設計の劣化、柔軟性と再利用性対複雑性、シンプルなシステムのための４つの基準、およびインターフェイスの設計について議論します.

!!!Design Decay and Refactoring

!!!設計の劣化とリファクタリング

'''Bill Venners:''' Why do designs decay over time?

'''Bill Venners:''' なぜ設計は時間とともに劣化するんでしょう？

'''Martin Fowler:''' If you have a notion of planned design, that the design is something that's right at the beginning, then it's kind of inevitable that the design will decay. So many things in life do decay. The point is that you need to know how to keep a design from decaying. That's what refactoring is about, techniques to reverse the decaying process. Refactoring is relatively new technique. We're still not used to what it gives us. But one thing it gives us is you can use refactoring to stop the decaying of designs. In fact, you can reverse the process and actually make designs improve over time.

'''Martin Fowler:''' 計画された設計の考え方をするなら、最初から何らかの設計が存在し、そうなると設計の劣化が避けられません.
ポイントは設計を劣化から守るノウハウです。 それはリファクタリング、つまり設計の劣化を巻き戻す作業です。リファクタリングは割と新しいテクニックです。まだその利点を完全に使いこなせてはいません。ですが、設計の劣化を食い止める為に使える事はわかっています。実際、進行を逆転させて、本当に時間とともに設計を良くしていく事ができるんです。

!!!Flexibility and Complexity

!!!柔軟性と複雑性

'''Bill Venners:''' In Refactoring you write, "Before I used refactoring I always looked for flexible solutions. Because design changes were expensive, I would look to build a design that would stand up to changes I could forsee. The problem with building a flexible design is that flexibility costs." What is the cost and what is the alternative?

'''Bill Venners:'''「リファクタリング」の中で「リファクタリングを使いだす前には、いつも柔軟な解決策を求めていました。設計の変更は高くつくので、変更に耐える柔軟な設計をいつでも追い求めました。柔軟な設計の問題は、柔軟さのコストです。」と書かれています。
柔軟さのコストとはなんで、その代案はなんでしょうか？

'''Martin Fowler:''' The cost of flexibility is complexity. Every time you put extra stuff into your code to make it more flexible, you are usually adding more complexity. If your guess about the flexibility needs of your software is correct, then you are ahead of the game. You've gained. But if you get it wrong, you've only added complexity that makes it more difficult to change your software. You're obviously not getting the payback.

'''Martin Fowler:''' 柔軟さのコストは複雑さです。柔軟性を得るためにはコードに追加部分が必要ですが、たいてい複雑さも追加してしまいます。もし柔軟性の必要性を当てる事ができれば、あなたはゲームの先を読んだ事になります。得点をえました。しかしもし読み違えれば、複雑さを追加しただけになり、変更はより困難になってしまいます。明らかに払い戻しはありません。

It's not hard to guess wrong about flexibility needs. You can guess wrong if requirements change. What you think is a requirement for flexibility now may go away or change in the future. You can also guess wrong if you put extra code into the program to improve flexibility but you don't get it quite right. You get more complexity without getting the flexibility you were after.

簡単に柔軟さの必要性を読み違えてしまいます。要求の変更があれば読み違えてしまいます。柔軟性の要求は今無くなってしまうかも知れませんしいつかは変わるかも知れません。さらに、柔軟性のためにコードを追加したとしても、思ったようには行かないかも知れません。複雑さだけがのこって柔軟さはどこにも無い、なんて事もあり得るわけです。

The alternative is to use the XP approach and not put the flexibility in at all. XP says, since most of the time we get it wrong, just don't put the flexibility in there. Now if you can't evolve your design safely, then that is a foolish route to take. But if you can evolve your design safely, it becomes quite a nice approach. In fact it becomes a self-reinforcing approach. If you strive to keep your design as simple as possible by avoiding speculative flexibility, then it's easier to change the code because you have less complication to deal with. The code is easier to understand and easier to change. As a result, you can make changes much more quickly.

代案はXPのアプローチを使い、なんら柔軟性を加えない事です。XPに言わせると、たいてい間違えるんだから全く柔軟性を追加しません。もし安全に設計を進化させられなければ、その道を行くのは愚かな事です。しかし安全に設計を進化させる事ができれば、とても素晴らしいアプローチとなります。実際、それは自己強化的なアプローチとなります。もし柔軟性の思索からはなれてシンプルな設計を保つ努力を続ける事ができれば、複雑さが減りコードの変更を容易に行う事ができるでしょう。コードは簡単にわかり簡単に変えれます。結果として、もっと素早く変更を主なう事ができるでしょう。

!!!Flexible versus Reusable

!!!柔軟性と再利用性

'''Bill Venners:''' What about reuse? Is flexible just another word for reusable?

'''Bill Venners:''' 再利用についてはどうですか？柔軟性は再利用性とは別の事でしょうか？

'''Martin Fowler:''' No, but the problem is that in order to get code that's reusable you need to make it very flexible. And a lot of the time your reuse benefit doesn't pay off, either because you end up never needing to reuse it, or because the anticipated modes of reuse weren't what you thought they were. Often the flexibility you put in isn't the flexibility you ultimately need.

'''Martin Fowler:''' いいえ、しかし、問題は再利用可能なコードを得るためにはとても柔軟に作らないといけない事です。再利用から割に合う利益が得られないのはほぼ、最後までそれを再利用する事がないか、再利用のための予想が外れてしまうか、どちらかです。たいてい柔軟性を組み込んでみてもその柔軟さは結局は要らなくなってしまいます。

'''Bill Venners:''' Are there times when it makes sense to make something more reusable? How would I decide?

'''Bill Venners:''' 再利用性を高める事が意味を持つときがありますか？どう決めれば良いのでしょう？

'''Martin Fowler:''' My attitude with reuse is that reuse is something you evolve. You build an application to solve the problems of the application. If you build another similar application, then you begin to factor out some common pieces. If you build a third similar application, you factor out more common pieces. Then you'll begin to have something like a reusable framework. My definite recommendation is don't attempt to define a reusable framework first and then build applications on top of it. Rather, evolve the framework while building the applications.

'''Martin Fowler:''' 再利用に対する私の姿勢は、再利用は発展させる物だという事です。問題を解決するためにアプリケーションを作ります。もし、よく似た別のアプリケーションを作るときに、共通部分を要素として抜き出してください。３つ目の同様のアプリケーションで、さらに共通部分を抜き出します。そのときには、再利用出来るフレームワークの様な物を持ち始めるでしょう。再利用可能なフレームワークを作ってからその上にアプリケーションを構築する事は薦められません。むしろ、アプリケーションを作るたびにフレームワークを発展させることです。

!!!Up-Front Design versus Refactoring

!!!先行設計対リファクタリング

'''Bill Venners:''' How would you describe the balance between up front design and refactoring?

'''Bill Venners:''' 先行設計とリファクタリングの間のバランスについてはどの様に言われていますか？

'''Martin Fowler:''' Before I really came across refactoring, particularly in conjunction with automated testing, I tended to look at design as something I have to get right at the beginning. Now, I look at design as something I can often do a fairly small amount of up front. I let most of the design flow from the evolutionary process. So I feel that there's been a shift in balance. Before, I might have preferred - and these percentages are purely illustrative - 80% of my design in planned mode and 20% of it as the project went on. Now I'd perhaps reverse those percentages.

'''Martin Fowler:''' リファクタリング、特に自動テストとの組み合わせたものと出会う前、設計は最初に得なければいけない物だという見方をする傾向がありました。今は、設計は最初はもっと小さくても良いのだと見ています。設計の流れの大半は進化的な物としています。そのバランスはシフトしてきているように感じます。以前は、私は優先して - 割合は例えばですが - 80%を計画的に設計して20%をプロジェクト進行中に行いました。今はその割合は逆転していると思います。

'''Bill Venners:''' Much more evolutionary than up-front now.

'''Bill Venners:''' 今は進化的な方が先行するよりもかなり多いと。

'''Martin Fowler:''' Much more evolutionary design. Much less up-front.

'''Martin Fowler:''' 進化的設計の方がかなり多いですね。先行させるのはかなり少ないです。

!!!Criteria for a Simple System

!!!シンプルなシステムの基準

'''Bill Venners:''' In Refactoring, you quote Kent Beck's four criteria for a simple system: 1) Runs all the tests. 2) Reveals all the intention. 3) No duplication. 4) Fewest number of classes or methods. What is simplicity to you?

'''Bill Venners:''' 「リファクタリング」で、ケントベックのシンプルシステムの４つの基準を引用されましたよね。1) 全てのテストが通る。2) 全ての意図を明らかに。3) 重複がない。4) クラス数とメソッド数が最小。あなたにとってはシンプルさとは何ですか？

'''Martin Fowler:''' I think it is difficult to come up with a definition of simplicity. I quite like Kent's four rules. The first one reminds us that we have to run all the tests.

'''Martin Fowler:''' シンプルさの定義は難しいと考えています。Kentの４つのルールはかなり気に入ってます。最初の１つがテストを全部通らせないといけない事を思いださせてくれます。

'''Bill Venners:''' But what does that have to do with simplicity? I could have something very complicated that runs all its tests.

'''Bill Venners:''' でもシンプルさと関係はありますか？テストを全て通らせる事はとても複雑にする事もあると思いますが。

'''Martin Fowler:''' Yes, but to have a well designed system it's got to work. If you remove the constraint that my system actually got to work...

'''Martin Fowler:''' そうですね、でもうまく設計されたシステムはちゃんと働かないといけません。その制約を外しても本当にちゃんと働くでしょうか...

'''Bill Venners:''' Oh, you're saying running the tests is necessary but not sufficient.

'''Bill Venners:''' おぉ、テストを通すのは必要で、でもそれだけでは十分ではないと。

'''Martin Fowler:''' Exactly. Once the tests run you ask yourself, did you remove all the duplication? The third criteria, reveals all the intention, is the really hard part, because it is very subjective. You should be able to read the code and see what it does. The design intent of the code should just be apparent as you look at the code. A simple example is a well-named method. Rather than naming a method x74-3, and then providing a comment that says what the method does, why don't you just say what the method does in the name? That's more intention revealing. Ask yourself, does the structure of your code, the way the code is named, etc., really reveal the intention of your code?

'''Martin Fowler:''' まさしく。いったんテストが通れば、重複はないか？と自分に尋ねます。３つ目の基準の、全ての意図を明らかに、がとても主観的なので、とても難しい部分です。コードを読めば何をしているのかわかるようにしておかなければいけません。そのコードの設計の意図が、コードを見るだけで明らかにしておかなければいけません。単純な例はうまく名前をつけられたメソッドです。メソッドにx74-3という名前を付けて、コメントで何をするメソッドなのか言うのではなく、メソッドが何をしているのかを名前だけで伝えなければいけないんです。なぜ名前だけでメソッドが何をしているのか伝えないのでしょう？その方が意図が明らかになります。コードの固まりがあれば、コードの名前のつけかたを自分に尋ねてください。コードの意味を本当に明らかにできないだろうか？のように。

Once all of that is out of the way, you obviously don't want more lines of code than you need. Only at the end do you minimize the number of classes and methods - only once all the other criteria are true. It is more debatable which order to apply the second and third criteria, reveals all the intention and has no duplication. But running the tests has to be the number one thing, and the minimum amount of code criteria should be the last thing.

いったんその全てがout of the way (独特?)になれば、明快さにより多くのコードは必要ありません。後はクラス数とメソッド数を最小限にするだけです - それで全ての基準が当てはまります。意図を明らかすると重複させない、という基準の順序は２つ目と３つ目どちらが良いのか、と異論もあります。しかしテストを通さないといけない、というのは１番目であるべきですし、コード量を最小にの基準は最後でなければいけません。

!!!Designing Interfaces

!!!インターフェイスの設計

'''Bill Venners:''' The way I think about design, I tend to think a lot in terms of interfaces. The literature on patterns and agile methods, Design Patterns (the Gang of Four book), Kent Beck's Extreme Programming Explained, your Refactoring book, talk a lot about code, which is both interfaces and implementations. What is the design role of thinking in terms of interfaces?

'''Bill Venners:''' 私の設計についての考え方では、インターフェイスがより重要です。デザインパターン(Gang of Four本)、Kent BeckのXPエクストリーム・プログラミング入門、あなたのリファクタリングの本、これらのパターンやアジャイル方法論の著述ではコードについて多く語られていて、インターフェイスでも実装でもあります。設計においてのインターフェイスの役割は何だと思われますか？

'''Martin Fowler:''' I think thinking in terms of interfaces is very fundamental. My take on the Gang of Four book is that it said more about the role of interfaces than almost any other book on object-oriented design.

'''Martin Fowler:''' 私はインターフェイスについて考えている間がとても重要だと思います。私が読み取った限りではGang of Four本はほかのオブジェクト指向設計の本よりも多くインターフェイスの役割について触れています。

'''Bill Venners:''' How's that?

'''Bill Venners:''' どのように？

'''Martin Fowler:''' Because every other book on object-oriented design might say somewhere in the book, "Oh yeah, interfaces are important." But I think the Gang of Four book put a very strong piece in the early chapters about what it means to program to an interface. And then almost every pattern in that book is about how interfaces can vary independently to implementations and the benefits of programming to an interface.

'''Martin Fowler:''' あらゆる他のオブジェクト指向設計本は"そう、インターフェイスこそ重要です"と本のどこかで言っていますが、Gang of Four本はインターフェイスのプログラミングが持つ意味についてのとても力強い部分を初めの方の章に置いていると考えます。そしてあの本のなかのほとんど全てのパターンがどのように実装からインターフェイスを独立させ、インターフェイスのプログラミングの利益を得るかについての物です。

I think that's also true of extreme programming. The whole value of test-first design (test-driven development as Kent is calling it), in fact the primary driving reason of it, is because when you are writing the tests first you are thinking about the interface. Writing a test is designing the interface. When you write the test first, then implement the code, you are figuring out the interface first, then implementing the interface. First figure out the interface, then implement it. And then you have a whole bunch of automated tests that describe how the interface works.

それはextreme programmingにも当てはまると考えます。テストファースト設計(Kentはtest-driven developmentとよんでいます)のあらゆる価値は、事実上基本的にそれに駆動されている事、なぜかというと最初にテストを書いている時はインターフェイスについて考えているからです。テストを書く事はインターフェイスについて考える事です。まずテストを書いて、それからコードを実装する時、まずインターフェイスを決めてから、その後に実装します。そして手に入れた自動テスト群がどのようにインターフェイスが動くかを描写してくれます。

'''Bill Venners:''' I hadn't gotten that from my reading of the literature. The way I kind of approach it is, I design the interface first, then sometimes I write the test first, sometimes write the test second, sometimes don't write the test.

'''Bill Venners:''' 私はその事を読み取れていませんでした。私のしていたアプローチはどちらかというと、まずインターフェイス設計を行い、そのあと時々はテストファーストで書いて、時にはテストを２番目にまわして、時にはテストを書いていませんでした。

'''Martin Fowler:''' Not a problem.

'''Martin Fowler:''' 問題ありませんよ。

'''Bill Venners:''' If writing the test first kind of correlates to thinking about designing the interface, then it is kind of the same thing.

'''Bill Venners:''' もしテストファーストで書くことがたいていインターフェイスの設計を考える事と相関するなら、それこそ本質ですね。

'''Martin Fowler:''' Oh yeah. But I think writing the test first speaks a lot more to many developers. It is hard to think about interfaces, but when you sit there and you say, I've got to come up with a test that's going to make this tiny little piece of functionality work. It will have you thinking, what's the nicest way to write this test? And you're thinking about the interface. It is not stated explicitly, but that's what you're doing. You're thinking about the interface. You're also doing it incrementally. You're not saying, here I've got to do this class, let's come up with the interface of this entire class and then implement it. You're saying, this class needs to have a very small piece of responsibility. Write the test for it. Come up with the interface for that as you're writing the test.

'''Martin Fowler:''' そうそう。でも多くの開発者にテストファーストで書く事はもっと多くの事を語るでしょう。インターフェイスについて考えるのは大変ですが、もしあなたがそこに座って話せば、私は機能のほんの小さな一部を作るためにテストを作り出すでしょう。あなたは、このテストをかく一番の方法は何だろう？と考えるでしょう。一緒にインターフェイスについて考えているのです。はっきりとそうしてはいません。でもそれこそあなたがしている事です。インターフェイスについて考えているのです。多分漸進的に行うでしょう。何らかのクラスを得るために、インターフェイスを全て作り出してから全てを実装しよう、なんてしなくて良いんです。このクラスに責務のほんの小さな一部が必要なだけです。そのテストを書いてください。テストに書いただけのインターフェイスを作り出してください。

----

初めまして、奥村と申します。
まだ訳されていないようですし、せっかくwikiで自由に書いてよしとの事なので手をつけてみました.よろしかったでしょうか？

翻訳には全く自信がないのでとりあえず対訳にしています.
どなたかチェックしていただいて問題なければ英語の方を消してください.(^_^;)
*2004-02-27 (金) 23:47:44 ''[[kdmsnr]]'' : あ、いや、これはblikiじゃなかったんですが……大丈夫ですｗ　後から読ませていただきます。
*2004-02-28 (土) 01:49:16 ''[[奥村]]'' : 申し訳ないです、勘違いの上にフライングでした。確かにこのページはblikiとはデザインが違いますね。大丈夫ですか？とりあえず書いた所までは保存します。
*2004-02-29 (日) 02:55:06 ''[[奥村]]'' : 残りの訳も上げてしまいます。でもあちこち怪しい上にぜんぜん会話っぽくありません。訳すのって難しいですね。だいたいで読むだけなら何とかなるんですけど...
*2006-04-28 (金) 16:49:14 pagerank : Thanks!!! Links: <a href='http://www.areaseo.com'>pagerank main</a> : [http://www.areaseo.com improve pagerank default] - [HTTP://www.areaseo.com improve pagerank default] : [PageRank 11|http://www.areaseo.com] - [PageRank 11|HTTP://www.areaseo.com] : http://www.areaseo.com/improvepr/ : [[http://www.areaseo.com google rank 20]] : [[http://www.areaseo.com | pagerank 5]] : "online pr16" http://www.areaseo.com : [http://www.areaseo.com|google pr]
{{comment}}


----

* [[Copyright|http://www.artima.com/copyright.html]] (c) 1996-2004 Artima Software, Inc. All Rights Reserved. 
