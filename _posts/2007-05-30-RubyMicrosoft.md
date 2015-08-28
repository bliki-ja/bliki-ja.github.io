---
title: RubyMicrosoft
tags: [microsoft, ruby]
---

http://martinfowler.com/bliki/RubyMicrosoft.html

2007/6/1

//(Update: added links to reactions at end.)

（更新：反応リンク集を末尾に追加）

//At RailsConf2007 there was a lot of excitement over JRuby. This small team had taken a moribund project and turned it into what looks like a first class implementation of the Ruby platform on the JVM. They got a lot of cheers and deserved them all.

[RailsConf2007]]ではJRubyが大盛況だった。
この小さなチームは瀕死のプロジェクトを引き受け、JVM上で動くファーストクラスのRubyプラットフォームに変えた。彼らが多くの賞賛を得たのは当然だ。

//So with JRuby pretty much here, the spotlight moves onto the other common managed code runtime - .NET. Microsoft's intentions for Ruby are currently much less clear. They have announced Ruby as a language for scripting Silverlight - but that still leaves a lot of open questions. Is this a full implementation of the ruby language, or is some form of Ruby++ - an enhanced subset of Ruby?

JRubyについてはまさにそんな感じとして、注目すべきはもう一つの共通マネージコード・ランタイム——.NETだ。
Rubyに対するマイクロソフトの意図は今のところすごく不透明だ。
彼らはSilverlightのスクリプティング言語としてRubyを発表した——でも未解決の問題が多く残っている。
Ruby言語をフル実装するのか、それともRuby++みたいなもの——Rubyサブセットの拡張——なのか？

//JRuby serves two distinct but complementary purposes. On the one hand it's a powerful scripting language for the JVM, allowing you to weave a dynamic language into a Java application. It's second purpose is an implementation of the Ruby platform in the JVM, which allows a Ruby application, in particular a Ruby on Rails application, to run on the JVM just as well as it runs on the MRI (Matz's Ruby Interpreter, the current C runtime).

JRubyの目的は2つある。それぞれ明確に異なるものだが、相補的なものでもある。
1つ目の目的はJVM用の強力なスクリプト言語である。これによりJavaアプリケーションに動的言語を織り込むことができる。
2番目の目的はJVM上のRubyプラットフォームの実装である。これはRubyアプリケーション、特にRuby on Railsアプリケーションを、MRI(Matz's Ruby Interpreter、現在のC版ランタイム)で動くのと同じようにJVM上で動かすことができる。

//The big question for Microsoft's "Iron Ruby" is how compatible will it be? Will it be a full implementation on the CLR? All the signals I hear tell me that John Lam, the main force behind Iron Ruby, is determined to get a fully compatible implementation. However this may be very difficult to do as things stand. Soon-to-be-ThoughtWorker Ola Bini, a JRuby committer, reckons that it's almost impossible to figure out how to implement a Ruby runtime without looking at source code of the MRI - but Microsoft imposes drastic limitations on its employees' ability to download open source software, let alone look at the source. The open-source community does much of its communication through source code - so this makes collaboration with an open-source community very difficult.

マイクロソフトの"Iron Ruby"に対する大きな疑問は、どのくらい互換性をもつことになるか？だ。CLR上にフル実装されるのか？
私が受信した電波によれば、John Lam(Iron Rubyの中の人)は完全互換実装にするつもりらしい。でもこれは今の状況だとかなり困難なことかもしれない。もうじきThoughtWorksの中の人になるOla Bini(JRubyのコミッタ)は、MRIのソースコードを見ずにRubyランタイムを実装する方法を知るのはほぼ不可能だと考えている——しかしマイクロソフトは、従業員がOSSのソースコードを見ることだけでなく、ダウンロードすることにも徹底した制限をかけている。
オープンソースコミュニティでは、多くのコミュニケーションがソースコードを通して行われる——このため、マイクロソフトはオープンソースコミュニティとの共同作業が非常に難しくなっている。

//Overshadowing this, of course, is Microsoft's historically difficult relationship with the open source world. In the past Microsoft has gone out of its way to vilify and threaten the open source community. In recent years things have improved, but there's a real question about Microsoft's core intentions. The recent patent threats are seen by many as proof that Microsoft is still intent on fighting open source to the death.

これに暗雲を投げかけているのはもちろん、マイクロソフトとオープンソース界との歴史的な難しい関係だ。過去においては、マイクロソフトは盛んにオープンソースコミュニティを中傷したり脅したりしていた。近年、事態は改善されたけれど、マイクロソフトの真の意図については本当に謎だ。最近の特許に関する脅しは、マイクロソフトはオープンソースが死ぬまで戦おうとしていることの証しだと見ている人も多い。

//Unlike most other technology companies, Microsoft has struggled to find a way to co-exist with the open source world. It is harder for Microsoft - unlike Sun, Apple, or IBM they are overwhelmingly a software company. Open source projects like Linux, GNU, and Open Office are directly competing with Microsoft's crown jewels. However I've never felt that declaring war on open-source, trying to stamp it out, was a viable long-term solution. Open-source is here to stay, the question is how to accommodate it.

他の多くの技術会社とは違い、マイクロソフトはオープンソース界と共存する方法を発見するのに苦労している。マイクロソフトにとっては難しいことなのだ——SunやAppleやIBMとは違い、彼らは完全にソフトウェア会社なのだから。
LinuxやGNUやOpen Officeのようなオープンソースプロジェクトは、マイクロソフトの重要事業とモロに競合する。
しかし私は、オープンソースに宣戦布告し、それを根絶しにしようすることが、長期的に現実的な解決案だと感じたことはない。
オープンソースはすでに定着している。
問題は、どのように対応するべきかということだ。

//With Ruby Microsoft is in a different position to the more visible death match. Ruby doesn't compete with the core revenue generators in Microsoft's line up. What's more there is a real desire in the Ruby community to co-operate with Microsoft. Most people I talked to at RailsConf were very keen to see a full range of support for Ruby on Microsoft - and there were a lot of creative ideas floating around on how we could try to come with an approach that could make it work. The overwhelming sense I heard in the community was not "Ruby will kill evil Microsoft" but "how can we overcome the problems to get Ruby on Microsoft."

Rubyでは、マイクロソフトの立ち位置は先のようなデスマッチ状態とは違う。
Rubyはマイクロソフト製品群の中心的な収益発生源とは競合しない。
それ以上に、Rubyコミュニティはマイクロソフトと協力したいと本当に願っている。
私がRailsConfで話した人たちの大部分は、マイクロソフトが Rubyを全面的に支援するのをとても見たがっていた——そして、どうすればそれを実現させるような提案を持ち込むことができるかについての創造的な意見がたくさん出回っていた。
コミュニティで聞いた意見は圧倒的に、「Rubyは邪悪なマイクロソフトを倒す」ではなく「どうすれば問題を解決してマイクロソフトのRubyを得ることができるのだろうか」だった。

//As Chris Sells pointed out, we do have to consider the question "what's in this for Microsoft". I see a couple of reasons. First off is the role of .NET and Windows in the data center. If Microsoft doesn't support the Ruby platform, it runs the risk of people moving away from .NET (and Windows) on server farms if Ruby on Rails becomes successful.

Chris Sellsが指摘したように、「マイクロソフトは何を狙っているのか」という疑問を考慮しないといけない。理由はいくつか思いつく。1つ目は、データセンター内での.NETやWindowsの役割だ。もしマイクロソフトがRubyプラットフォームをサポートしなかったら、Ruby on Railsが成功したときに、サーバーファームにおいて.NET(およびWindows)から人々が去ってしまうリスクを冒すことになる。

//Another reason is people. Microsoft doesn't like to acknowledge this in public, but there is a real concern that AlphaGeeks are moving away from the Microsoft platform. There's a growing sense that Microsoft's vision is armies of Morts in command-and-control organizations. There often seems to be outright discouragement of tools to enable talented enterprise developers, or of agile development processes.

もう1つの理由は人だ。マイクロソフトは公式に認めたくないだろうが、[[AlphaGeek]]たちがマイクロソフトプラットフォームから[[去りつつある](http://www.hanselman.com/blog/IsMicrosoftLosingTheAlphaGeeks.aspx)というのが本当に懸念されている。
マイクロソフトのビジョンは指揮管理組織における死の軍隊だという意見が増えている。優秀なエンタープライズ開発者に可能性を与えるツールや、アジャイル開発プロセスに対するあからさまな支障がたびたび見られる。

//A few years ago my (limited) contacts in Redmond told me that they were seeing a real drift of technical leaders away from the Windows platform. More recently these signs seem to be increasing. Reading the 'softie part of my blogroll I got a sense of real disillusionment amongst people who have been long-time Microsoft supporters. Agile-oriented developers have been frustrated with the direction of Microsoft tools. Microsoft conferences barely mentioning agile processes, leaning much more to waterfall approaches. The tools, with their rigid role-separations, actively discourage the blurry boundaries that agilists prefer.

数年前、レドモンドの（ちょっとした）伝手が、技術リーダーたちがWindowsプラットフォームから実際に離れていっているのを見ていると言っていた。最近、この兆候は増加しているようだ。うちのブログロール（訳注：[blog roll](http://blogs.thoughtworks.com/)）のマイクロソフト関連記事★'softie part★を読んでいると、長い間マイクロソフトのサポーターだった人たちの間に実際に幻滅があるという感じを受けた。
アジャイル指向の開発者たちはマイクロソフトツールの方向性に不満を持っている。マイクロソフトのカンファレンスは、アジャイルプロセスにはほとんど触れず、ウォーターフォールアプローチにかなり傾いている。ツールは、役割の分離が厳密なため、アジャイラーたちが好むぼんやりとした境界を積極的に阻止している。

//At RailsConf, Tim Bray contended that the key decisions on technology are made by the programming community. I partly agree with this. The reason we have so much bloatware in IT is because IT purchasing decisions are usually made on golf courses by people who have lost meaningful contact with the realities of software development. However golf-course decisions may dominate the short-term, but as time rolls on I think Tim's contention is true. So losing the alpha geeks may not matter this year or next, but will inexorably harm Microsoft over time.

Tim BrayはRailsConfで、技術についての鍵となる決定はプログラミングコミュニティによってなされると主張した。私はこれに部分的に同意する。
ブロートウェアがIT界に多すぎる理由は、ITの購買が、ソフトウェア開発の現実との大きな接点をなくした人々によって、ゴルフコース上で決定されるのが普通だからだ。
短期的にはゴルフコースでの決定が支配するかもしれないが、時間が過ぎれば、Timの主張が正しいと思う。だからアルファギークを失っても、今年や来年には影響しないかもしれないが、時間とともに容赦なくマイクロソフトに危害をもたらすだろう。

//Indeed it's already past next year for Microsoft. We've seen a noticeable drop-off in interest from our clients for Microsoft projects, particularly in the US. In Australia, .NET hasn't got any foothold at all amongst our clients. I'm not sure what to make of this data. We aren't so big to be a statistically valid sample on our own. But it's a useful data point nonetheless particularly since we like to think our clients are the "alpha IT shops".

実はマイクロソフトにとってはすでに「来年」が過ぎている。
我たちはマイクロソフトのプロジェクトに対する顧客（特にアメリカの顧客）の関心が著しく減少しているのに気づいた。
オーストラリアでは、.NETは顧客の地盤をまったく得られなかった。このデータから何を受け取ればいいのかはよく分からない。私たちは統計学的に有効なサンプルになるほど大きくはない。ただ、そうは言っても、私たちの顧客は「アルファITショップ」だと考えているから、部分的には役に立つデータポイントだろう。

//Perhaps more significant is the story within ThoughtWorks. When .NET appeared there was a lot of interest in the platform. Many people were pleased to see a strong competitor to the Java platform and were keen to get involved on .NET projects. Yet over the last year or so there's been a big turn away from .NET. This is despite the fact that there is some really interesting things coming out of Redmond. Mike Two is very keen on the windows workflow tools, I've been very impressed by Linq and other language developments. But the general view of Microsoft technologies is a loud yawn. This is important because, as Tim O'Reilly believes, the alpha geeks point to what everyone else will be doing in a few years time. And the crucial point is that the attitude to Microsoft isn't hatred (a common attitude amongst many geeks) but boredom. This is what Paul Graham means when he says that Microsoft is dead because it's no longer dangerous.

たぶんもっと重要なのはThoughtWorksの中の話だ。
.NETが登場したときは多くの関心が注がれた。
たくさんの人がJavaプラットフォームに強力な競争相手が現れたことを歓迎し、.NETのプロジェクトに参画したがった。
しかし去年あたりから.NETに見向きもしなくなった。
レドモンドから出てくるものには本当に面白いものもあったにも関わらずだ。
Mike TwoはWindows Workflowツールにすごく熱心だし、私はLINQや他の言語進化にとても感心した。
でも、マイクロソフト技術の全体図にはあくびが出る。
これが重要なのは、Tim O'Reillyが信じるように、アルファギークたちは他の人たちが数年以内にやるであろうことを指し示すからだ★。
そして決定的な点は、マイクロソフトに対する態度が憎悪（多くのギークの一般的な態度）ではなく、退屈であるということだ。
これが、Paul Grahamが「[マイクロソフトは死んだ](http://www.yamdas.org/column/technique/microsoftj.html)」と言ったことの意味だ。
マイクロソフトはもはや危険な存在ではないのである。

//The attitude to open-source is a large part of this problem. When Java appeared there were yawning gaps in its portfolio, and worse some dreadful standard tools in its API (visions of Entity Beans spring to mind). Those gaps and bad ideas were fixed by the open-source community. Ant gave us a build tool, EJB was displaced by Spring and Hibernate. .NET has also got its gaps, and again the open source community has stepped up to fill them. Yet Microsoft refuses to collaborate with these efforts, even seems to go out of its way to undermine them. I was particularly sickened by Microsoft's reaction to NUnit - an excellent XUnit testing tool, elements of whose design were lauded by Anders Hejlsberg at OOPSLA. Microsoft ended not just bringing out a competitive library, but deliberately making it incompatible. That's not the kind of reaction that encourages people to invest their time in the platform.

オープンソースに対する態度こそがこの問題の大部分だ。
Javaが現れたとき、そのポートフォリオには大きな隙間があったし、さらに悪いことには APIにはひどい標準ツールがあった(Entity Beansのビジョンが思い浮かぶ)。
これらの隙間やひどいアイディアは、オープンソースコミュニティが修正した。
Antがビルドツールを与え、EJBはSpringとHibernateで置き換えられた。
.NETにもギャップはあって、再びオープンソースコミュニティがギャップを埋めるために力を注いだ。ところがマイクロソフトは、こうした努力に協力することを拒否している。
むしろ台無しにしようと努力しているかのようだ。
特にうんざりしたのは[NUnit](http://nunit.com/)に対するマイクロソフトの反応だ——優れたxUnitテストツールであり、その設計要素がOOPSLAでAnders Hejlsbergに称賛されたが、マイクロソフトは競合ライブラリを出荷してきただけでなく、故意に非互換にしてきた。これは、人々がプラットフォームに対して時間をつぎこむことを奨励するような反応ではない。

//To be fair, that debacle was a couple of years ago. Actions like hiring Jim Hugunin and John Lam have helped counter that impression. Technologists like Chris Sells, Don Box, and Jim Newkirk are working to make Microsoft are a more open environment. But like any large organization, Microsoft is full of contradictory forces and we don't know which ones will prevail.

公平に言えば、この大失敗は2年も前のことだ。
Jim HuguninとJohn Lamを雇うといった行動は、あの印象に払拭するのに一役買った。
Chris Sells、Don Box、Jim Newkirkといった技術者は、マイクロソフトがより開かれた環境になるための努力をしている。しかし、大きな組織はどれも同じだが、マイクロソフトは矛盾する勢力であふれており、どれが勝利するのかは私たちには分からない。

//My colleague John Kordyback pointed out that at the heart of all this is realizing that Ruby is not Yet Another .NET Language but a whole community and attitude to software development. Ruby is a community where open source, agile thinking, and lightweight solutions are deeply ingrained values. He says a common problem in Redmond is that "They ask me 'Why is this language important' rather than 'Why is this thinking important?'"

同僚のJohn Kordybackは、大切なのはRubyが「もう一つの.NET言語」ということではなく、Rubyのコミュニティやソフトウェア開発に対する態度なのだということに気付くことだと指摘した。
Rubyとは、オープンソース、アジャイル思考法、軽量ソリューションが、価値として、深く浸透したコミュニティなのだ。
彼が言うには、レドモンドの問題は、
「なぜこの考えが重要なのか？」じゃなくて、
「なぜこの言語が重要なのか？」って聞いてるところ
だということだ。

//So what I see for Ruby and Microsoft is an opportunity. The Ruby community seems eager to work with Microsoft. This provides an opportunity for Redmond to figure out how to deal with the problems of working with open source and for this effort to serve as an exemplar for future collaboration. A first class implementation of the full Ruby platform on .NET would be a wonderful product of this collaboration. Perhaps an even better result would be for this work to serve as an example of how Microsoft can collaborate with a community that's centered on openness and agility; an example that can be a springboard for further spreading of attitudes that can further help programmers and their customers throughout the Microsoft world.

まとめると、私がRubyとマイクロソフトに見ているものは、チャンスだ。
Rubyコミュニティは、マイクロソフトとともに働きたがっているようだ。
このことが、レドモンドがオープンソースとともに働くという問題にどう対処するべきか知ることと、将来の協同作業のための模範となる努力のための機会を提供する。
完全なRubyプラットフォームの.NETでのファーストクラス実装は、この共同作業のすばらしい成果となるだろう。
もっといい結果はたぶん、マイクロソフトがオープンとアジャイルを対象にしたコミュニティとどうやって共同作業するかという例を、この作業が示すことだろう——たとえば、プログラマーと顧客にとって、さらに役に立つ姿勢が、マイクロソフト界の中でさらに広がっていくような、そんな跳躍台となりえるだろう。

//There's been quite a few reactions to this (see Technorati for a full list). Particularly worth reading are the ones from: Sam Gentile, Cory Foy, Luke Melia, Jeremy Miller, Rockford Lhotka, John Lam, Evan Hoff, Karl Seguin, Ola Bini, Miro Adamy, Charles Nutter, Peter Laudati, Nick Malik

これについてかなりの反応があった(全リストは[Technorati](http://technorati.com/search/http://martinfowler.com/bliki/RubyMicrosoft.html)にある)。特に読むべきなのは次の人たちからの反応だ: Sam Gentile, Cory Foy, Luke Melia, Jeremy Miller, Rockford Lhotka, John Lam, Evan Hoff, Karl Seguin, Ola Bini, Miro Adamy, Charles Nutter, Peter Laudati, Nick Malik{{fn('訳注：リンクするのが面倒なので本家を見てください。')}}。

## 参考

* [空気を読まずにRubyMicrosoft粗訳した](http://blog.inomata.lolipop.jp/?eid=662847)←あとでコピる←コピった。
