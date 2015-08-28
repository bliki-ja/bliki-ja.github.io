---
title: ドメイン特化言語
tags: [domain specific language]
---

http://martinfowler.com/bliki/DomainSpecificLanguage.html

//[モデル駆動型アーキテクチャ](ModelDrivenArchitecture)への懐疑論を展開したために、いくつかの議論に巻き込まれてしまいました。MDA支持派からの反論は、MDAはドメイン特化言語の使用を可能にしたじゃないかというものでした。たしかにドメイン特化言語は優れたものです。しかし、ドメイン特化言語は以前からあったものなんです。

//The basic idea of a domain specific language (DSL) is a computer language that's targeted to a particular kind of problem, rather than a general purpose language that's aimed at any kind of software problem. Domain specific languages have been talked about, and used for almost as long as computing has been done.

ドメイン特化言語(DSL:Domain Specific Language)とは、
ある特定の種類の問題に特化したコンピュータ言語のことです。
様々な問題に対応できる汎用的な言語のことではありません。
ドメイン特化言語についてはこれまでも議論されてきましたし、
コンピュータが使われてきたのと同じくらい長い間使われてきました。

//One community that uses DSLs a lot is the Unix community where they are often referred to as little languages or mini languages. (Eric Raymond provides a good discussion of this tradition.) The most common unix-style approach is to define a language syntax and then either use code generation to a general purpose language, or write an interpreter for the DSL. Unix has many tools that make this easier. I use the term External DSL to refer to this kind of DSL. XML configuration files are another common form of External DSL.

DSLを頻繁に使用しているコミュニティにUnixコミュニティがあります。
そこでは、DSLは「リトル言語」や「ミニ言語」などと呼ばれています
（この伝統について、Eric Raymondが素晴らしい[議論](http://www.faqs.org/docs/artu/minilanguageschapter.html)を提供してくれています）。
最も一般的なUnixスタイルのやり方は、
言語の文法を定義し、コード生成機能を使ってDSLから汎用的な言語を生成する、
あるいは、そのDSL用のインタプリタを書くことです。
こういったことを簡単にするツールがUnixにはたくさん揃っています。
こうしたDSLのことを私は「外部DSL」と呼んでいます。
XML設定ファイルも外部DSLのよく知られた形式の1つです。

//The lisp and smalltalk communities also have a strong tradition of DSLs, but they tend to do it another way. Rather than define a new language, they morph the general purpose language into the DSL. (Paul Graham describes this well in Programming Bottom-Up.) This Internal DSL (also referred to as an embedded DSL) uses the constructs of the programming language itself to define to DSL. This is a common way to work in any language, I've always thought of defining functions in such a way to provide a form of DSL for my problem. But lispers and smalltalkers often take this much further. Another term for an API written in this style as FluentInterface.

LispやSmalltalkのコミュニティにも脈々と流れるDSLの伝統があります。
しかしこれは、Unixコミュニティのそれとは違ったやり方で行われています。
新しい言語を作るというよりも、汎用的な言語をDSLに変化させるのです
（Paul Grahamが[Programming Bottom-Up](http://www.paulgraham.com/progbot.html)の中でこのことについてうまく説明しています）。
この「内部DSL」では、プログラミング言語それ自体を元にしてDSLを定義します。
これはどの言語でもできる一般的なやり方です。
私も問題を解決するためのDSLを作るように
関数を定義するよう常に心がけてきました。
しかしながら、LisperやSmalltalkerたちは私よりもずっと深くこの方法に取り組んでいます。
このやり方で書かれたAPIは FluentInterface と呼ばれることもあります。

//I have an extended example of both kinds of DSL in my recent paper on Language Workbenches. I also talk a lot more about the pros and cons of the two styles and the recent development of language workbench tools in the hope of making DSLs become more widespread.

先ごろ書いた論文では、この2種類のDSLについて例を交えて紹介しています。
両者のメリット／デメリットや最近の言語ワークベンチツールの開発については、かなりページを割いています。
これによってDSLがより一般的なものになればと願っています。

//One of the tricky aspects of DSLs is that it can be difficult to say what is and isn't a DSL. There is a very fuzzy DslBoundary between internal DSLs and APIs; and between external DSLs and general purpose programming languages.

DSLの扱いが難しい理由の1つに、何がDSLで、何がDSLでないのかが判断しにくいという点が挙げられます。
[DslBoundary]]はとても曖昧で、
内部DSLとAPIの違い、
あるいは、
外部DSLと汎用言語の違いは、
とても分かりにくいものとなっています。

//I keep a note of DSL-oriented articles that appeal to me at DslReadings. 

私が興味を持ったDSL関連の話題については、
DslReadings にまとめていくことにします。

//Choosing Between Internal and External

!!内部DSLと外部DSLのいずれかを選択する

//The internal and external streams come to an interesting confluence in the figure of PragDave. The pragmatic programmers have long been fans of DSLs, primarily from the Unix tradition (there is an excellent discussion in section 12 of The Pragmatic Programmer - perhaps I should call that Pragmaticum 12). In a thoughtful interview Dave said that while he regularly uses code generation, he rarely uses it programming in Ruby.

内部DSLと外部DSLの流れは、[[PragDave](http://pragprog.com/pragdave)の言葉でうまく合流しました。
達人プログラマーたちはずっとDSLのファンだったのです。
DSLは元々、Unixの伝統から来たものでした（[The Pragmatic Programmer](http://www.amazon.com/exec/obidos/tg/detail/-/020161622X)（日本語『達人プログラマー』）のセクション12に素晴らしい議論が載っています——これは「達人の極意12」と呼んでもいいかもしれません）。
[インタビュー](http://www.codegeneration.net/tiki-read_article.php?articleId=9)のなかでDaveはこう言っています。「コード生成はいつも使うけど、Rubyでプログラミングしているときはほとんど使わない」と。

//I've always used the analogy of creating a DSL to help think about building up a design - developing classes and methods with an eye to making them be a DSL. As much as possible I do this within the language I'm using, but if I can't I'm very ready to switch to code generation. At ThoughtWorks we've used code generation and similar techniques widely on our larger systems. The point at which I pull the separate language DSL lever is clearly different between languages. I never really felt the need in Smalltalk to use a separate language, while it's quite common in C++/Java/C#.

私はいつもDSLを作成するのと似たようなことを、設計を肉付けする際に行っています——クラスやメソッドがDSLとなるように開発するのです。
できることなら、そのとき使っている言語でこれをやりたいのですが、
もしできないならできないで、コード生成を使うことになるでしょう。
ThoughtWorksでは、コード生成などの技術を大規模システムで広く使ってきました。
DSL用の言語を別の言語にするかどうかの決め手は、言語によってまったく違います。
Smalltalkでは分ける必要性を感じませんでしたが、
C++/Java/C#では分けるのが一般的です。

//As a result it certainly seems to me that certain languages are more suited to internal DSL than others. Seeing lisp and smalltalk I concluded that the more suitable languages were minimalist ones with a single basic idea that's deeper and simpler than traditional languages (function application for lisp, objects and messages for smalltalk). But Ruby is more conventional and a much bigger language than these two, yet is still suitable for internal DSLs.

つまり、言語によって内部DSLに向いたものとそうじゃないものがあるようです。
LispやSmalltalkを見ていると、内部DSLに一番適した言語は伝統的な言語よりも深く、シンプルな基本的な考え（Lispなら関数適用、Smalltalkならオブジェクトやメッセージ）のあるミニマルな言語だったのではないでしょうか。
ただし、Rubyはこの2つの言語よりも決まりごとが多く、より大きな言語でありますが、内部DSLにも向いている（素晴らしい）言語です。

//So perhaps it's that languages need to have a well chosen terseness. They need to make it easy to say common things and give you nice syntax to avoid complex twists. Whatever it is I think there's something very important here. I often find it hard to put into words why it is I enjoy programming in Smalltalk or Ruby so much more than in Java or C#. The most talked about reason is static versus dynamic typing, but I've always felt that that discussion misses the point. The friendliness towards internal DSLs is much closer to the essence of the difference.

だから、たぶん、言語には選び抜かれた簡潔さが必要なのではないでしょうか。
一般的なものを書くのに簡単であり、複雑な絡み合いが入り込まないようなナイスなシンタックス。
まあ、どんなものであれ、この点が重要なのだと思います。
JavaやC#よりもSmalltalkやRubyのほうがなぜ楽しいかなんて、口では絶対表せないよなーといつも思います。
よく言われるのは、静的型言語と動的型言語の違いですけども、これはあるポイントを見逃しています。
「言語内DSLに合うか合わないか」ほうが、本質的な違いだと思います。

!comment
*2004-02-16 (月) 22:04:57 ''[[kdmsnr]]'' : Unixには新しい言語をいちから作る文化があり、LispやSmalltalkではたとえば「Lispで新しい言語」を作り出す文化がある。
*2004-02-17 (火) 13:42:40 ''[[kdmsnr]]'' : specific を 「特化」とするか「依存」とするか。どっちがよいのでしょう。
*2004-02-17 (火) 16:20:18 ''[[kdmsnr]]'' : http://d.hatena.ne.jp/tomokuroo/20040216#p3
*2004-02-18 (水) 02:18:20 ''[[mizu]]'' : はじめまして。「関数アプリケーション」は、「関数適用」の方が良いのではないでしょうか。
*2004-02-18 (水) 02:37:07 ''[[小人]]'' : 直してみました > mizu
*2004-02-18 (水) 12:04:26 ''[[kdmsnr]]'' : ありがとうございます＞小人さん
*2004-02-18 (水) 16:17:49 ''[[かくたに]]'' : 「特化」派です。http://www.kakutani.com/compass/20040218.html#p01
*2004-02-18 (水) 19:31:15 ''[[kdmsnr]]'' : 特化にしてみました。
*2004-03-26 (金) 18:04:04 ''[[takai]]'' : http://www.csg.is.titech.ac.jp/~chiba/notes/oosympo02.pdf にドメイン専用言語(domain specific language)って訳あり。
*2004-03-26 (金) 18:21:45 ''[[kdmsnr]]'' : お、いい勝負だ（Google）。
*2008-03-23 (日) 16:18:08 名無しさん : eena ruby
{{comment}}
