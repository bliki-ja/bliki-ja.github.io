---
title: TodaysLanguageWorkbenches
tags: TAGS
---

""※現在、翻訳中です。しばらくお待ちください。

言語ワークベンチというカテゴリに属するツールについて簡単に述べたいと思います。
今から紹介するツールはすべて、まだ開発初期段階のものです。
言語ワークベンチが大規模ソフトウェア開発に用いられるには、あと数年はかかるでしょう。


### Intentional Software

これらのツールのゴッドファーザーは、Intentional Programmingです。
Intentional Programmingは、Microsoft ResearchのCharles Simonyiによって開発されました。
数年前、SimonyiはMicrosoftを離れ、独立して自分の会社を設立し、[Intentional Software](http://intentsoft.com/)を開発しています。
ベンチャーではよくあることですが、彼は開発をオープンにしていません。
ですから、Intentional Softwareについての情報が不足しており、どのように使用されるかもまだ分かっていません。

私は、わずかな時間ですが、Intentional Softwareと過ごすことがありました。
ThoughtWorksの同僚は、昨年、Intentional社と一緒に仕事をしていましたので、
私は"Intentionalカーテン"の裏側をチラ見することができました。しかし、そこで見たことを今ここで言うわけにはいきません。
でもご安心を。彼らは来年あたりから成果をオープンにしていくようです。

（用語について。Intentionalの連中は、Microsoft時代の古い成果を「Intentional Programming」と呼び、現在開発中のものを「Intentional Software」と呼んでいます。）

### Meta Programming System
[JetBrains](http://jetbrains.com/)が開発した[Meta Programming System](http://www.jetbrains.com/mps)は、Intentional Softwareよりも新しいツールです。
JetBrainsはその優れたIDEツールにより、ソフトウェア開発者の間で名声を得ています。

IDEで得た経験が言語ワークベンチにも色々と反映されています。
まず、IntelliJでの成功によりツール業界で確固たる信頼を獲得しました——技術的側面、実用的側面の両方の面においてです。
また、言語ワークベンチの可能性は、ポストIntelliJ IDEを便利にする機能と密接に結びついています。

JetBrainsは数年かけて洗練されたWebアプリケーション開発環境「Fabrique」を開発しました。
Fabriqueを開発したことにより、こうしたツールをより効率的に開発するためのプラットフォームが将来必要になってくるだろうと確信しました——この思いが、MPSの開発へとつながったのです。

MPSは、Intentional Softwareの公になった部分の影響を強く受けています。
Intentionalよりも開発期間は短いですが、JetBrainsはオープンな開発サイクルを信条としています。
MPSは、使えるところがあれば、すぐにEarly Access Programで公開されてきました。
2005年前半は、このようなスタイルでやっていくようです。

幸運にも私は、MPSのリーダーであるSergey Dmitrievと一緒に働いています。
MPSの開発はJetBrainsのマサチューセッツ オフィスで行われていますので、彼らを訪ねやすいのです。
物理的な距離の近さと、彼らのオープン性のおかげで、MPSを使った[詳細な例](MpsAgree)を書くことができました（先に進むまでまだ理解できなくても大丈夫です。時が来たらまたリンクを張ります）。

### Software Factories

[Software Factories](http://www.softwarefactories.com/)は、MicrosoftのJack GreenfieldとKeith Shortによってリードされています。
Software Factoriesにはいくつかの要素がありますが、ここでは詳細については述べません（名前がダメ過ぎということだけは言っておきましょう）。 
この記事に関係する要素は、DSLです——言語指向プログラミングは、Software Factoriesでは主要な役割を担っています。

Software FactoriesチームはModel Driven Developmentのバックグラウンドを持っています。
チームには、CASEツールの開発で活躍していた人や、イギリスのオブジェクト指向コミュニティを率いていた人たちが含まれています。
ですから、Software FactoriesのDSLがグラフィカルな手法になってしまっても、別に驚くことではありません。
しかし彼らは、多くのCASEツール人間たちとは違い、セマンティクスとコード生成の制御に関心があります。

ここで私は、アプリケーションの伝統的なプログラミングを引き合いに出して述べますが、
Software FactoriesチームはDSLを開発、テスト、文書化などのような自動化できない分野に適用することに関心があります。
また、DSLを直接実行したくない状況（DSLのデプロイメントなど）をシミュレートすることも調査しています。

MicrosoftのDSLチームは数ヶ月前から、Visual Studio 2005 Team Systemの一部として、いくつかを[ダウンロード可能](http://lab.msdn.microsoft.com/teamsystem/workshop/dsltools/default.aspx)にしています。

### モデル駆動アーキテクチャ(MDA)

OMGのMDAを追いかけているのであれば、言語ワークベンチについて私が述べてきたこととMDAのビジョンとの間に多くの共通点があることに気が付いたでしょう。
これは論争を起こす問題ですが、今のところは、MDAの（すべてではありませんが）いくつかのビジョンは、言語ワークベンチであると言っておきましょう。
また、MDAの上に言語ワークベンチを構築するのは、非常に脆いと思っています。
この点についてより詳細に議論するために、[関連した記事](http://www.martinfowler.com/articles/mdaLanguageWorkbench.html)を書きました。
ただし、この記事を最後まで読み終わるまで、よく理解できないかもしれません。
