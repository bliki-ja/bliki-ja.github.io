---
title: 設計＝スタミナ仮説
tags: [productivity, technical debt, process theory, evolutionary design, clean code, software craftsmanship]
---

https://martinfowler.com/bliki/DesignStaminaHypothesis.html

> ソフトウェアをきちんと設計するのは、その労力に見合うことなのか？

「ソフトウェアをきちんと設計することって、そんなに大切なことなの？」という問題について、遠回しなやりとりをすることが時々ある。
あえて「遠回しなやりとり」と言ったのは、はっきりと「ソフトウェアの設計なんて無意味だ」と言う人を見たことがないからだ。
そういう考えの人は、たいていこんな言い回しをする。
「立ち止まっている暇なんてない。とにかく前に進まないと来年の目標を達成できないんだ。
だから、≪設計に関する何かの作業≫は省略するよ」

そこにあるのは、設計と素早い開発の間には何らかのトレードオフがあるという思い込みだ。
実際、「設計に時間を掛けると開発の速度は落ちるけど、プログラマーはそれを補って余りあるだけのメリットを得られる」的な物言いにも何度か遭遇したことがある。

もし設計に力を入れたせいでプログラミングの効率が落ちるなどと言うことがあり得るのなら、私はきっと設計なんかしないだろう。
大半の開発者もそれに同意してくれるはずだ。
良い設計とは何ぞやと問われたらそれぞれ違う答えを返すだろうが、皆それぞれ何かしら、お気に入りの「良い設計」がある。
そうすれば生産性が向上すると信じているからだ
（ここでいう「設計」には、事前に行う設計も含むし、アジャイル開発の文脈での設計も含む。つまり、
[計画的設計と進化的設計](http://objectclub.jp/community/XP-jp/xp_relate/isdesigndead#n71)
の両方の意味での設計だ）。

設計に関する作業には時間も労力もかかる。それは間違いない。でも、それだけの価値はある。
将来そのソフトウェアを成長させるのが楽になるからだ。設計をサボったら、短期的には時間の節約になるだろう。
でも、そのぶんだけ[技術的負債](/TechnicalDebt)はかさみ、後々の生産性を落としてしまう。
ソフトウェアの設計に力を入れると、あなたのプロジェクトのスタミナが向上するのだ。
成長する速度も上がり、長生きできるようになる。

その様子を図示してみたのが、この疑似グラフだ。

![設計スタミナグラフ](https://martinfowler.com/bliki/images/designStaminaGraph.gif)

この疑似グラフは、納品された機能（の累積）と時間との関係を、二種類のありがちなプロジェクトについてプロットしたものだ。
一方のプロジェクトはきちんと設計をしたもの、もう一方のプロジェクトは設計を軽視したものになる。
設計を軽視したほうのプロジェクトでは、設計に関する労力を一切費やしていない。計画的設計と進化的設計の両方の意味でだ。
そのため、開始当初はこちらのプロジェクトのほうが多くの機能を納品している。

設計を軽視したプロジェクトの問題は、設計を軽視したが故に、
コードベースがだんだん劣化して変更しづらくなるということだ。
その結果、生産性も下がる。というのが、グラフの勾配にあらわれている。
きちんと設計をすれば生産性もきちんと維持できるので、ある時点（設計損益ライン）
に達すると、設計を軽視したプロジェクトよりも累積の納品量が上回るようになる。
そしてその後は、ずっと上回ったままだ。

これはあくまでも仮説に過ぎない。推測に基づくものだし、実際にそうなるという客観的な証拠もない。
科学的に言うと、厳密には仮説としてもあまりよろしくない。というのも、検証するのが難しいからだ。
[生産性は計測不能](/CannotMeasureProductivity)
だし、設計の品質もまた計測不能だ。

ただ、仮説に過ぎないとは言え、大半の人にとっては「そのとおり」と納得できるものだ。
もちろん私もそう思っている。客観的に証明することは不可能かもしれない。
でも、多くの人は、この仮説が現状をうまく表していると感じている。
ソフトウェアの設計に関する書籍を書き続けてきたこれまでの私の実績が、この仮説を実証しているのではないだろうか。
もし設計が生産性の改善に何も寄与しないのだとしたら、私の著書の大半はまったくの役立たずだと言うことになる。

多くの人にとって、仮説を公理と見なすのは奇妙に思えることだろう。
でも、実際によくあることだ。
何かの仮説が真であるという判断を下すときに、客観的な観点でのその仮説の弱点を無視しているわけではない。
私は何かを証明するのも好きだけれども、それと同程度には何かを反証するのも好きだ。

この仮説から、こんな系を導ける。設計損益ラインに由来するものだ。
最初のリリースに含まれるある機能が仮にこの線より下にあるとすると、
設計を軽視してでも開発速度を追い求めた方がいい*かもしれない*。
でも、もしこの線より上にあるのなら、そんなトレードオフはまやかしだ。
納品予定の機能が設計損益ラインを上回る場合は、設計を無視すれば、必ず納期は遅れる。
これを技術的負債の用語で言い換えると、融資を受けたのにその元金をずっと使わずにいる状態に等しい。
ある一定の時期を過ぎてから使い始めると、支払う利息が増えてしまう。

ここで気になるのが、じゃあ実際のところ、設計損益ラインはどのあたりにあるのかということだ。
設計＝スタミナ説に賛同してくれる人たちの間でも、この件については大きな見解の相違がある。
私は個人的に、一般に言われているよりもずっと低い位置にあると思っている。数ヶ月ではなく、数週間というあたりだ。
しかし、これはあくまでも個人的見解だ。

ここから、技術的負債に関する結論が導ける。
技術的負債というたとえは絶妙なものなので、私はよく使っている。
でも、設計損益ラインを考えるとわかるように、技術的負債を抱える価値があるのはある特定の時点までだ。
もたらす価値が支払う利息を上回るかどうかを検討しなければいけないのはもちろんだが、
それだけではなく、そもそももたらす価値が設計損益ラインを上回るのかどうかも判断する必要がある。

