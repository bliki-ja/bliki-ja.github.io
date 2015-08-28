---
title: EvaluatingRuby
tags: [ruby]
---

http://martinfowler.com/bliki/EvaluatingRuby.html

//If you're reading this I assume you're aware of the fact that there's been a huge amount of fuss about the Ruby programming language, and in particular the Rails framework for developing web applications. Some see it as the future of programming, others as a dangerous diversion.

ここの読者なら世の中でRubyが騒ぎになっていることをご存知だと思う。
特にRailsというWebアプリケーションフレームワークは大騒ぎだ。
Railsはプログラミングの未来を表したものだという人もいれば、
危険な流れだという人もいる。

//I started with ruby several years ago. The pragmatics got me interested and it soon became my preferred scripting language. Over time it grew to handle much of the production of this website - in particular this bliki. I like the language a lot.

私がRubyに触れたのは数年前のことだ。
[達人たち](http://www.pragmaticprogrammer.com/)にすすめられて、興味を持つようになった。
そしてすぐにお気に入りのスクリプト言語となった。
そのうちRubyを使ってこのサイトのプロダクトを作るようになった。
たとえばこのblikiがそうだ。
諸君、私はRubyが大好きだ。

//There's a jump between my personal liking and whether it's something that should be used by our clients. We can evaluate its suitability for client projects based on its features - and this leads to many arguments about the pros and cons of dynamic typing, convention over configuration, processes versus threads, and the like. Such discussions are useful but I remain wary of them. 
//Too many things are hard to judge that way - hence we spend so much of our time on client projects being slowed down by technology that sounded good on a golf course. 
//My preference is to make this judgment based on experience - find people who have a track record for delivering in the mainstream environments and who have tried using Ruby.

ただ、私がRubyを好きなことと、Rubyをクライアントのために使うかというのは別問題だ。
クライアントのために使えるかどうかは、Rubyの機能を評価することによって判断できるだろう。
だがこれは、動的型付け、規約＞設定(convention over configuration)、プロセスvsスレッドなどといった個々の事項の良い点、悪い点を議論していくことになる。
このような議論は確かに有益ではあるが、もっと慎重になったほうがよいだろう。
このような手法では判断できない事項も数多く存在する。
ゴルフ場で良いと聞いたテクノロジーを使ったことで、
クライアントのプロジェクトの進捗が大幅に遅れることもある。
テクノロジーを判断するには、経験に基づいたほうが良いだろう。
主流の環境で開発経験を行った実績があり、
Rubyを使ったことのある人間を探すのだ。

//Some of this can be seen with public writers. Ruby has attracted many people who have good experience elsewhere but feel Ruby gives them an additional edge, names like the both the Prags, Justin Gehtland, Bruce Tate, David Geary et al should be enough to make Ruby worth looking at. But parochial as I may be I've been keeping my ear closest to ThoughtWorkers: people whose history I know and whose projects I can more easily check up on.

そのような人間は、本の著者にも見られる。
他の分野で実績を上げているが、
Rubyを使えばもうひとつ別の強みを得ることができると思っている人たちを、
Rubyは魅了してきた。
達人の[2](http://toolshed.com/blog/)[人](http://pragprog.com/pragdave)、[Justin Gehtland](http://blogs.relevancellc.com/)、[Bruce Tate](http://weblogs.java.net/blog/batate/)、[David Geary](http://www.jroller.com/page/dgeary)などといった人たちがそうである。
Rubyを評価するには十分な面子ではないだろうか。
しかし、私のように視野の狭い人間は、同僚の意見を聞くかもしれない。
同僚ならばその人についてよく知っており、
関わったプロジェクトも簡単にチェックできる。

//It's still early days yet, but I now have a handful of project experiences to draw on. So far the results are firmly in favor of Ruby. When I ask the question "do you think you're significantly more productive in Ruby rather than Java/c#", each time I've got a strong 'yes'. 
//This is enough for me to start saying that for a suitable project, you should give Ruby a spin. Which, of course, only leaves open the small question of what counts as 'suitable'.

まだ時期尚早ではあるが、コメントできる程度にプロジェクトを経験してきた。
今のところRubyの評価は確実に高い。
「RubyはJavaやC#よりも格段に生産性が向上すると思いますか？」
という質問には、常に「はい」と答えてきた。
Rubyが適したプロジェクトでは生産性が確実に向上する。
あなたもRubyを試してみて欲しい。
もちろん、ここで重要なのは、何をもって「適している」と言えるかどうかだ。

//One thing to mention is that although we have a couple of what I might call typical web projects that fit in well with what's currently talked about as prime Rails territory, there are also elements that are different.

ひとつ触れておきたいのは、Railsがよく用いられる、いわゆる典型的なWebアプリケーションのプロジェクトも経験したのだが、その他にも異なる構成要素のWebアプリケーションプロジェクトもいくつか経験してきた。

//* A kiosk device where consumers are directly manipulating a touch screen. Rails is present here, as the UI is a very Ajaxian web front end. But there's also communication with hardware devices, crypto, odd networking stuff - all on an appliance like Linux box.

* 売店で顧客が直接画面に触れる端末。これもRailsで動いている。UIはAjax的なWebフロントエンドとなっているが、ハードウェアデバイス、暗号化、異様なネットワーク構成なども扱った。これらはすべて、Linuxボックスのようなアプライアンスに格納されている。

//* A lot of SQL manipulation in batch processes where Ruby is used to specify what's needed and the resulting Ruby expressions are converted to SQL to carry out the real work. There's a splash of Rails on the front end - but again it's not the typical Rails app.

* バッチ処理のSQLの多くをRubyで記述することができる。Rubyの式はSQLに変換され、実際に使用される。フロントエンドにはRailsはあまり表れないが、これも典型的なRailsアプリケーションといえる。

//* A project that looks like a standard web app in many ways, but involves a great deal of munging data from different formats and some very fancy graphs and charts.

* 昔ながらの標準的なWebアプリケーションだが、フォーマットの異なるぐちゃぐちゃした大量のデータを扱う。派手派手な表やグラフなども扱う。

//In all these cases, those involved said they are getting functionality, and value, faster out of the door than they had in other platforms. This suggests to me that if you're looking for delivery speed and productivity you should take a serious look at Ruby.

以上の3つのケースはどれも、
他のプラットフォームよりもいち早く、
機能および価値を提供することができた。
このことから私が言えるのは、
納期が短く、高い生産性が必要な場合は、
本格的にRubyの採用を考えてみるとよいということだ。

//There are still some open questions. In particular it's still too early to see what happens in later enhancement stages, particularly when you get team changes. Some people think that the dynamic nature of Ruby and the lack of tools will be a problem, others that the simplicity that Ruby encourages will make up for the difference. Such is the nature of the question that we can't really tell yet - I'll update you when I find out more.

しかし、まだ疑問が残っている。
開発工程が進んでいくと問題が顕在化することはないかという点だ。
たとえば、引継ぎを行ったときなどだ。
Rubyの動的な側面と、ツールの不足が問題だという人間もいる。
Rubyのシンプルさがその差を補っているという人間もいる。
この点についてはまだ何とも言えない。
何か分かったら、あとで書く。

//Cedric Beust argues effectively that even if Ruby is a superior platform it may not become mainstream. I certainly understand that argument, like many an ex-smalltalker I've long known of more productive platforms than the current mainstream enterprise choices. If it's important to you that you are only using mainstream platforms, you'll need to wait longer to see what happens. There are plenty of course, who don't care about following the mainstream.

Cedric Beustが
「Rubyがいかに素晴らしかろうと、主流になることはないだろう」
と[詳しく述べて](http://www.beust.com/weblog/archives/000382.html)いる。
その点については私も理解している。
私も含め、かつてのsmalltalkerたちは、現在の主流よりも生産性の高いプラットフォームを以前から知っているのである。
主流のプラットフォームだけを使うことが重要なのであれば、
今起きていることを目にするにはしばらく時間がかかることだろう。
道はいくらでもある。
[主流を追いかけない人だってたくさんいるのだ](http://www.loudthinking.com/arc/000584.html)。

//There's also plenty of projects where development productivity is swamped by political and other communication factors. Here Ruby's advantage would be significantly attenuated.

政治的な要因やコミュニケーションの要因によって開発効率が落ちているプロジェクトが多く存在する。Rubyの利点もこれでは台無しである。

//But overall I'm increasingly positive about using Ruby for serious work where speed, responsiveness, and productivity are important.

とはいうものの、私は、スピード、即時性、生産性が重要であれば、
実案件にもRubyが使用できるものとますます確信してきている次第だ。
