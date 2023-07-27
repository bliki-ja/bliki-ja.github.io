---
title: チームトポロジー
tags: [team organization, enterprise architecture, platforms]
---

<!-- Any large software effort, such as the software estate for a large company, requires a lot of people - and whenever you have a lot of people you have to figure out 
 !-- how to divide them into effective teams.  -->
<!-- Forming Business Capability Centric teams helps software efforts to be responsive to customers’ needs, 
 !-- 	but the range of skills required often overwhelms such teams.  -->
<!-- Team Topologies is a model for describing the organization of software development teams, 
 !-- 	developed by Matthew Skelton and Manuel Pais.  -->
<!-- It defines four forms of teams and three modes of team interactions.  -->
<!-- The model encourages healthy interactions 
 !-- 	that allow business-capability centric teams
 !-- 	to flourish in their task of providing a steady flow of valuable software. -->

大規模なソフトウェア開発、たとえば大企業向けのソフトウェア開発では、多くの人を必要とします。
多くの人が関与するときには、うまくチームに分ける方法を考える必要があります。
[ビジネス機能中心](BusinessCapabilityCentric)のチームを作れば、顧客のニーズに対応したソフトウェア開発ができるでしょう。
しかし、求められるスキルの範囲が膨大になります。
[チームトポロジー](https://www.amazon.com/gp/product/1942788819/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1942788819&linkCode=as2&tag=martinfowlerc-20)とは、ソフトウェア開発チームの組織化を記述するモデルです。
Matthew SkeltonとManuel Paisによって開発されました。
チームトポロジーでは、4つの形態のチームと3つのインタラクションモードが定義されています。
ビジネス機能中心のチームが価値あるソフトウェアの流れを提供できるように、
健全なインタラクションを促すモデルです。

<!-- The primary kind of team in this framework is the stream-aligned team, 
 !-- 	a Business Capability Centric team that is responsible for software for a single business capability.  -->
<!-- These are long-running teams, thinking of their efforts 
 !-- 	as providing a software product to enhance the business capability. -->

このフレームワークにおける主要なチーム形態は、**ストリームアラインドチーム**です。
ストリームアラインドチームとは、ひとつのビジネス機能のソフトウェアを担当する[ビジネス機能中心](BusinessCapabilityCentric)のチームです。
チームの寿命は長く、自分たちはビジネス機能を強化する[ソフトウェアプロダクト](https://martinfowler.com/articles/products-over-projects.html)を提供すると考えています。

<!-- Each stream-aligned team is full-stack and full-lifecycle: responsible for front-end, back-end, database, business analysis, feature prioritization, UX, testing, deployment, monitoring - the whole enchilada of software development.  -->
<!-- They are Outcome Oriented, focused on business outcomes rather than Activity Oriented teams focused on a function such as business analysis, testing, or databases.  -->
<!-- But they also shouldn't be too large, 
 !-- 	ideally each one is a Two Pizza Team.  -->
<!-- A large organization will have many such teams, 
 !-- 	and while they have different business capabilities to support, 
 !-- they have common needs such as data storage, network communications, and observability. -->

各ストリームアラインドチームは、フルスタックであり、フルライフサイクル（フロントエンド、バックエンド、データベース、ビジネス分析、機能の優先順位付け、UX、テスト、デプロイ、モニタリングといった、ソフトウェア開発全般）を担当します。
ストリームアラインドチームは[アウトカム指向](OutcomeOriented)であり、
[アクティビティ指向](ActivityOriented)のチームのようにビジネス分析、テスト、データベースなどの機能にフォーカスするのではなく、ビジネスの結果にフォーカスします。
規模は大きすぎてはいけません。理想的なのは[2枚のピザチーム](TwoPizzaTeam)です。
大きな組織にはそのようなチームがたくさんあります。
各チームは異なるビジネス機能をサポートしていますが、
すべてに共通するニーズ（データストレージ、ネットワーク通信、オビザーバビリティなど）もあります。

<!-- A small team like this calls for ways to reduce their cognitive load, so they can concentrate on supporting the business needs, not on (for example) data storage issues. -->
<!-- An important part of doing this is to build on a platform
 !-- 	that takes care of these non-focal concerns.  -->
<!-- For many teams a platform can be a widely available third party platform, such as Ruby on Rails for a database-backed web application. -->
<!-- But for many products 
 !-- 	there is no single off-the-shelf platform to use,  -->
<!-- a team is going to have to find and integrate several platforms. In a larger organization they will have to access a range of internal services and follow corporate standards. -->

このような小さなチームは認知的負荷を軽減する方法を求めています。
データストレージの問題よりも、ビジネスニーズのサポートに集中したいからです。
そのために重要となるのは、チームがフォーカスしていない問題を扱うプラットフォームを構築することです。
多くのチームでは、広く利用されているサードパーティのプラットフォームになるでしょう。
たとえば、データベースバックエンドのウェブアプリケーションにRuby on Railsを使うようなことです。
しかし、あらゆるプロダクトから利用できる単一のプラットフォームはありません。
複数のプラットフォームを見つけて、それらを統合する必要があります。
また、大きな組織では社内サービスにアクセスしたり、会社のルールに従ったりする必要もあります。

<!-- This problem can be addressed by building an internal platform for the organization.  -->
<!-- Such a platform can do that integration of third-party services, near-complete platforms, 
 !-- 	and internal services. 
 !-- Team Topologies classifies the team that builds this (unimaginatively-but-wisely) as a platform team. -->

このような問題は社内にプラットフォームを構築することで解決できます。
そうすれば、サードパーティのサービス、ほぼ完璧に近いサービス、社内サービスなどを統合できます。
チームトポロジーでは、こうしたプラットフォームを構築するチームを（何のひねりもないが、わかりやすく）**プラットフォームチーム**と呼んでいます。

<!-- Smaller organizations can work with a single platform team, 
 !-- which produces a thin layer over an externally provided set of products.  -->
<!-- Larger platforms, however, require more people than can be fed with two-pizzas.  -->
<!-- The authors are thus moving to describe a platform grouping of many platform teams. -->

小さな組織であれば、プラットフォームチームはひとつでいいでしょう。
プラットフォームチームは外部から提供されたプロダクトの上に薄いレイヤーを作ります。
しかし、大きなプラットフォームでは、2枚のピザよりも多くの人が必要になるでしょう。
そこで著者たちは、複数のプラットフォームチームをまとめる**プラットフォームグルーピング**を説明する方向に動いています。

<!-- An important characteristic of a platform 
 !-- 	is that it's designed to be used in a mostly self-service fashion.  -->
<!-- The stream-aligned teams are still responsible for the operation of their product, 
 !-- 	and direct their use of the platform 
 !-- 	without expecting an elaborate collaboration with the platform team.  -->
<!-- In the Team Topologies framework, this interaction mode is referred to as X-as-a-Service mode,  -->
<!-- with the platform acting as a service to the stream-aligned teams. -->

プラットフォームの重要な特徴は、
基本的にセルフサービスで使用できるように設計されていることです。
ストリームアラインドチームは、
プラットフォームチームと細かく調整することなくプラットフォームを使用して、
自分たちのプロダクトを担当します。
チームトポロジーのフレームワークでは、
こうしたインタラクションは**X-as-a-Serviceモード**と呼ばれています。
プラットフォームがストリームアラインドチームに対するサービスとして振る舞うのです。

<!-- Platform teams, however, need to build their services 
 !-- 	as products themselves, 
 !-- 	with a deep understanding of their customer's needs.  -->
<!-- This often requires that they use a different interaction mode, one of collaboration mode, 
 !-- 	while they build that service.  -->
<!-- Collaboration mode is a more intensive partnership form of interaction, and should be seen as a temporary approach until the platform is mature enough to move to x-as-a service mode. -->

しかし、プラットフォームチームも顧客のニーズを深く理解して、自分たちのサービスをプロダクトとして構築する必要があります。
そのためには、別のインタラクションモードを使用する必要があります。
**コラボレーションモード**です。
コラボレーションモードとは、より強力なパートナーシップを結ぶインタラクションの形式です。
プラットフォームがX-as-a-Serviceモードに移行するまでの一時的なアプローチです。


<!-- So far, the model doesn't represent anything particularly inventive.  -->
<!-- Breaking organizations down between business-aligned and technology support teams 
 !-- 	is an approach as old as enterprise software.  -->
<!-- In recent years, 
 !-- 	plenty of writers have expressed the importance of making these business capability teams 
 !-- 	be responsible for the full-stack and the full-lifecycle.  -->
<!-- For me, the bright insight of Team Topologies is focusing on the problem 
 !-- 	that 
 !-- 	having business-aligned teams that are full-stack and full-lifecycle 
 !-- 		means that they are often faced with an excessive cognitive load, 
 !-- 			which works against the desire for small, responsive teams. -->
<!-- The key benefit of a platform is that it reduces this cognitive load. -->

今のところ、このモデルは特に新しいものではありません。
ビジネスアラインドチームと技術サポートチームを分けるというアプローチは、
エンタープライズソフトウェアと同じくらい昔からあるものです。
近年、多くの著者が、
ビジネス機能チームはフルスタックであり、
フルライフサイクルを担当すべきということを述べています。
私が考えるチームトポロジーの素晴らしいインサイトは、ある問題にフォーカスしているところです。
その問題とは、フルスタックでフルライフサイクルのビジネスアラインドチームは過剰な認知的負荷に直面することが多く、小規模で反応性の高いチームに対する要望の足かせになっているという問題です。
プラットフォームの主な利点は、この認知的負荷を軽減することです。

<!-- A crucial insight of Team Topologies is that the primary benefit of a platform is to reduce the cognitive load on stream-aligned teams -->



<!-- This insight has profound implications.  -->
<!-- For a start 
 !-- 	it alters how platform teams should think about the platform.  -->
<!-- Reducing client teams' cognitive load  -->
<!-- leads to different design decisions and product roadmap to platforms intended primarily for standardization or cost-reduction.  -->
<!-- Beyond the platform this insight leads Team Topologies to develop their model further by identifying two more kinds of team. -->

このインサイトは深い意味を持ちます。
まず、プラットフォームチームのプラットフォームに対する考え方が変わります。
クライアントチームの認知的負荷を軽減することで、
標準化やコスト削減を主な目的としたプラットフォームの設計決定やプロダクトロードマップが変わります。
このインサイトはプラットフォーム以外にも当てはまります。
このインサイトによって、チームトポロジーはあと2種類のチームを特定し、モデルをさらに発展させました。

<!-- Some capabilities require specialists -->
<!-- who can put considerable time and energy into mastering a topic 
 !-- 	important to many stream-aligned teams.  -->
<!-- A security specialist may spend more time 
 !-- 	studying security issues and interacting with the broader security community 
 !-- 	than would be possible as a member of a stream-aligned team.  -->
<!-- Such people congregate in enabling teams, 
 !-- 	whose role is to grow relevant skills inside other teams 
 !-- 		so that those teams can remain independent and better own and evolve their services. -->
<!-- To achieve this enabling teams 
 !-- 	primarily use the third and final interaction mode 
 !-- 	in Team Topologies.  -->
<!-- Facilitating mode involves a coaching role,  -->
<!-- where the enabling team isn't there to write and ensure conformance to standards,  -->
<!-- but instead to educate and coach their colleagues 
 !-- 	so that the stream-aligned teams become more autonomous. -->

いくつかの機能には、
多くのストリームアラインドチームの重要なトピックについて、
膨大な時間と労力を割くことができる専門家が必要です。
たとえば、セキュリティの専門家は、
ストリームアラインドチームのメンバーよりも、
セキュリティの問題の調査やコミュニティとの交流に多くの時間を使うでしょう。
こうした人たちは**イネイブリングチーム**になります。
他のチームで関連するスキルを高め、そのチームが独立性を維持し、サービスの所有と進化がうまくできるようにするという役割です。
イネイブリングチームを実現するには、最後のインタラクションモードを使います。
**ファシリテーションモード**にはコーチングの役割が含まれます。
イネイブリングチームは標準に準拠していることを確認するために存在しているのではなく、
ストリームアラインドチームが自律的になるように、教育・指導するために存在しているのです。

<!-- Stream-aligned teams are responsible for the whole stream of value for their customers,  -->
<!-- but occasionally we find aspects of a stream-aligned team's work 
 !-- 	that is sufficiently demanding that it needs a dedicated group to focus on it, 
 !-- leading to the fourth and final type of team: complicated-subsystem team.  -->
<!-- The goal of a complicated-subsystem team 
 !-- 	is to reduce the cognitive load of the stream-aligned teams  -->
<!-- that use that complicated subsystem.  -->
<!-- That's a worthwhile division 
 !-- 	even if there's only one client team for that subsystem.  -->
<!-- Mostly complicated-subsystem teams strive to interact with their clients using x-as-a service mode, but will need to use collaboration mode for short periods. -->

ストリームアラインドチームは顧客に対する価値のすべての流れを担当しますが、
専門のグループが必要なほど難しい作業が発生することがあります。
最後のチームにつながります。
**コンプリケイテッド・サブシステムチーム**です。
このチームの目的は、
複雑なサブシステムを使用するストリームアラインドチームの認知的負荷を軽減することです。
サブシステムのクライアントがひとつだけであっても、
コンプリケイテッド・サブシステムチームを作ることは有用です。
コンプリケイテッド・サブシステムチームのクライアントとのインタラクションはX-as-a-Serviceモードですが、短期間はコラボレーションモードを使用する必要があります。


![](https://martinfowler.com/bliki/images/team-topologies/diagram.png)

<!-- Team Topologies includes a set of graphical symbols to illustrate teams and their relationships.  -->
<!-- These shown here are from the current standards, which differ from those used in the book.  -->
<!-- A recent article elaborates on how to use these diagrams. -->

*図：チームトポロジーには、チームとその関係を示すグラフィカルな記号が含まれています。上記の図は[現在の標準](https://github.com/TeamTopologies/Team-Shape-Templates)のものであり、書籍で使用されているものとは異なります。[最近の記事](https://teamtopologies.com/key-concepts-content/team-interaction-modeling-with-team-topologies)では、これらの図の使用方法について詳しく説明されています。*

<!-- Team Topologies is designed explicitly recognizing the influence of Conways Law.  -->
<!-- The team organization that it encourages takes into account 
 !-- 	the interplay between human and software organization.  -->
<!-- Advocates of Team Topologies intend its team structure to shape the future development of the software architecture into responsive and decoupled components aligned to business needs. -->

チームトポロジーは、[コンウェイの法則](ConwaysLaw)の影響を明確に認識して設計されています。
チームトポロジーが奨励するチーム組織は、
人間の組織とソフトウェアの組織の相互作用を考慮に入れています。
チームトポロジーの提唱者は、
チーム構造がソフトウェアアーキテクチャの将来の開発に影響を与え、
ビジネスニーズに合わせた、反応性のある、分離されたコンポーネントを生み出すと考えています。

<!-- George Box neatly quipped: "all models are wrong, some are useful".  -->
<!-- Thus Team Topologies is wrong: complex organizations cannot be simply broken down into just four kinds of teams and three kinds of interactions.  -->
<!-- But constraints like this are what makes a model useful. -->
<!-- Team Topologies is a tool 
 !-- 	that impels people to evolve their organization into a more effective way of operating, 
 !-- one that allows stream-aligned teams to maximize their flow by lightening their cognitive load. -->

George Boxが「すべてはモデルは間違っているが、なかには役に立つものもある」と言っています。
つまり、チームトポロジーは間違っています。
複雑な組織を4種類のチームと3種類のインタラクションに単純に分割することはできません。
しかし、このような制約があるからこそ、このモデルは役に立つのです。
チームトポロジーは、組織を効率的に運営していくためのツールです。
ストリームアラインドチームの認知的負荷を軽減し、流れを最大化できるようにするのです。

<!-- Acknowledgements -->
### 謝辞

<!-- Andrew Thal, Andy Birds, Chris Ford, Deepak Paramasivam, Heiko Gerin, Kief Morris, Matteo Vaccari, Matthew Foster, Pavlo Kerestey, Peter Gillard-Moss, Prashanth Ramakrishnan, and Sandeep Jagtap discussed drafts of this post on our internal mailing list, providing valuable feedback. -->
Andrew Thal、Andy Birds、Chris Ford、Deepak Paramasivam、Heiko Gerin、Kief Morris、Matteo Vaccari、Matthew Foster、Pavlo Kerestey、Peter Gillard-Moss、Prashanth Ramakrishnan、Sandeep Jagtap たちと草稿について社内メーリングリストで議論し、有益なフィードバックをもらいました。

<!-- Matthew Skelton and Manuel Pais kindly provided detailed comments on this post, 
 !-- 	including sharing some of their recent thinking since the book. -->
Matthew Skelton と Manuel Pais は、書籍以降の考え方を共有してくれるなど、詳細なコメントを提供してくれました。

<!-- Further Reading -->
### さらに詳しく知るために

<!-- The best treatment of the Team Topologies framework is the book of the same name, published in 2019.  -->
<!-- The authors also maintain the Team Topologies website and 
 !-- 	provide education and training services.  -->
<!-- Their recent article on team interaction modeling 
 !-- 	is a good intro to how the Team Topologies (meta-)model can be used 
 !-- 	to build and evolve a model of an organization. [1] -->

チームトポロジーのフレームワークについて最も詳しいのは、2019年に出版された同名の[書籍](https://www.amazon.com/gp/product/1942788819/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1942788819&linkCode=as2&tag=martinfowlerc-20)です。
著者たちは[チームトポロジーのウェブサイト](https://teamtopologies.com/)も運営しており、
教育およびトレーニングのサービスを提供しています。
[チームインタラクションモデリング](https://teamtopologies.com/key-concepts-content/team-interaction-modeling-with-team-topologies)に関する最近の記事は、
チームトポロジーの（メタ）モデルを使用して、
組織のモデルを構築・進化させる入門的な内容になっています[1]。

<!-- Much of Team Topologies is based on the notion of Cognitive Load.  -->
<!-- The authors explored cognitive load in Tech Beacon.  -->
<!-- Jo Pearce expanded on how cognitive load may apply to software development. -->

チームトポロジーの多くは、認知的負荷の考えにもとづいています。
著者たちは、TechBeaconで[認知的負荷について調査しました](https://techbeacon.com/app-dev-testing/forget-monoliths-vs-microservices-cognitive-load-what-matters)。
Jo Pearceは、[ソフトウェア開発における認知的負荷](https://12devsofxmas.co.uk/2015/12/day-3-managing-cognitive-load-for-team-learning/)について詳しく説明しています。

<!-- The model in Team Topologies resonates well with much of the thinking on software team organization that I've published on this site. You can find this collected together at the team organization tag. -->

チームトポロジーのモデルは、
私がこのサイトで公開しているソフトウェアチーム組織に関する考えと共通する部分が多くあります。
[team organizationタグ](/#tag_team organization)から読むことができます。

<!-- Notes -->
### 脚注

<!-- 1: To be more strict in my modeling lingo, I would say that Team Topologies usually acts as a meta-model.  -->
<!-- If I use Team Topologies to build a model of an airline's software development organization,  -->
<!-- then that model shows 
 !-- the teams in the airline classified according to Team Topologies's terminology. I would then say that that the Team Topologies model is a meta-model to my airline model. -->

[1] 私のモデリング用語で厳密に言うとすれば、チームトポロジーは**メタモデル**として機能していると言えるでしょう。私がチームトポロジーを使って、航空会社のソフトウェア開発組織のモデルを構築したとすると、チームトポロジーの用語に従って分類された航空会社のチームのモデルが示されます。その場合、チームトポロジーのモデルは、私の航空会社のモデルのメタモデルであると言えます。
