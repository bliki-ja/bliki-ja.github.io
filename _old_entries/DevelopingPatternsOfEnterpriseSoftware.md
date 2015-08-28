----
以下の文章は、Martin Fowler による [[Developing Patterns of Enterprise Software|http://martinfowler.com/articles/enterprisePatterns.html]] の日本語訳である。
----

''以下は、個人的な調査で集めたエンタープライズ ソフトウェア開発に関するパターンのカタログである。''

最終更新日: 2005/2/19

近年、小粒だが有用なエンタープライズ システム開発パターンが記述されてきている。
このページでは、特筆すべきパターンや、パターンの相互作用などについて述べていく。

各パターンに関するより詳しい情報については、
[[PatternShare|http://patternshare.org/]]を参照するとよいだろう。
ここはマイクロソフト パターン グループにより運営されており、
独自にパターン カタログの体系付けを行っている。

パターン作者を結びつける公式的な組織は存在していない。
しかし、私たちは非公式な関係で結びついている——お互いの作品をレビューしあっているのだ。
何らかのグループを作ったほうがいいんじゃないかと思ったりもするのだが、
なかなか実際の行動に移せずにいる。
パターンを書くってだけで、じゅーぶんハードなんだから！

どのパターンがよいかとか、なぜパターンに興味があるのかというのは、人によって異なる。
私の立場については、[[IEEEソフトウェアのコラム|http://martinfowler.com/ieeeSoftware/patterns.pdf]](PDF)で述べた。

ここにリストアップしたパターンは、
少なくとも私がよく知っているパターンであり、
使っていて気持ちの良いパターンである。
このカタログにすべてのパターンを載せようというつもりはない。

!カタログ

ここは、私が有用だと思うパターンのカタログである。

!![[Patterns of Enterprise Application Architecture|http://martinfowler.com/eaaCatalog/]] 
(Fowler)

{{isbn_image_right('0321127420')}}
{{isbn_image_right('4798105538')}}
レイヤ化されたアーキテクチャという文脈で、エンタープライズ アプリケーション アーキテクチャに焦点をあてている。
主な節は、ドメイン ロジック、Webプレゼンテーション、データベース統合、オフライン コンカレンシー（David Riceによる）、および、分散化である。
データベース統合の節が最も大きく、オブジェクト/リレーショナル マッピングのパターンを多く掲載している。


!![[Core J2EE Patterns|http://www.corej2eepatterns.com/]] 
(Alur, Crupi, and Malks)

{{isbn_image_right('0131422464')}}
{{isbn_image_right('4894714345')}}
Java J2EEプラットフォームに関するエンタープライズ アプリケーション アーキテクチャ パターン。J2EEプラットフォームにフォーカスしているが、他のエンタープライズ アプリケーション プラットフォームにも適用可能（工夫が必要だが）。

!![[Enterprise Integration Patterns|http://www.enterpriseintegrationpatterns.com/]] 
(Hohpe and Woolf)

{{isbn_image_right('0321200683')}}
非同期メッセージングによる統合は、最も効果的なエンタープライズ アプリケーションの統合方法のひとつではないかと思う。EIPには、基本的なパターンが掲載されている。


!![[Microsoft Enterprise Solution Patterns|http://msdn.microsoft.com/architecture/patterns/default.aspx?pull=/library/en-us/dnpatterns/html/esp.asp]] 
(Trowbridge, Mancini, Quick, Hohpe, Newkirk, and Lavigne) 

マイクロソフト初のエンタープライズ ソフトウェア パターン集。
Webプレゼンテーション、デプロイ、分散化システムなど。

!![[Microsoft Data Patterns|http://msdn.microsoft.com/architecture/patterns/default.aspx?pull=/library/en-us/dnpatterns/html/dp.asp]] 
(Teale, Etx, Kiel and Zeitz) 

データ移行（リプリケーション、同期）に関するパターン集。

!![[Microsoft Integration Patterns|http://msdn.microsoft.com/architecture/patterns/default.aspx?pull=/library/en-us/dnpag/html/intpatt.asp]] 
(Trowbridge, Roxburgh, Hohpe, Manolescu and Nadhan) 

マイクロソフトの統合パターン集。統合レイヤに向けての戦略、システム接続のアプローチ、統合の効果など。

!![[Domain Driven Design|http://domainlanguage.com/]] 
(Evans)

{{isbn_image_right('0321125215')}}
オブジェクト指向ドメイン モデルの構築は、ドメイン ロジックを作るためのポピュラーな手法である。これは、複雑なドメインの構築に向いている。欠点は、その作業が非常に複雑なことである。
これらのパターンは、リッチなドメイン モデルの構築をどのように行えばよいかについて記述している。また、モデリング原則の採用を妨げる現実世界の障害の認識、それを克服する方法についても記述している。


!![[Analysis Patterns|http://martinfowler.com/books.html#ap]] 
(Fowler)

{{isbn_image_right('0201895420')}}
{{isbn_image_right('4894716933')}}
多くのドメイン モデルを見ると、何度も登場する「構造」に気付くだろう。
この本では、そういった共通点をパターンという形で記述しようとした。
アップデートが必要な個所も多くあるが、基本的な考えは今でも十分使える。
この教材が有用だと思えば、私のサイトにある新しい副教材にも目を通して欲しい。


!![[Data Model Patterns|http://www.amazon.com/exec/obidos/ASIN/0932633293]] 
(Hay)

{{isbn_image_right('0932633293')}}
データモデルに関する一般的なパターン集。
これらのパターンは非常に概念的なアプローチで開発されているため、
データモデリングのみならず、オブジェクトモデリングにも有用である。

!![[Gang of Four|http://www.amazon.com/exec/obidos/ASIN/0201633612/]] 
(Gamma, Helm, Johnson, and Vlissides)


{{isbn_image_right('0201633612')}}
{{isbn_image_right('4797311126')}}
最初の、そして最も有用な、パターン本。
ここに掲載されているパターンの多くは基本的なものであり、エンタープライズ ソフトウェア開発に限定してはいない。
しかし、多くのエンタープライズ パターンはこれらのパターンを参照している。

!![[POSA|http://www.amazon.com/exec/obidos/ASIN/0471958697]] 
(Buschmann, Meunier, Rohnert, Sommerlad, and Stal)

{{isbn_image_right('0471606952')}}
{{isbn_image_right('4764902834')}}
アーキテクチャ パターンに影響を及ぼしている。
レイヤ（エンタープライズ アプリケーション）とパイプ アンド フィルター（メッセージング）は、多くのエンタープライズ パターンが機能するための基本的なパターンである。

!エンタープライズ ソフトウェアの観点

このカタログは、エンタープライズ ソフトウェア開発の様々な観点をカバーしている。
様々な観点別にカタログ化した、もうひとつのパターン カタログである。

!!エンタープライズ アプリケーション アーキテクチャ

エンタープライズ アプリケーションとは、ある種のソフトウェア システム（多くのビジネスで使われるデータ中心的なソフトウェア システム）のことを指す。
情報を処理あるいは操作するため、情報システムとも呼ばれる（こちらの方がいいかもしれない）。

EAAに関する多くの本は、エンタープライズ アプリケーションを論理的な層に分けることから始める。
このレイヤリング構造は、レイヤ内あるいはレイヤ間の設計の決定につながる。
したがって、レイヤを介したパターンが似てくるのは、何も驚くことではない。
パターン作者は自分のレイヤリング構造を持っている。
しかし、どのレイヤリング戦略も共通点がある。

エンタープライズ アーキテクチャ（Enterprise Architecture）とエンタープライズ アプリケーション アーキテクチャ（Enterprise Application Architecture）を混同しているひとが多く見られる。
二番目の「A」で始まる単語が重要である。
EAAはひとつのアプリケーションの構築についてである。
EnterpriseArchitectureはまったく異なる動物である。

*[[Patterns of Enterprise Application Architecture|http://martinfowler.com/eaaCatalog/]]

テクノロジ独立の観点からEAAを考察している。

*[[Core J2EE Patterns|http://www.corej2eepatterns.com/]]

EAAに焦点をあてた最初の本。J2EEプラットフォームの観点からEAAを考察している。

* [[Microsoft Enterprise Solution Patterns|http://msdn.microsoft.com/architecture/patterns/default.aspx?pull=/library/en-us/dnpatterns/html/dp.asp]]

.NETの観点からEAAを考察している。

!!エンタープライズ インテグレーション

エンタープライズ アプリケーションは、孤独な狼である。
しかし、それを機能させるためには、他のアプリケーションと一緒に動かす必要がある。
ばらばらに開発されたエンタープライズ アプリケーションを縫合すること、これが統合（インテグレーション）の仕事である。
統合を考えて設計されていないアプリケーションを統合しなければならないことがよくあるが、あなたが使っているテクノロジならともかく、あなたが使ったことのないテクノロジを使って統合しなきゃならないことだってある。

* [[Enterprise Integration Patterns|http://www.enterpriseintegrationpatterns.com/]]

メッセージングに関するパターン。
著者（と私）は、メッセージングが最も将来性のある統合手法だと思っている。

* [[Microsoft Integration Patterns|http://msdn.microsoft.com/architecture/patterns/default.aspx?pull=/library/en-us/dnpag/html/intpatt.asp]]

マイクロソフト テクノロジを使った統合戦略

* [[Microsoft Data Patterns|http://msdn.microsoft.com/architecture/patterns/default.aspx?pull=/library/en-us/dnpatterns/html/dp.asp]]

データのリプリケーションおよび同期に関するパターン。
この2つは統合において非常に有用な技術である。

!!ドメイン ロジック

エンタープライズ アプリケーションにおいて、最も重要なもののひとつだが、よく忘れられてしまうのが、ドメイン ロジックである。
ここには、データを処理するビジネス ルール、検証、および計算が含まれており、そのデータを情報システムに入れたり、表示したりする。
例えば、データベース ファイリング システムには、ドメインロジックが少ない。または、まったくない。
多くのシステムには非常に複雑なドメイン ロジックが存在するが、
ビジネスの状況の変化に合わせてロジックは頻繁に変更される。

* [[Patterns of Enterprise Application Architecture|http://martinfowler.com/eaaCatalog/]]

ドメイン ロジックを構築する主なパターンについてまとめている節がある。

* [[Domain Driven Design|http://domainlanguage.com/]]

ドメイン モデルの使用について詳細に書かれている。
最も洗練されたドメイン ロジック パターンと、複雑なロジックにもっとも適したパターンについて。

* [[Analysis Patterns|http://martinfowler.com/books.html#ap]]

ドメイン モデルの例を示したパターン

* [[Data Model Patterns|http://www.amazon.com/exec/obidos/ASIN/0932633293]]

ドメインの例を示したパターン。データモデリング手法を使っている。




!更新履歴
*2005/02/19: 情報を新しくするためにリライト
*2003/10/19: Microsoft data patterns を追加
*2003/01/04: 初出



















----
----

これより以下の文章は、以前掲載されていた文章です。--[[kdmsnr]]

最終更新日：2003年5月

''エンタープライズアプリケーション開発向けパターンコミュニティの高まりと、パターン獲得成果について簡単に述べる。''

パターンとは、ソフトウェア開発において繰り返し発生する「解決策」を記述したものである。これは10年ほど前から存在している。私を含め、多くの人間がこの分野において活動を行ってきた。私たちの狙いは、効果的かつ共有可能な解決策を見つけ、それらを記述し、ソフトウェア開発者たちに広く知ってもらうことにある。

一般的なソフトウェアパターンの問題は、システム全体にきちんと適応できるパターンには限界があるという点だ。そのため、ここ数年間は、「エンタープライズソフトウェア」ドメイン向けのパターンが集中的に作られてきた。

エンタープライズアプリケーションにはいくつかの特徴がある。大規模かつ複雑なデータ、サポートを必要とするユーザーからの数多くの問い合わせ、複雑かつ変則的なビジネスロジック、他のテクノロジーとのインテグレーション。こういったドメイン固有の問題から、繰り返し発生する解決策が生み出されることとなる。

!!未完成のパターン

90年代半ばに最初のパターン本のラッシュ期があった。だがその後、なかなか良いパターンが生まれなかったように思う。特定のドメインに特化できなかったことにも原因がある。現在、パターン記述の「第二の波」がきているのではないだろうか。エンタープライズソフトウェアの世界は、幸運なことに、この波の恩恵を受けることができる。

まず火ぶたをきったのは、Sun社Professional ServicesのDeepak Alur、John Crupi、Dan Malksによる『{{isbn('0130648841','CoreJ2EE Patterns')}}（邦題：{{isbn('4894714345','J2EEパターン—明暗を分ける設計の戦略')}}）』である。
彼らはパターンを作り、J2EEの効果的利用法を示しただけではなく、優れたパターンがいかに効果的かということまで示してくれた。J2EEという特定のプラットフォームと結びついてはいるが、彼らのパターンの多くは他の技術にも同じように適応できる。実際に、他のパターン作成者が彼らのアイデアを別のシチュエーションで使っている。

私も『[[PofEAA|http://martinfowler.com/articles/enterprisePatterns.html]]』という本を出版し、この「第二の波」に乗ることができた。本書の狙いは、技術の枠を越えたパターンの提供にあるが、前述のCoreJ2EEの成果を基にしている。

最近加わったエンタープライズアプリケーションパターンは、マイクロソフトによるものだ。.NET用のアーキテクチャパターンである。これは現在、[[MSDN|http://msdn.microsoft.com/architecture/patterns/]]にて利用可能である。2003年後半にはMicrosoft出版より出版されるだろう。マイクロソフトでは、エンタープライズアプリケーションアーキテクチャ周りのパターンだけでなく、Philip Teale率いるチームによって、データ管理周りのパターンも構築している。彼らはまず最初に[[データムーブメント|http://msdn.microsoft.com/practices/type/Patterns/Data/default.asp]]のパターンをリリースしてくれた。

以上のパターンのことを、私が最初に「エンタープライズアプリケーションアーキテクチャパターン」と名づけた−−アプリケーションをどのように構築するかといったものだ。しかし、エンタープライズアプリケーション開発者たちは、本来統合されるよう設計されていないアプリケーションを複数統合しなくてはならない。
PofEAAでKyle Brownと仕事するなかで、必要とされる重要な分野はメッセージ経由での統合であると気付いた。

この分野の専門家であるGregor HohpeとBobby Woolfを何度となく説得して、彼らの専門知識を記録しておくよう求めた。今のところ、彼らはGregorの[[Webサイト|http://eaipatterns.com/]]で強力なパターンを構築している。2003年の後半にはパターンを出版される予定だ。

複雑なドメインロジックを扱うポイントは、ドメインモデルをキレイに作ることだと経験豊富なOO開発者は知っている。問題は、優れたドメインモデルをつくることは難しい上に、教えるのも難しいという点だ。Eric Evansに数年前に出会い、彼は極めて稀な、優秀なドメインモデラーのブリーダー（育てるひと）であると気付いた。彼はパターン本も記述しており、それらのパターンは彼の[[Webサイト|http://domainlanguage.com/]]上で作られている。2003年中ごろに[[本|http://www.amazon.com/exec/obidos/ASIN/0321125215]]が出版されるだろう。

!!コミュニティをつくる

ここで述べた成果はすべて、みんなとのコラボレーションによって生まれた。
コラボレーションによってアイデアを共有し、成果を成長させていったのだ。

コラボレーション多くは、パターンコミュニティ主催のカンファレンスと合同で行われた。
よくワークショップの形をとり、そこで構想を練った。
このような集まりは、Kyle Brownが立ち上げた2002年のPLoP、2003年初期に行われたChiliPLoPより始まった。
私たちはPLoP 2003で、Randy Stafford（PofEAAの貢献者）とBobby Woolf主催の[[enterprise patterns focus group|http://jerry.cs.uiuc.edu/~plop/plop2003/focus-enterprise.html]]に参加するつもりだ。
もしパターン世界の拡大に興味があるようだったら、
このような会やワークショップに参加してみることをお勧めする。
私もこのWebサイトを通じて情報を提供していくよう努める。

!!!Revision History

メジャーアップデートの記録

May 2003: 

----
* (C)Copyright [[Martin Fowler|http://www.martinfowler.com/]], all rights reserved 
* 翻訳者：[[kdmsnr]]

!comment

{{rcomment}}
