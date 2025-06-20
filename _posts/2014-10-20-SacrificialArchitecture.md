---
title: 犠牲的アーキテクチャ
tags: [process theory, evolutionary design, application architecture]
---

https://martinfowler.com/bliki/SacrificialArchitecture.html


会議の席であなたは考えている。自分のチームが二年間かけて書いてきたコードのことを。そして決断に至る。いま打てる最善の手は、あのコードをすべて投げ捨てまったく新しいアーキテクチャを再構築することだ。死にゆくコード、それに費やした時間、自分が下し続けてきた判断。この決断は、あなたをどんな気持ちにするだろう？

多くの人にとって、コードを捨てるのは失敗の証だ。ソフトウェア開発の探索的な性質を考えれば、わからない判断ではないかもしれない。けれど失敗には違いない。

ところが、いま書ける最良のコードは二年経ったら捨てるつもりのコードだということはよくある。

私たちは偉大なコードとして長命なソフトウェアを思い描くことが多い。私は 1980 年代に生まれたエディタでこの記事を書いている。ソフトウェアアーキテクチャに関する論考の多くはそうした長寿を導く方法に関するものだ。にもかかわらず、成功の礎となるのがずっとむかし /dev/null 送りにしたコードということもある。

ウェブにおける大規模ビジネスのうちもっとも大きな成功の一つである eBay の成り立ちを見てみよう。そのはじまりは、1995 年のある週末に書かれた Perl のスクリプト一式だった。1997 年にコードは丸ごと捨てられ、 C++ で書かれたシステムがそれを置き換えた。そのシステムは当時の Windows の上で動作した。2002 年、アプリケーションは再び、今度は Java で書き直された。置き換えられてしまったということは、初期バージョンたちは間違っていたのだろうか？とてもそうは思えない。eBay はこれまでのウェブの中でおきた大成功の一つだが、その成功の多くは、お払い箱になった 90 年代のソフトウェアに依っている。1996 年の eBay を支える上で正しかったアーキテクチャは 2006 年の eBay にとって正しいアーキテクチャではないだろう。1996 年版は 2006 年の負荷を捌けないだろうが、2006 年版は作るにも保守するにも育てるにも複雑すぎる。1996 年のニーズにはそぐわない。

実際、この指針を組織の行動原理に焼き込むこともできるだろう。Google では、現時点の十倍の負荷を捌けるようシステムを設計するのがはっきり定められたルールとなっている。負荷がある規模を超えたら現行の版を捨て、最初から作り直した方が良いという含みがここにはある [1]。サブシステム群を数年おきに再設計しては捨てるのが普通なのだ。

成熟したコードベースを前に、人々が性能やスケーラビリティの無さをこき下ろすのはよく目にする光景だ。けれどソフトウェアシステムの初期には、その真のニーズがそれほど確かでないことが多い。だから機能変更の柔軟性に焦点を置く方が、性能や可用性より重要になる。そのあとユーザが増えたら優先度を変える必要はある。けれど出来の悪いコードの上に多すぎるユーザを抱え込むのはふつう、その逆よりもマシだ。Jeff Atwood は「性能は機能」という標語を作った。性能の優先度はいつも一番上だとこの標語を解釈する人もいる。けれど機能というのはどれも、他の機能と比較した上で選び取る必要があるものだ。性能なんて無視していい、という話でもない。ソフトウェアが遅すぎたり不安定すぎたりして事業をダメにすることはある。チームは異なるニーズの間で難しい舵取りをしなければいけない。多くの場合、これは技術というより事業の決断なのだ。

なら犠牲的なアーキテクチャを意識的に選ぶとは、つまりどういうことなのだろう？それは、数年後には（願わくば）今作っているものを捨てることになる現状を受け入れる、ということだ。それは、作っているものが応えることのできる機能横断的なニーズへの限界を受け入れる、ということかもしれない。それは、時が来たら取り替えが効くよう今のうちから物事を考えておく、ということかもしれない - ソフトウェアの設計者は、交換のしやすさなんて滅多に考慮しない。それは、比較的短時間で捨ててしまうソフトウェアだって多くの価値を生み出しうると認めること、でもある。

アーキテクチャが犠牲的だからといって、そのソフトウェアの内的品質がどうでもよくなるわけではない。ふつう内的品質を犠牲にすると、交換の時期が来るより早く酷い目にあう。そのコードベースの引退に向け既に作業しているなら別だが。優れたモジュール性は健やかなコードの不可欠な要素だ。そしてシステムを交換するときにも大きな助けとなる。実際、初期バージョンのシステムでひとつやっておくと良いのは、あるべき最適なモジュール構造についてよく考えること。交換に備えて知見を蓄える。初期のシステムなら丸ごと捨てるのも悪くないかもしれないが、システムが大きくなるにつれて個々のモジュールを捨てる方が良くなる。それができるのは、うまい具合のモジュール境界がある時だけだ。

この問題を扱う際に見逃されがちな話題の一つが会計処理。いや、ほんとに。コードベースの償却方法を理由に、どうみても行き詰まってしまったシステムの置き換えを渋る人々に出くわしたことがある。どちらかというと大企業病の類いだが、自分がそんな世界に暮らしていないか忘れず確認すること。

犠牲的アーキテクチャの原則は既存システムの機能開発にもあてはめることができる。新機能を作るとき、その機能を一部のユーザだけに公開する。そうやってアイデアの善し悪しについてフィードバックを得る。この方法なら最初は犠牲的な作り方をとれる。全ユーザにデプロイする価値はないとわかったとき、そこに全力を投じなくて済む。

モジュールの交換可能性はマイクロサービシズ・アーキテクチャの主たる強みだが、犠牲的アーキテクチャで使うのには慎重でありたい。マイクロサービシズには分散と非同期性があり、どちらも複雑さを助長する。本当は必要のないマイクロサービスに手を出したプロジェクトを、私はもう二つも見かけた。結果として機能開発の速度を著しく損ねていた。一枚岩が良い犠牲的アーキテクチャになることは多い。後から徐々にコードを引きはがし、マイクロサービスにすればいい。

犠牲的アーキテクチャのコードを書いたチームが、その潮時を決める。これは新しくやってきたチームがそれまでのコードを嫌って書き直す、という話とは違う。自分が書いたのではないコードを嫌うのは簡単だ。文脈なんてわかりはしないのだから。自分が書いたコードをわかった上で生贄に差し出すとき、そこにはまったく違う力が働いている。そして自分が今から書くコードを生贄に捧げると胸に刻むのは、その意義深い変奏なのだ。

###  備考

1: [Jeff Dean 曰く](http://static.googleusercontent.com/media/research.google.com/en//people/jeff/WSDM09-keynote.pdf) "design for ~10X growth, but plan to rewrite before ~100X"


###  謝辞

Randy Shoup との会話がこの記事を書く助けになった。具体的には eBay の歴史 (と同じような Google の逸話) に関する記述で助けられた。Jonny Leroy は会計上の問題を指摘してくれた。Keif Morris, Jason Yip, Mahendra Kariya, Jessica Kerr, Rahul Jain, Andrew Kiellor, Fabio Pereira, Pramod Sadalage, Jen Smith, Charles Haynes, Scott Robinson and Paul Hammant は有意義なコメントを寄せてくれた。
