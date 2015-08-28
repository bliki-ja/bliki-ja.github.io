---
title: エンタープライズRails
tags: [ruby]
---

http://www.martinfowler.com/bliki/EnterpriseRails.html

//In the newly formed Rails community, the word 'enterprise' is becoming a dirty word. For many people the Rails framework, with its aggressive simplicity, is the antithesis of over-complex 'enterprisey' frameworks.

Railsのコミュニティでは「エンタープライズ」という言葉がダーティーワードになりつつある。
多くの人にとってRailsフレームワークとは、貪欲にシンプルさを備えたものであり、複雑になり過ぎた「[エンタープライジー](http://patricklogan.blogspot.com/2006/03/its-enterprisey.html)」なフレームワークへのアンチテーゼなのだ。

//At the recent RailsConf, PragDave's opening keynote highlighted a bunch of unsolved issues with Rails, several of which involved dealing with some of these enterprisey concerns. An example of this was his call for support of more varied database structures, such as having compound primary keys.

先ごろ開かれた[RailsConf](http://www.railsconf.org/)では、オープニング[キーノート](http://blog.scribestudio.com/articles/2006/06/30/railsconf-2006-keynote-series-dave-thomas)において[PragDave](http://blogs.pragprog.com/cgi-bin/pragdave.cgi)が「Railsでは解決できない事項」に焦点をあてていた。
その中にはエンタープライジーなことも含まれていた。
たとえば、複合キーを持つような、様々なデータ構造を扱うことが必要だというのだ。

//DHH's response to this could not have been a more emphatic refusal. With a clever visual manipulation of his recent wired cover, DHH projected himself as the Neo of the software world, forcefully proclaiming himself to be in a better place, and telling the enterprise world that they need to join him, not the other way around. Applying this principle to compound keys, the reaction is "no way". Rails will do what it does, and will not complicate itself to support things it doesn't like.

これに対する[DHH](http://www.loudthinking.com/)の反応は、この上なく痛烈な拒絶であった。Wired誌{{fn('訳注：Linux Journal誌だと思われ。')}}の表紙になった画像をうまく編集して、DHHは自らをソフトウェア界の[ネオ](http://imdb.com/title/tt0133093/)（救世主）としてプロジェクタに映し出した。
それは、彼のいる場所が「より良い場所」だということを強烈に宣言するものであり、
エンタープライズ界に対して「こちら側へ来い」と声明するものであった。
これを複合キーの話に当てはめると、返答は「嫌だ」となる。
Railsは為すべきことを為す。
嫌いなものをサポートして複雑になるようなことはしない。

//Here is a solid example of what makes Rails "opinionated software". In the Rails mindset, life is much simpler if you keep your tables isomorphic to your objects, and give your tables surrogate, integer, primary keys. If you play the Rails way - life is easy; if not - use something else.

Railsを「"こだわりのある"ソフトウェア（opinionated software）」たらしめている顕著な例がある。
Railsのマインドセットには「テーブルをオブジェクトと同一構造にし、プライマリーキーにはinteger型のサロゲートキーを設定しておけば、かなり楽になる」というものがある。
Rails道を進めば、ライフ・イズ・イージー。
Rails道を進まないのであれば、別のものを使えばいい。

//I confess I like this opinionated attitude. Perhaps it reflects my Unix background, which thrives on many tools that do one thing well, rather than a complex tool that tries to do many different things. I like Rails's focus, its determination to pick a certain class of application and serve that well.

正直、私はこの頑なな姿勢が気に入っている。
多くの異なった事をする一つの複雑なツールよりも、一つの事を上手くこなす沢山のツールを使おうとするUnix文化のバックグラウンドが、私に備わっていることと関係しているのかもしれない。
とある部類のアプリケーションのみを取り上げて、それを巧みに提供する。
このRailsの目の付け所が気に入っている。

//In this sense I see a startling parallel between DHH and Kent Beck. For either of them, if you present them with a constrained world, they'll look at constraints we take for granted, consider them to be unessential, and create a world without them. I don't have that quality, I tend to try to work within the constraints gradually pushing at them, while they just stick some intellectual dynamite under them and move on. That's why they can create things like Extreme Programming and Rails which really give the industry a jolt.

その意味で私は、DHHとKent Beckとの間に驚くべき類似点を感じている。
彼らに制約のある世界を見せれば、その制約を調べ、不必要と見なし、その制約のない新しい世界を創造するだろう。
私にはその能力がない。制約のあるなかで、制約を排除しながら、どうにかこうにかやっていくだろう。
だが彼らは、「知的ダイナマイト」を突っ込んで、走り去っていく。
だからこそ、Extreme ProgrammingやRailsを作り出し、業界を震撼させることができるのだ。

//Lying under PragDave's talk was a deeper concern. Like me he's spent much of this life working with people who can't apply the dynamite. When you need data from a database that's run by a data management group and has run for a decade with compound keys, you can't just don a pair of cool sunglasses and blow the constraint away. One answer to this is to "change your organization or change your organization", but to those who can't should they be utterly abandoned by Ruby?

PragDaveの講演は、さらに深いものだった。
彼は、私のようにダイナマイトを扱えない普通の人と多くの時間を過ごしてきた。
データ管理グループが運営するデータベースからデータを引き出さなければならないとしたら、しかもそのデータベースが10年間ずっと複合キーで運用されてきたとしたら、ネオのようにクールなサングラスを身に着けることも、制約をダイナマイトで吹き飛ばすこともできないだろう。
これに対するひとつの答えはこうだ。
「組織を変「え」るか、組織を変「わ」るかだ」。
だが、それができない人々は完全に見放されてしまうのだろうか、Rubyに。

//The last word of the last paragraph is the key to the answer. Rails is right, I think, to ignore the enterprisey world, but that doesn't mean that Ruby should. One of the great strengths of scripting languages, like Ruby, is their post-modern delight in diving into the muck of a chaotic software ecosystem. Ruby is a great place for other frameworks to fill the gaps left behind by Rails's opinions.

先のパラグラフの最後の言葉が、答えの鍵となる。
「Rails」がエンタープライジーな世界を相手にしないのは、私は正しいと思う。
だがこれは、「Ruby」がそうだということではない。
Rubyのようなスクリプト言語の強みは、混沌としたソフトウェアエコシステムの海にダイブできる[ポストモダン](PostModernProgramming)な楽しみである。
Railsの"こだわり"に遅れをとった他のフレームワークにとって、Rubyはその差を埋めるのに相応しい言語である。

// My colleague Badri gave a talk, that was sadly not very well attended, about one of these - rBatis. rBatis is a ruby port of the popular Java framework iBatis (led by Clinton Begin, another colleague). The port is being done by yet a third colleague Jon Tirsen. rBatis is still a work in progress but already it shows the same elements that made iBatis popular - fearlessly embracing the strength of SQL rather than just trying to hide it under layer of Query Objects. It also strengthens its appeal by making the most of Ruby - stealing many functions from Active Record (such as validation), and using convenient Ruby syntax rather than XML. (Is XML the hunchback of programming languages?) rBatis could be the answer to complicated database issues, still fitting into a Rails web-app, but introducing a different set of trade-offs. If you're comfortable with SQL, rBatis looks pretty damn simple. (BTW any Rubyists out there Sydney? We may need you to kidnap Jon's surfboard if work slows down on rBatis.)

同僚のBadriが、まさにこういう話をしていた（残念ながら私は聞くことができなかったのだが）——rBatisについてだ。
rBatisは、Javaのフレームワークである[iBatis](http://ibatis.apache.org/)（同僚のClinton Begin他によって開発されている）をRubyにポートしたものだ。
ポートは同僚の[Jon Tirsen](http://jutopia.tirsen.com/)によって行われている。
rBatisはまだ開発中の段階だが、iBatisがポピュラーになった機能——SQLをQuery Objectレイヤーの裏に隠すのではなく、恐れずにSQLの強みを包括している——については、すでに実装されている。
大部分をRubyで構築したことにより、さらに強みが増している。
Active Recordからいくつかの機能（バリデーションなど）を拝借し、XMLではなく便利なRubyの構文を使用している（XMLはプログラム言語のせむし男ではないだろうか？）。
rBatisは、Railsと統合しつつも、複雑なデータベース問題に何らかの答えを出すだろう。
ただし、現行のRailsとは異なるトレードオフを提示することになるだろう。
SQLを扱うのが苦ではないなら、rBatisは非常にシンプルだ。
（ところで、シドニーにRubyistはいる？
Jonのサーフボードを取り上げて欲しいんだ。
rBatisの開発が進まないからね。）

//All this tilts our perspective. Enterprise Rails may well be an oxymoron, but Enterprise Ruby is anything but. Indeed as I look at the way the enterprise world is going - a greater use of messaging, autonomous services featuring ApplicationDatabases, a post-modern acceptance of variety - the glue that doesn't set seems to be the ideal tool.

そういう意味で言うと、「エンタープライズRails」という言葉は矛盾語法かもしれない。
しかし、「エンタープライズRuby」はそうではない。
エンタープライズ界が動いている様を見ているからこそ、そう言えるのだ。
エンタープライズ界は、メッセージングの利用、[ApplicationDatabase]]を持つ自律型サービス、ポストモダンな多様性の受容、の方向に動いている。
つまり、[[型に嵌めないグルー（糊）](http://blogs.pragprog.com/cgi-bin/pragdave.cgi/Tech/UnsetGlue.html)のようなツールが理想となっている。

//Although some people felt these talks implied that there was a rift appearing between the Davids, further conversation suggests to me any rift is founded on misunderstanding (now there's a mangled metaphor). PragDave's call wasn't for Rails to support these things but for the wider community to find a way. Similarly DHH's response was about the Rails core team; which hardly limits other peoples' efforts - as rBatis demonstrates. Furthermore DHH felt that most of PragDave's calls were consistent with the Core. The notion of a narrow core rails and a wider ruby world (including rails) supports both concerns - this is the strength of composing small tools.

以上の話から、David達Rails開発者の登場前後に断層があるのではないかと受け取る人もいた。
だが、会話を続けていくうちに、そういった断層はなく、ただの誤解だということが分かった（断層のメタファは打ち壊された）。
PragDaveが必要だと言ったのは、Railsがサポートする必要があるという意味ではなく、もっと広いコミュニティに対して、何らかの手段を見つけて欲しいというものだった。
同様にDHHの返答も、Railsコアチームに限定したことであった。
rBatisのデモンストレーターのような、コアチーム以外の人の成果まで制限することはできない。
DHHは、PragDaveの要望はコアチームの要望とも一致していると考えていた。
狭いRails（コア）と広いRubyの世界（そこにRailsも含まれる）という考え方は、どちらにもあてはまる。
これは小さなツールを構成する強みである。

//However this wide-ruby / narrow-rails view of the world has a catch. I joked during my keynote that RailsConf was a sign of a failure of Rails - since if it was truly successful Rails would be too simple to need a conference. The underlying truth, however, is that Rails has become the keyword for Web apps (even Enterprise apps) in Ruby. I suspect we'll see more enterprisey people at RailsConf than at RubyConf, because Rails has got the attention. The consequence of this is that there's a danger that people will hear the opinionated nature of Rails as a statement about Ruby, and thus give the impression that Ruby isn't a suitable enterprise glue. That would be a shame.

しかし、この広いRuby／狭いRailsという見方には問題がある。
私はキーノートのなかでこんなジョークを言った。
「RailsConfはRailsの失敗を示している。なぜなら、本当にRailsが成功していれば、カンファレンスが必要ではないほどシンプルなはずだからだ」。
これは、RubyでWebアプリケーションといえばRailsになったという事実があるからだ。エンタープライズアプリケーションでもRailsかもしれない。
RailsConfには[RubyConf](http://www.rubyconf.com/)よりも多くのエンタープライジーな人間が参加しているのではないだろうか。
Railsがそれほど注目を集めているからだ。
そのため、Railsのこだわりの特性が、Ruby自体の声明だと受け取られてしまう危険性がある。
これではRubyはエンタープライズのグルーには適していないと受け止められてしまうかもしれない。
それは残念なことだ。
