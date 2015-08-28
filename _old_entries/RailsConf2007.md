---
title: RailsConf2007
tags: TAGS
---

http://www.martinfowler.com/bliki/RailsConf2007.html

2007/5/22

//I don't go to as many conferences as I used to, but the advantage of that is that I have time to go to ones that take my fancy. I've long had a particular fondness for the Ruby community, so I turned up as an attendee at this year's RailsConf.

以前ほどカンファレンスに参加することはなくなったが、
その分、好きなカンファレンスに参加する時間ができた。
ずっと前からRubyコミュニティには特別な愛情を捧げている。
というわけで、RailsConfに一般参加者として参加してきたよ。

//Chad Fowler and Rich Kilmer introduced the conference. Chad shares my name but I don't share his ukulele skills.

Chad FowlerとRich Kilmerによってカンファレンスの紹介が行われた。
Chadとは苗字が一緒だが、彼ほどのウクレレのスキルは私にはない。

//With a young technology there's lots of new and important pieces appearing, but for me the most important of these is JRuby. Now in its final cycle of release candidates, JRuby offers a full implementation of the Ruby Platform on the Java JVM, as well as providing a scripting language for the JVM. For what we do at ThoughtWorks, and for many Ruby/Rails developers this matters a great deal even if you never "include java".

若いテクノロジーには新しくて重要な特筆すべき点がいくつもある。
だが、私にとって最も重要なのは、[[JRuby|http://jruby.codehaus.org/]]だ。
現在、JRubyは最終的なRCの段階だ。
Java VM上で動くスクリプティング言語を提供するだけでなく、
Rubyプラットフォームの完全な実装をJVM上で行おうとしている。
ThoughtWorksで我々が行っていること、
そして、多くのRuby/Rails開発者たちにとって、
（たとえ"include java"をしたことがなくても）
これはかなり重要なことである。

//One of the biggest issues our Ruby teams run into is deployment. Getting a ruby app into production involves a whole bunch of new technologies, and data centers tend to be conservative on this kind of thing. Our RubyWorks stack tries to simplify this, but JRuby offers the choice of just deploying into a Java container, turning a Rails app into an easily deployed war file. I think this will make Ruby on Rails a much more viable choice in lots of enterprise environments.

我々のRubyチームが開発中に直面した最も大きな問題はデプロイだ。
Rubyのアプリケーションを実践投入するには、非常に多くの新しいテクノロジーが必要となる。それに、データセンターはこういったことに保守的だ。
我々の[[RubyWorks|http://studios.thoughtworks.com/rubyworks]]もこの点をシンプルにしようと努力している。
JRubyはこの点について、Javaコンテナにデプロイすればよいので、
Railsアプリケーションもwarファイルとして簡単にデプロイできると主張している。
これにより、Ruby on Railsが多くのエンタープライズ環境における選択肢となる得るのではないかと私は思っている。

//JRuby's maturity on the JDK raised the obvious question of what will happen with the other popular managed runtime. Signals from Microsoft were faint and unclear. It was good to see notable Microsoft-oriented geeks Scott Hanselman and Chris Sells at the show, even if when I saw Chris Sells it felt like being in an arena. What I like is that there is a real desire within the ruby community to collaborate with Microsoft rather than the usual competition and Redmond-bashing.

JDKからJRubyが出てきたとなると、他のマネージドランタイムではどうなのかという声が上がるのも当然だ。
Microsoftからは反応がほとんどなかった。
Microsoft贔屓の有名なギークである[[Scott Hanselman|http://www.hanselman.com/blog/]]と[[Chris Sells|http://www.sellsbrothers.com/]]がその場にいたのはよかった。Chris Sellsに会ったとき、闘技場にいるような気分だったが{{fn('訳注：arenaは闘技場の意味だろう。FOSSに敵対的なMicrosoftと対決するイメージ。')}}。
Rubyコミュニティには、よくある争いごとやレドモンドバッシング{{fn('訳注：ご存知の通りMSの本社があるのがレドモンド')}}ではなく、Microsoftとコラボレーションしたいという強い願いがある。私はそこが好きだ。

//Indeed the overwhelming impression I got at RailsConf was a sense of industry-changing mission. At last year's conference my sense was that of a community delighted and rather stunned by its success. My iconic image was DHH as Neo of the Matrix, breaking the rules of enterprise software and reveling in the success.

RailsConfで私が感じた印象は、産業化への使命感であった。
去年のカンファレンスでは、その成功にコミュニティが感激し、驚いているというような感じだった。
DHHのイメージは映画『マトリックス』のNeoであり、
エンタープライズソフトウェアのルールを破り、
その成功に喜んでいるというものだった。

//This year my sense is that this morphed into something much more important. Success is not just being an outbreak of sanity in the IT world, but actually leading that world. There seems an excellent chance that Ruby and Rails could become a significant platform for IT develop over the next few years. We're already seeing signs of this at ThoughtWorks - 40% of our new business this year in the US is Ruby work.

今年の印象は、もっと重要なものだった。
成功はIT業界の熱狂的なブームにとどまらず、IT業界そのものを牽引している。
これから数年間、Ruby on RailsがIT開発における重要なプラットフォームになる可能性が十分にあるように思えた。
我々はすでにThoughtWorksでこの兆候を垣間見ている。
今年のUSにおける我々の新しいビジネスの40%がRubyの仕事なのだ。

//Unlike previous platforms, this one isn't controlled or even dominated by vendors. Ruby is a community effort. I've been hoping for a long time that one of the LAMP technologies would break through into corporate IT, and it looks like Ruby could well do it.

これまでのプラットフォームとは違い、
Rubyは特定のベンダーにコントロールされていない。
ましてや、占有されてもいない。
Rubyはコミュニティの賜物なのである。
以前から、LAMPテクノロジーから企業ITにブレイクスルーをもたらしてくれるものが登場することを望んでいたが、まさにRubyがそれをやってのけてくれそうだ。

//Corporate IT is dominated by bloatware. Time and time again we have to deal with expensive software purchased on golf-courses that just get in our way while sucking funds and development hours. Technologies that make it harder for programmers to do what they like to do best - make a difference for the businesses they are supporting. (This week's memorable tale was of a large company that spent eight million dollars on an enterprise-wide version control system that couldn't branch properly.)

企業ITではブロートウェアが席巻している。
我々は、ゴルフコース{{fn('訳注：エラい人がゴルフ中に買っちゃった！')}}で購入された高価なソフトウェアを扱わなければならない。そのソフトウェアは、アホみたいに価値がないにもかかわらず、我々の邪魔をし、開発時間を削ってくる。
プログラマがベストと思えるやり方ができないテクノロジーは、
携わっているビジネスにも影響を及ぼしてしまう。
（今週聞いたとっておきの話。ある大企業が800万ドルを費やしてエンタープライズ規模のバージョンコントロールシステムを購入したんだけど、ブランチがうまく動かないんだって。）

//My hope that with a platform that's controlled by a community we'll see a platform that focuses on simplicity - finding the key things that need to be done and doing them in a way enables programmers to provide their best.

コミュニティにコントロールされたプラットフォームに対して私が求めるのは、
シンプルさの追求である。つまり、やらなければならない鍵となることを見つけ出し、プログラマがベストなやり方でできるというものだ。

//Michael Koziarski and Jamis Buck describing the Rails Way - establishing the good style which lies deep in the Ruby community.

Michael KoziarskiとJamis Buckがthe Rails Wayについて説明していた。
それは、Rubyコミュニティに深く根ざしたスタイルであった。

//It's helped by the fact that the ruby community has formed around the best ideas of the OO and Extreme Programming communities. Listening to the keynote of Jamis Buck and Michael Koziarski I was delighted to reflect on the thought that they were right there in the values of Ward, Kent, and all the other people who've been advocating clean code, well-factored object-oriented design, and testability. These ideas have made a great impact on many other technological communities, but in Ruby-land they are the orthodoxy.

これは、Rubyコミュニティがベストなオブジェクト指向の考えとXPコミュニティに囲まれて形成されているということが大きいだろう。
[[Jamis BuckとMichael Koziarski|http://therailsway.com/]]の基調講演を聞いて私は嬉しかった。
Ward、Kent、それから、キレイなコード、うまく整理されたオブジェクト指向設計、そして、テストしやすさについて提唱してきたすべての人たちの価値が、そこに受け継がれていたのだ。
これらの考えは、他の多くの技術コミュニティにとっても大きなインパクトだったはずだが、Ruby界ではそれが「正統」になっている。

//Throughout the conference there was a sense that we are at an inflection-point in our industry, a key technological shift that promotes a new major platform. Listening and reading about JavaOne I got the sense that a big shift had happened there, people no longer focusing on Java the language but on Java the JVM, replacing one language with multiple languages closely collaborating.

カンファレンスの間ずっと、我々の業界が変曲点にいると感じていた。
鍵となる技術的な転換によって、新たな主要なプラットフォームが使われ始める。
JavaOneについて見聞きすると、
そこでも大きな転換が行われたようだ。
Javaの言語という側面ではなく、JavaのJVMにフォーカスがあたっているというのだ。
ひとつの言語を複数の言語に置き換えて、
それらを密接に組み合わせるというのである。

//A particularly fascinating thing about the Ruby community is the diversity of ages of people in it. Not just do yoru have the young paradigm breakers like DHH and the core team, you also have the, ahem, rather more seasoned campaigners like PragDave and the RubyCentral triumvirate. The important thing is that there's a lot of respect and collaboration across this generation gap. There isn't the wall between the old farts and the loud teenagers that you often get, instead a real appreciation for what both groups have to offer.

Rubyコミュニティで特に興味深いのは、参加者の年齢層が幅広いことだ。
DHHやコアチームのように若い「パラダイムブレイカー（破壊者）」だけでなく、PragDaveやRubyCentralの3人などのような年寄り……ええと……熟練の活動家たちも目にすることができる。
重要なのは、世代間に多くのリスペクトとコラボレーションがあることだ。
よくある世代間の「壁」は存在しない。
お互いに提供することに対して、
どちらのグループも本当に感謝していた。

//Not that all is good, however. There is a marked lack of women in the ruby community which, apart from the fact that we're missing out on some serious talent, probably is a sign of other problems within the community. The DevChix group was pretty active in looking for ways to try to correct this and I was pleased to see several conversations sprout up during the conference on finding ways to improve our Diversity problems.

ただし、良いことばかりではない。
Rubyコミュニティでは、女性を一切見かけることがない。
これは才能ある人材を見逃しているということでもあるが、
それよりもこれは、コミュニティに別の問題があるということではないだろうか。
[[DevChix|http://www.devchix.com/]]グループがこの状況を是正するための活動している。
また、カンファレンスにおいて、[[Diversity]]問題を改善する方法を模索する会話を目にしたことが私はとても嬉しかった。

//A couple of years ago I wrote about the impressions people had that the RubyPeople were notably more friendly than most software communities. Talking to people at RailsConf I got the message that that had changed for the worse. Both the ruby lists and particularly the rails lists had tended more towards the sad Internet mean. In his opening keynote Chad Fowler said that the rails community had a reputation as "a bunch of arrogant bastards" and I cringed as an, admittedly small, group raised a triumphant cheer.

数年前、RubyPeopleは他のソフトウェアコミュニティの人たちよりもフレンドリーだということを述べた。RailsConfの参加者と話したところ、残念ながら事態は悪くなっているようだ。
RubyとRailsのメーリングリストは（特にRailsは）、インターネットの嘆かわしい平均値に近づいてきている。
オープニングの基調講演でChad Fowlerが、
railsコミュニティは「態度のデカい奴ら」だという悪評判があると述べたが、
私も、（確かに少数ではあるが）一部の人たちが勝利の雄叫びを上げているのには、ウンザリした。

//What pleased me was, that starting with Chad, there was a strong push from the ruby leadership to try and change this. A theme that came from several talks was that our community had an opportunity to try to lead the software profession away from this tar-pit of NetNastiness and lack of diversity, to create a community that really welcomed many types of people into a nurturing and pleasant environment. I've been sick of the tone of geek discussion for many years and if the Ruby community could really show a direction to lift us out of this quagmire, this would delight me even more than all of the other prizes that glitter in front of us.

嬉しかったのは、ChadをはじめRuby界のリーダーたちから、この状況を変化させようという強い後押しがあったということだ。
いくつかの話に共通して出てきたのは、ソフトウェア業界仲間をNetNastinessの泥沼や多様性のない状態から救い出すことにより、新たなコミュニティを造り出す、すなわち多種多様な人々を心から受け入れる肥沃で快適な環境を造り出す機会があるというテーマだった。
私はもうギークな会話に飽き飽きしている。
Rubyコミュニティがこの状況を本当に打破できるようなら、
本当に喜ばしいことである。
それは、この先に燦然と輝いて見える栄冠や勝利すべてにも勝るものだ。

(写真撮影：[[James Duncan Davidson|http://blog.duncandavidson.com/]])
