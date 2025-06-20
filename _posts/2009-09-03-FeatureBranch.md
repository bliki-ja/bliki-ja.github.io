---
title: フィーチャブランチ
tags: [version control, continuous integration]
---

https://martinfowler.com/bliki/FeatureBranch.html

gitやMercurialのような分散バージョン管理システム(DVCS)の台頭と共に、ブランチ戦略やマージ戦略をどうするか、そしてそれらをどのように[継続的インテグレーション](https://martinfowler.com/articles/continuousIntegration.html)(CI)に適合させるかという話し合いを数多く見てきた。その中で、特にフィーチャーブランチのプラクティスと、それをCIにどのように適合させるかに関しては、少し議論の混乱があるようだ。

## シンプルな(分離した)フィーチャーブランチ

フィーチャーブランチの基本的な考え方は、フィーチャー(あなたがその言葉を好むのならば[ユーザーストーリー](/UserStory)でも構わない)の作業を開始する際、そのためのブランチをリポジトリ内で分岐させるというものである。DVCSでは、あなた個人のリポジトリでこれを行うが、中央集中型バージョン管理システム(VCS)でも同様の作業を行うことになる。

これを図で説明したいと思う。ある共有のプロジェクトがあり、青色のメインラインと(開発者たちの名前がグリーン牧師とプラム教授なので)緑と紫で色付けされた2名の開発者がいるとしよう。

![](https://martinfowler.com/bliki/images/featureBranch/simple1.png)

ブランチへのローカルコミットを表現するために、ラベルの付いたカラーボックス(例えば、P1とP2)を使用している。ブランチ間の矢印はマージを表し、それらを際立たせるためにオレンジのカラーボックスを用いている。ここでは、メインラインに適用されたいくつかのバグフィックスの更新(B1、B2)があることがわかる(犯人は多分ミセスピーコックだ)。こうした更新が起こった際、開発者たちは自分たちのローカルブランチにそれらの変更をマージする。この図に時間の感覚を持たせるために、私と読者はここで作業を数日眺めており、かつ開発者たちはおよそ1日に1度自分のローカルブランチにコミットすると仮定しよう。

作業内容が正常に動作するように、彼らは自身のブランチ上でビルドとテストを実行している。この記事では、各コミットとマージには自動ビルドと自動テストがもれなくついてきて、コミットやマージをしたブランチ上で行われることを前提にしている。

フィーチャーブランチの利点は、各開発者が自身のフィーチャーに取り組むことができ、自分以外の開発者による変更から分離されるということだ。各開発者は自身のフィーチャーの作業フローを中断せずに、自分のペースでメインラインから変更をプルすることができる。しかも、チームはフィーチャーを選択してリリースすることができる。例えば、グリーン牧師が時間をかけ過ぎたならば、プラム教授の変更だけをリリースすることができる。あるいは、そのフィーチャーが本当にリリースしたい機能なのかどうか確信が持てない場合は、プラム教授のフィーチャーを遅らせることができる。このような場合は、プラム教授にフィーチャーの受入準備が整うまではメインラインに変更をマージしないように伝える。これは“チェリーピック(cherrypicking)”と呼ばれ、チームはリリース前にマージするフィーチャーを決定できる。

この考えは魅力的に見えるが、トラブルが待っている場合もある。

![](https://martinfowler.com/bliki/images/featureBranch/simple2.png)

開発者は分離された状態で自分たちのフィーチャーを開発することができるが、ある時点で自分たちの作業を統合しなければならない。この場合、プラム教授は変更をメインラインに簡単に反映できる。ここではマージ作業は発生しない。なぜなら、彼は既に自分のブランチにメインラインの変更を反映しているからだ(ビルドもしているだろう)。しかしながら、グリーン牧師にとって物事はそう単純ではない。彼は自分の全ての変更(G16)とプラム教授の行った全ての変更(P15)をマージする必要がある。

(この時点でDVCSユーザの多くは、私がフィーチャーブランチの見方を簡単に、恐らく過度に単純化したせいで、何かを見逃していると感じるかもしれない。後でより複雑なスキームを説明しよう。)

これは恐ろしいマージなので、大きなボックスで示した。開発者たちがコードベース中で相互作用のない完全に別々の部分に取り組んでいる場合、マージは順調に進み、問題はないだろう。しかし、ここの lye dragons（★） のケースでは、彼らは相互に作用する部分に取り組んでいるかもしれない。

竜たちは様々な形態で現れ得る。
そして、ツールがその''何匹かは''倒すのを手助けしてくれるだろう。
竜の大部分は、ソースコードをマージして、開発者たちが同じファイルを編集したことで発生するコンフリクトへの対処の難しさである。
現代のDVCSはこの問題にうまく対応してくれる。まるで魔法のようでもある。
Gitは複雑なマージの対応に非常に高い評価を得ている。
テキストのマージの問題は、かつてより遥かに良くなっている——実際、私はこの記事を書くにあたって、テキストのコンフリクトの問題を割り引いて考えているほどだ。

私が心配している問題は、[意味的衝突](/SemanticConflict)である。簡単な例は、プラム教授がグリーン牧師のコードが呼び出しているメソッドの名前を変更する場合だ。リファクタリングツールは安全にメソッドの名前を変更してくれるが、それはあなたのコード上においてのみである。だから、G16にfooメソッドを呼ぶコードが含まれていても、プラム教授はfooがないということを伝えることができない。大きなマージの際に初めて気づくことになる。

関数名の変更は意味的衝突の比較的明白なケースである。それ以外のケースは実際のところ遥かに捕らえ難い。テストはそれらを発見する鍵となるが、テストコードもマージすることでコンフリクトを発生させる可能性があり、問題を解決するのをより難しくさせる。それこそがコンフリクトのリスクであり、特に意味的衝突は大きなマージを恐ろしいものにするのだ。

大きなマージのこの恐怖はまた、リファクタリングへの抑止力として機能する。コードをクリーンな状態に保つことは絶え間ない努力である。上手にそれをするためには、どこであろうとも常に粗悪なコードが組み込まれない様に眼を光らせている必要がある。しかしながら、フィーチャーブランチ上のこの種のリファクタリングは“巨大な恐ろしいマージ”をより悪くするので、躊躇しがちになる。結果として、フィーチャーブランチを使用するチームはリファクタリングすることに尻込みし、コードベースが醜くなることを招く。

確かに、私はこれをフィーチャーブランチが良くないアイデアである決定的な理由であると見做している。かつて、チームは自分たちのコードをクリーンな状態に保つためのリファクタリングが、終わりの見えない悪循環を生むことを恐れていた。

## 継続的インテグレーション

これらの問題を解決するよう設計されたのが、継続的インテグレーションだ。継続的インテグレーションを行うとダイアグラムは次の様になる。

![](https://martinfowler.com/bliki/images/featureBranch/continuous.png)

こちらでは先程よりもマージが沢山あるが、遠い間隔で大きなマージをするよりも頻繁に小さなマージをすることで、それぞれのマージは遥かに簡単になっている。その結果、グリーン牧師が依存しているなんらかのコードをプラム教授が変更しても、例えばグリーン牧師は P12 でマージする際に早期に発見できるようになる。この時点なら、グリーン牧師は G16 ではなく G12 を、受け取った変更に合うよう修正するだけで済む。

CIは大きなマージの問題を取り除くのに有効だが、それはまた、極めて重要なコミュニケーションメカニズムでもある。このシナリオでは、プラム教授が G1 をマージし、グリーン牧師が積極的にプラム教授のライブラリを使って構築していることにプラム教授が気がついた時、潜在的なコンフリクトが実際に現れる。この時点で、プラム教授はグリーン牧師の元に向かい、彼らの2つのフィーチャーがどう相互作用するかについて議論することが出来る。もしかしたらプラム教授のフィーチャーはグリーン牧師の変更とかみ合わない幾つかの変更を必要としているかもしれない。それら両方のフィーチャーを見ることによって、彼らは双方の作業の流れに影響するもっと良いデザインを考え出すことが出来る。分離したフィーチャーブランチで作業をする開発者たちは後になってから、おそらく手遅れになるまで、これを見つけることが出来ない。コミュニケーションはソフトウェア開発における重要な要因の1つであり、CIの最も重要な機能の1つは人間のコミュニケーションを円滑にすることである。

重要なので明記しておくと、大体の場合、この様なフィーチャーブランチはCIとは異なるアプローチである。CIの原則の1つは誰もが毎日メインラインにコミットすることである。なので、フィーチャーブランチが1日以上続かないという場合を除いたら、フィーチャーブランチの施行はCIとは全く異なるものになる。私はかつて、全てのブランチの毎回のコミットに対して(おそらくCIサーバを使用して)ビルドを実行しているので、これはCIをしているんだと言うのを聞いたことがある。それは継続的ビルドであり、望ましいことではあるが、''インテグレーション''が全くないので、それはCIではない。

## 無差別なインテグレーション

私は上の方で、フィーチャーブランチを行う他の方法があると言った。プラム教授とグリーン牧師は早いサイクルで一緒に紅茶を飲むとしよう。雑談をしている間、彼らは相互作用するフィーチャーに取り組んでいるのを発見する。この時点で、彼らは以下の様に統合することを選択することも出来る。

![](https://martinfowler.com/bliki/images/featureBranch/promiscuous.png)

このアプローチでは彼らは最初の例と同じく、一番最後にだけメインラインにプッシュする。しかし、彼らはお互いに頻繁にマージするので、これは“巨大な恐ろしいマージ”を避けることが出来る。つまり、私が言いたいのは、分離したフィーチャーブランチというスキームの主要な問題は、その分離にあるということだ。あなたがフィーチャーブランチを分離する時、気づかないうちに成長している厄介なコンフリクトというリスクが存在している。そして、分離なんてものは幻想に過ぎず、遅かれ早かれ痛々しく打ち砕かれることになる。

これはCIのよりアドホックなインテグレーションの一形態なのだろうか、それとも全く異なる種族だろうか？　私は別の種族であると考えている。もう一度言うと、CIの重要なポイントは誰もが日々メインラインに統合するということだ。フィーチャーブランチ同士に渡る統合は無差別なインテグレーション(Promiscuous Integration、PI)と呼んでおり、メインラインは関わりがなく、必要としてさえいない。私はこの違いが重要であると考えている。

> 私はCIを、主として各コミット毎にリリース候補版を生み出すものであると見做している。CIシステムとデプロイプロセスの役割はリリース候補版を本番のように配置し、その誤りを立証することである。このモデルは、全体像の最新の状態が共有されているなんらかのメインラインを持つ必要性に依存している。
> ――デイブ・ファーリー(Dave Farley)

## 無差別なインテグレーション vs 継続的インテグレーション

では2つは違うものだとしたら、PIはCIより良いのだろうか？　あるいはより現実的に、どのような状況ではPIはCIよりも良いのだろうか？

CIを行うと、あなたはVCSを使って“チェリーピック”を行う能力を失う。全ての開発者はメインラインに触れているので、全てのフィーチャーがメインライン上で成長していく。CIを行うと、メインラインは常に健全なので、理論的には(多くの場合、実際的には)あなたはどんなコミットの後でも安全にリリースすることが出来る。生焼けのフィーチャーやまだリリースしたくないフィーチャーを抱えていてもソフトウェアの他の機能性に損傷を与えることはないが、それがユーザインターフェースに表示されたくないならば、なんらかの隠蔽が必要であるかもしれない。これはUI(ユーザインターフェース)にフィーチャーのトリガとなるメニュー項目を含めないのと同じ位簡単にできるはずだ。

PIはここに幾つかの妥協点を提供することが出来る。それはグリーン牧師がプラム教授の変更をいつ取り込むかという選択をさせてくれることだ。プラム教授がP2で幾つかのAPIのコアへ変更を行う場合、グリーン牧師はP12をインポートすることが出来るが、プラム教授のフィーチャーがリリースされるまで他の部分の取り込みはしないでおくことができる。

この取捨選択の心配事の一つは、PIによって誰のブランチに何があるのかを追跡することがとても難しくなってしまうことだ。実際には、ツールがこの問題を殆ど解決する様に思える。DVCSは変更とその起源に関する経過を明確に追え、プラム教授がG3をプルする際に彼が既にG2をプルしており、B2をプルしていないことを把握することも出来る。手で描くダイアグラムではミスが起こりうるが、ツールはこれらの事柄の経過をうまく追っている。

しかしながら、全体的に見ると私はVCS上で“チェリーピック”をすることを良いアイデアとは思わない。

> フィーチャーブランチは貧者のためのモジュールアーキテクチャである。実行時／デプロイ時にフィーチャーを付けたり外したりが簡単にできるビルドシステムを用いる代わりに、彼らは手動のマージを通じて自身のソース管理にこの仕組みを持たせようとする。
> ――ダン・ボダート(Dan Bodart)

私は設定を変更することでフィーチャーを容易に有効化、または無効化するようソフトウェアを設計するのを非常に好む。こういうことをするなら、フィーチャートグル(FeatureToggles)と抽象化ブランチ(BranchByAbstraction)という2つの有用なテクニックがある。これらの実行には何をモジュール化するのかという事と、それのバリエーションをどうコントロールするかを考えに入れる必要がある。だが、VCS頼りになることはあまり厄介ではないという結果がわかった。

PIについて私が気になる主なものは人とのコミュニケーションへの影響だ。CIではメインラインはコミュニケーションの接点の役割を果たす。プラム教授とグリーン牧師が何も話さなくても、彼らは発生しようとしているコンフリクトを、それが形成された日の内に発見するだろう。PIでは彼らは相互作用のあるコードに取り組んでいることに自ら気づかなければならない。最新のメインラインはまた、他の皆の作業と統合できていることを確信させるのを容易にし、他の誰が何をしているのか理解するために探しまわる必要がない——そのため、後々の統合まで変更が隠されたままでいる可能性がとても少なくなる。

PIはオープンソースから生じた。そして、オープンソースのそれ程強くないテンポがこの要因であるかもしれない。一方、フルタイムの仕事ではあなたは1日の内、数時間プロジェクトに取り組むことになる。この場合、優先順位に従って必要なフィーチャーを実装する方がより容易になる。オープンソースプロジェクトに携わる人々はしばしば1時間だけ費やし、そして数日後に次の1時間を費やすといったことをしている。フィーチャーを完成するまでにかなり時間がかかる開発者がいるかもしれないし、時間のある他の開発者たちはもっと早くフィーチャーをリリース可能な状態にできるかもしれない。この様な状況では、“チェリーピック”はより重要になることがある。

あなたが使用するツールは、インテグレーション戦略からたいていは独立していると認識することは重要だ。多くの人々がフィーチャーブランチとDVCSを関連付けるが、それは彼らがCIと共に使用するからだ。必要な作業は、リポジトリ中のあるブランチに、これがメインラインであるとしてマークを付けるだけである。皆がそこに毎日プルとプッシュしたなら、あなたはCIのメインラインを所持していることになる。確かに規律のあるチームでは、私は通常CIプロジェクトで中央集中型のものよりDVCSを使用することを好む。規律のあまりないチームでは、DVCSがブランチを長期間野放しにさせるのではと不安になり、不本意ながら中央集中型VCSを使ってチームに対してブランチを頻繁にメインラインにコミットさせるよう仕向ける。ポール・ハーマント(Paul Hammant)は正しいかもしれない：「やっぱりチームが分散型に移行する前に、トランクベースの開発に熟練してはならないってことなんだろうか。」

----

* 20110815 (月) 16:10:04 ooharak : ★の部分は多分Fowler氏がlieと誤ったんだと思います。つまり「ここに龍が寝ているのだ。」この表現出典知らないのですがケントベックのXP本にも出てました
* 20110815 (月) 16:12:22 ooharak : 推測ですが、文脈的には地雷を踏むみたいな意味のようですね。
