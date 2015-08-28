---
title: GroovyOrJRuby
tags: TAGS
---

http://martinfowler.com/bliki/GroovyOrJRuby.html

2007/11/27

//Currently there's quite a debate raging over the relative merits of Groovy and JRuby as scripting languages running on the Java virtual machine. Curious minds want to know - which of these languages will win this upcoming language war? People want to know which language to pick for a project, or which language to commit to learn.

現在、Java仮想マシン（JVM）上で動くスクリプト言語として、GroovyとJRubyはどちらが優勢なのかという議論が巻き起こっている。
この言語戦争の勝者はどちらなのか！？
知りたいよねー。知りたいでしょ。
みんなは「プロジェクトに使うのはどっちだ？」とか「今から学習するならどっちだ？」とか気になっていると思う。

//Perhaps the first thing to point out is that it's perhaps rather unfair to see this as a race between these particular two horses. Scripting has been available on the JVM for a long time. Jython, a Java implementation of Python, has been around for several years. There's plenty of other, more obscure languages, which I daren't mention for fear of offending all the ones I miss out.

まず最初に押さえなきゃいけないのは、このレースの出走馬が2頭だけだと考えるのは公平じゃないってことだ。
JVM上のスクリプト言語の歴史は古く、Jython（JavaによるPython実装）なんてずっと昔から存在している。
他にもいろいろありすぎてよく分からない状況なので、ここではあえて列挙することはしない。「XXXがないじゃないか！」と怒られても困るしね。

//JRuby has got a lot of attention due to the attention of the Ruby language generally - attention particularly ignited by the interest around Rails. We've seen a sharp spike of interest around Ruby and Rails work at ThoughtWorks, and JRuby adds an extra dimension since it allows people to deploy Rails applications using their existing Java infrastructure.

JRubyは、Ruby（というかRails）が注目されたことによって、多くの注目を集めている。
ThoughtWorksにおいても、RubyやRailsの人気の急上昇っぷりには目を見張るものがあった。それにJRubyは、既存のJavaインフラにRailsアプリケーションをデプロイできるというメリットをもたらしてくれた。

//Groovy gets its attention because it, more than any other language, is designed to work seamlessly with the JVM, and got a lot of attention from an early JSR.

Groovyは、他の言語と比べて、JVMとよりシームレスに動作するよう設計されていることで注目を集めている。また、早くからJSRとして標準化が提案されたことでも有名だ。

//Personally I'd dropped Groovy from my radar a couple of years ago when its development seemed to bog down. With its 1.0 release and further interesting positive vibes from some of my colleagues I've started to pay attention again.

私も数年前に注目していたが、その頃のGroovyの開発は泥沼化の様相を呈していたので、手を出さずにいた。しかし、1.0がリリースされ、同僚からも好評の意見を聞くことが多くなったので、手を出してみたことがある。

//Lets begin by talking about similarities. Both JRuby and Groovy (and indeed Jython) are modern OO scripting languages. They combine the well-chosen terseness of scripting languages with good solid structures for building larger programs. As such they are suitable both for classical scripting and for writing larger programs. Both are comfortable with dynamic type checking, although Groovy does offer some static facilities too. Both support Closures which are an important feature for the greater expressiveness that people want from this kind of language.

それでは、共通点から見ていこう。
JRubyもGroovyも（もちろんJythonも）、現代的なオブジェクト指向スクリプト言語である。
スクリプト言語の簡潔さと、比較的大きなプログラムの構築のための構造の強さとがうまく融合されており、従来のスクリプトの用途にも大規模プログラムの用途にも適したものとなっている。
JRubyもGroovyも動的型チェックを備えている。
ただし、Groovyでは、いくつかの静的な機構も兼ね備えている。
両者とも、高い表現力を担う重要な機能である[[Closures]]を備えている。
スクリプト言語ではぜひとも欲しい機能だ。

//The biggest difference between them is their broader platform philosophy. Groovy is designed to be a scripting language for Java. As much as possible its syntax tries to match the equivalent in Java. (Including such ugly things as the default fall-through in switch statements.) It also works with Java's class library directly, although it dynamically adds many methods to Java's classes, vital in order to make use of things like closures.

両者の最も大きな違いは、そのプラットフォーム哲学にある。
GroovyはJavaのスクリプト言語として設計されており、シンタックスはできるだけJavaと等価になるように配慮されている（switch文がデフォルトでフォールスルーする醜悪さも踏襲されている）。
// http://ja.wikipedia.org/wiki/Switch%E6%96%87
Javaのクラスライブラリを直接触ることができるし、動的にメソッドを追加することもできる。これはクロージャを実現する上で必要不可欠なものである。

//JRuby, however, is a Java implementation of the Ruby platform. Ruby can run directly on mainstream operating systems with a C runtime, and is starting to run on .NET's CLR. When you program in JRuby you primarily use Ruby's libraries which are implemented in Java, and may also use Java's libraries at your discretion. If you stick to Ruby's libraries, or at least wrap any foreign elements, you can run Ruby programs on the C, Java, or (in time) .NET runtimes. So you can use JRuby to both run Ruby programs on the JVM and as a language for scripting the JVM.

一方、JRubyは、RubyプラットフォームのJava実装である。
Rubyは現在、Cランタイムのある主要なOS上で動作することができる。
また、.NETのCLRでも動作し始めたところだ。
JRuby上でプログラムするときは、Javaで実装されたRuby言語のライブラリを使用することになる。また、Java言語のライブラリも利用可能だ。
Ruby言語のライブラリを使ったり、外部要素をラップしたりしておけば、RubyのプログラムをCやNETランタイムの他にJava上でも実行できるようになるわけだ。
つまり、JRubyを使って既存のRubyプログラムをJVM上で実行することもできるし、
JVMを制御するスクリプト言語としてJRubyを使うこともできるのである。
★（訳注：まだなんか不自然。FIXME）

//One of the big differences between JRuby and Jython is around the libraries. One of the tricky aspects of porting this kind of scripting language to the JVM is that these languages are usually closely intertwined with libraries implemented in C. Porting these libraries to Java involves rewriting the libraries in Java. Jython didn't do much of this, as a result many Python apps can't run in Jython. However the JRuby implementers decided from early on that their goal was to run Rails apps, as a result many libraries including all the Ruby standard libraries needed to be ported.

JRubyとJythonの大きな違いはライブラリ周りにある。
スクリプト言語をJVMに移行するときに厄介なのは、元の言語が、Cで実装されたライブラリと密接に統合されているという点である。
こうしたライブラリをJavaへ移行するには、Javaで書き直さなければならない。
Jythonではこうしたことをやらなかったので、多くのPythonアプリケーションはJython上では動作しない。
一方、JRubyでは当初からRailsアプリケーションを動かすことを目標に決めていたため、すべてのRuby標準ライブラリを移行する必要があった。

//The fact that JRuby is a Ruby platform on the JVM means that in JRuby you have two kinds of objects - JRuby objects and Java objects. Although there are ways for the two to talk to each other and to convert there is a difference. There are times when you need to know whether you're dealing with a Java string or a JRuby string. With Groovy you don't have that boundary, there are just Java objects.

JRubyがJVM上のRubyプラットフォームということは、JRuby上には2種類のオブジェクトがあるということである——JRubyのオブジェクトとJavaのオブジェクトだ。
両者間でやり取りをしたり変換したりする方法はあるものの、やはり両者には違いがある。
JavaのStringなのかJRubyのStringなのか調べようと思ったら時間がかかる。
Groovyではそうした境目はない。すべてがJavaのオブジェクトなのである。

//It's too early, or rather too difficult, to say if one language will win out. Both are pretty young, only just finding their feet on the JVM. On a more personal level, your choice has a lot to do with what you expect to do with it. If you are only interested in running on the JVM, then Groovy could well be the easier choice. You are working directly with Java's library and object model, and the syntax requires less getting used to. A strong reason to prefer Ruby is the fact that it lives in multiple implementations. Ruby is a tool you can use in a lot of other places. As a long time Rubyist, there's not much incentive for me personally to get heavily into Groovy, even though I actually like the language a lot from what I've seen of it.

勝者が誰なのかを明言するには、まだ時期尚早である。というか、難しい。
どちらもまだ日が浅いし、ようやくJVM上で動作できるようになったところである。
個人的なレベルでは、どの言語を選択するかというのは、言語に何を期待しているかということと関係している。
JVM上で動作することだけに興味があるのであれば、Groovyがいいだろう。
Javaのライブラリやオブジェクトモデルを直接触ることができるし、シンタックスにもすぐ慣れる。
Rubyが好きなのは複数の実装があるからだ。
Rubyは様々な箇所で利用可能なツールである。
古参のRubyistとしては、確かに好きな言語ではあるのだけど、Groovyにはあまり興味が沸かなかったりする。

//Rails is an important factor. The Java world is hardly lacking in web frameworks, but Rails is widely liked by those who've used it. I've not got many reports yet about Grails (the Groovy knock-off) so can't give a firm opinion on that. But I can imagine that the ability to deploy web apps with Rails could be a major factor in making JRuby popular. Something else to look at is the growth of RSpec as a new spin on testing environments.

Railsは重要な要素である。Java界にはWebアプリケーションフレームワークが乱立しているが、Railsは一度使用した者から広く好まれている。
Grails（GroovyのWebアプリケーションフレームワーク）についてはまだそれほど多くの報告を受けていないので、あまり意見は申し上げられない。
ただ、JRubyの人気を上げたのは、Railsアプリケーションを簡単にデプロイできるようにしたことだというのは、想像に難くない。
もうひとつ着目すべき点は、テスティング環境の新機軸であるRSpecの台頭だろう。

//With any platform it's as important to consider the people involved in the community as much as any technical factors. Good people can overcome technical weaknesses quickly and a vibrant community is a potent source for big innovations. RubyPeople have formed a particularly strong community, which has already spawned things like Rails, Rake, and Rspec.

どんなプラットフォームであっても、技術的要因と同じようにコミュニティに属する人についても考慮することが大切である。
優れた人であれば、技術的弱点も迅速に解決することができる。
活気のあるコミュニティは、大きなイノベーションの源泉である。
特に、RubyPeopleは活気のあるコミュニティを形成している。
そこでは、Rails、Rake、RSpecといったものが生み出されている。

//Will either matter to Java? After all Jython's been around for a long time without making a huge impact on the JVM. Tool support is frankly pathetic for any of these languages when you compare it to what you have for Java at the moment.

JRubyとGroovyはJVMにとって重要になるのだろうか？
Jythonは大きな影響を与えられずにきた。
こうした言語に対するツールサポートは、Javaのそれと比べると惨々たるものだ。

//I think we're actually at an inflection point with Java. Until recently the Java cry was One VM and OneLanguage. (As opposed to the CLR which was one VM and many languages, providing they're C# or VB.) This seems to be changing as people realize the limitations of Java and begin to seek out different capabilities. It's likely the future will see multiple languages closely integrated within the JVM.

我々はJavaの変曲点にあるのだろう。
最近までJavaはひとつのVMに[[OneLanguage]]をスローガンにしていた
（ひとつのVMに複数の言語[C#やVB]のCLRとは対極である）。
これは、みんながJavaの限界に気づき、別の可能性を模索し始めたという変化ではないだろうか。
おそらく、いずれ複数の言語がJVMに密に統合される日がやって来るはずだ。

//There are plenty of people who dislike the hype around Rails and Ruby. But even if you dislike Ruby, the hype has led to a resurgence of interest in new languages. I doubt if the interest in Groovy would be anywhere near as great as it is if it wasn't for this hype, nor would Jython be awaking from its slumbers. The ruby/rails hype has also generated interest in other exotic JVM languages. The really nice thing here is that the JRuby people have been encouraging their dynamic rivals - recognizing that the point here is to encourage multi-lingual inter-operability and innovation.

RailsやRubyの人気っぷりが嫌だという人も大勢いる。
しかし、Rubyのことが嫌いだとしても、この盛り上がりによって新たな言語への関心が再び高まってきたのは事実だ。
この盛り上がりがなければ、Groovyはこんなにも注目されなかったのではないかと思う。
それに、Jythonが眠りから目を覚ますこともなかっただろう。
Ruby/Railsの盛り上がりは、ちょっと変わったJVM言語の関心をも高めている。
これについては、JRuby ピープルがライバル言語を励ましていて実にすばらしい——複数言語のインターオペラビリティとイノベーションの促進がポイントとなると分かっているのだ。★

!Comment:
*2007-12-01 (土) 02:19:16 たかはし : 単にJavaとかRubyとか書くのではなく、Java言語、Ruby言語と書くのがいいですかね？「JRubyでプログラムするときは、Javaで実装されたRuby言語のライブラリを使用することになる。ただし、Java言語のライブラリも、自己責任で使用することができるだろう。」とか。
*2007-12-01 (土) 02:39:22 たかはし : 「Ruby言語のライブラリを使ったり、外部要素をラップしたりしておけば、 そのRubyプログラムをCやJavaや.NETランタイム（これは間もなく登場）上でも実行することができる。」
*2007-12-01 (土) 14:11:03 名無しさん : 下から3番目のパラグラフ、「燦々たるものだ。」の「燦」は「光り輝く」という意味なので、文脈からすると「惨々たる」が適切ではないでしょうか？
*kdmsnr:「燦々たる」→「惨々たる」にしました。
*kdmsnr:＞たかはしさん ちょっと言葉を足して修正してみました。これは実際の動作と合ってるのかなあ？

*2008-01-15 (火) 21:48:37 keis : 「だからJRubyは、RubyプログラムをJVM上で実行する手段としても、JVMを制御するスクリプティング言語としても使えるのです。」言外には、Groovyは後者だけだよね、といことかと。
{{comment}}
