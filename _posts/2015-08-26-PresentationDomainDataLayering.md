---
title: プレゼンテーションドメインデータレイヤリング
tags: [team organization, database, encapsulation, application architecture, web development]
---

<!-- One of the most common ways to modularize an information-rich program 
 !-- is to separate it into three broad layers: presentation (UI), domain logic (aka business logic), and data access.  -->
<!-- So you often see web applications divided into a web layer 
 !-- 	that knows about handling HTTP requests and rendering HTML, 
 !-- 	a business logic layer that contains validations and calculations, 
 !-- 	and a data access layer that sorts out how to manage persistent data in a database or remote services. -->

情報がリッチなプログラムをモジュール化する一般的な方法は、大きく3つのレイヤーに分割することです。
その3つとは、プレゼンテーション（UI）、ドメインロジック（ビジネスロジック）、データアクセスです。
ウェブアプリケーションであれば、HTTPリクエストをハンドリングしてHTMLをレンダリングするウェブレイヤー、バリデーションや計算が含まれるビジネスロジックレイヤー、データをデータベースやリモートサービスに永続化する方法を管理するデータアクセスレイヤーに分けられます。


![](https://martinfowler.com/bliki/images/presentationDomainDataLayering/all_basic.png)


<!-- On the whole 
 !-- 	I've found this to be an effective form of modularization for many applications 
 !-- 	and one that I regularly use and encourage.  -->
<!-- It's biggest advantage (for me) is 
 !-- 	that it allows me to reduce the scope of my attention
 !-- 	by allowing me to think about the three topics relatively independently.  -->
<!-- When I'm working on domain logic code I can mostly ignore the UI 
 !-- 	and treat any interaction with data sources 
 !-- 	as an abstract set of functions 
 !-- 		that give me the data I need and update it as I wish. -->
<!-- When I'm working on the data access layer 
 !-- 	I focus on the details of wrangling the data into the form required by my interface.  -->
<!-- When I'm working on the presentation I can focus on the UI behavior, 
 !-- 	treating any data to display or update as magically appearing by function calls.  -->
<!-- By separating these elements I narrow the scope of my thinking in each piece, 
 !-- 	which makes it easier for me to follow what I need to do. -->

これは多くのアプリケーションに使えるモジュール化の形式です。
また、私が定期的に使用したり推奨したりするものです。
（私にとっての）最大の利点は、**意識のスコープを狭められる**ところです。3つのトピックを比較的独立して考えることができるからです。
ドメインロジックのコードに取り組んでいるときは、UIをほぼ無視したり、データソースを必要なデータをくれる、あるいは必要に応じてデータを更新してくれる抽象的な関数のセットとして扱ったりすることができます。
データアクセスレイヤーに取り組んでいるときは、インターフェイスで必要な形式になるようにデータを扱うことに集中できます。
プレゼンテーションに取り組んでいるときは、UIの振る舞いに集中しながら、関数の呼び出しに合わせて魔法のようにデータを表示・更新できます。
これらの要素に分割することで、思考のスコープを狭くなり、やるべきことに集中しやすくなります。

<!-- This narrowing of scope doesn't imply any sequence to programming them  -->
<!-- - I usually find I need to iterate between the layers.  -->
<!-- I might build the data and domain layers off my initial understanding of the UX, but when refining the UX I need to change the domain which necessitates a change to the data layer. -->
<!-- But even with that kind of cross-layer iteration, 
 !-- I find it easier to focus on one layer at a time as I make changes.  -->
<!-- It's similar to the switching of thinking modes you get with refactoring's two hats. -->

スコープが狭くなるというのは、プログラミングの順番を意味するものではありません。
通常、レイヤー間で何度も行き来する必要があります。
たとえば、UXの理解とは関係なく、データやドメインのレイヤーを構築することがありますが、UXを改良するときは、ドメインを変更する必要がありますし、それによってデータレイヤーも変更する必要があります。
ただし、レイヤー間を何度も行き来するとしても、変更を加えるときにはひとつのレイヤーに集中するほうが簡単です。
[リファクタリングの2つの帽子](https://martinfowler.com/articles/workflowsOfRefactoring/#2hats)を使った思考モードの切り替えとよく似ています。

<!-- Another reason to modularize is  -->
<!-- to allow me to substitute different implementations of modules.  -->
<!-- This separation allows me to build multiple presentations on top of the same domain logic
 !-- 	without duplicating it.  -->
<!-- Multiple presentations could be separate pages in a web app, 
 !-- 	having a web app plus mobile native apps, 
 !-- 	an API for scripting purposes, 
 !-- 	or even an old fashioned command line interface.  -->
<!-- Modularizing the data source allows me
 !-- 	to cope gracefully with a change in database technology, 
 !-- 	or to support services for persistence that may change with little notice.  -->
<!-- However I have to mention that while I often hear about data access substitution being a driver for separating the data source layer, 
 !-- 	I rarely hear of someone actually doing it. -->

モジュール化をするもうひとつの理由は、モジュールの**実装の置き換えが可能になる**ことです。
モジュールを分割することで、ドメインロジックを複製することなく、複数のプレゼンテーションを構築できます。
複数のプレゼンテーションとは、ウェブアプリの別のページ、ウェブアプリとモバイルネイティブアプリ、スクリプト作成用のAPI、古のコマンドラインインターフェイスなどです。
データソースをモジュール化すれば、データベース技術の変更に対応したり、予告なしに変更される永続化サービスをサポートしたりすることが可能です。
ただし、データアクセスが代替可能になることがデータソースレイヤーを分離する原動力だという話はよく耳にしますが、実際にそれをやっている人は知りません。

<!-- Modularity also supports testability, which naturally appeals to me as a big fan of SelfTestingCode.  -->
<!-- Module boundaries expose seams that are good affordance for testing. UI code is often tricky to test, so it's good to get as much logic as you can into a domain layer 
 !-- 	which is easily tested without having to do gymnastics to access the program through a UI [1]. 
 !-- Data access is often slow and awkward, 
 !-- so using TestDoubles around the data layer often makes 
 !-- 	domain logic testing much easier and responsive. -->

モジュール化によって、テスト容易性がサポートされます。
[自己テストコード](/SelfTestingCode)の大ファンである私にとっては非常に魅力的です。
モジュールの境界は、**テストのつなぎ目**になります。
UIのコードはテストが難しいので、テストしやすくするためにロジックはできるだけドメインレイヤーに入れましょう。
そうすれば、技巧を凝らしてUI経由でプログラムにアクセスしてテストする必要がありません[^1]。
データアクセスは遅くて扱いにくいため、データレイヤーに[テストダブル](/TestDouble)を使うことで、ドメインロジックのテストが簡単で高速になります。


<!-- While substitutability and testability are certainly benefits of this layering, I must stress that even without either of these reasons 
 !-- 	I would still divide into layers like this.  -->
<!-- The reduced scope of attention reason is sufficient on its own. -->

こうした代替可能性やテスト可能性もレイヤー化の魅力ではありますが、これらがなくてもレイヤーに分割すべきであることを強調しておきたいと思います。
意識のスコープを狭めることができるだけで、レイヤー化をする十分な理由になるのです。

<!-- When talking about this we can either look at it as one pattern (presentation-domain-data) or split it into two patterns (presentation-domain, and domain-data). Both points of view are useful - I think of presentation-domain-data as a composite of presentation-domain and domain-data. -->

プレゼンテーション・ドメイン・データは、1つのパターン（プレゼンテーション・ドメイン・データ）もしくは2つのパターン（プレゼンテーション・ドメインとドメイン・データ）として扱うことができます。
どちらの見方も有益です。
ちなみに私は、プレゼンテーション・ドメインとドメイン・データであると考えています。

<!-- I consider these layers to be a form of module,  -->
<!-- which is a generic word I use for how we clump our software 
 !-- into relatively independent pieces. -->
<!-- Exactly how this corresponds to code depends on the programming environment we're in.  -->
<!-- Usually the lowest level is some form of subroutine or function.  -->
<!-- An object-oriented language will have a notion of class that collects functions and data structure.  -->
<!-- Most languages have some form of higher level called packages or namespaces,
 !-- which often can be formed into a hierarchy.  -->
<!-- Modules may correspond to separately deployable units: 
 !-- 	libraries, or services, but they don't have to. -->
私はこれらのレイヤーをモジュールの一種であると考えています。
モジュールはソフトウェアを比較的独立した部分にまとめる一般的な言葉です。
これがコードにどのように対応するかは、使用しているプログラミング環境によって違います。
通常、最下位のレベルは何らかのサブルーチンや関数になります。
オブジェクト指向言語には、関数とデータ構造をまとめるクラスの概念があります。
ほとんどの言語には、階層構造が作れるパッケージまたは名前空間と呼ばれる上位のレベルがあります。
モジュールは、デプロイ可能な単位（ライブラリやサービス）に対応することもありますが、必ずしもそうである必要はありません。


<!-- Layering can occur at any of these levels.  -->
<!-- A small program may just put separate functions for the layers into different files. 
 !-- A larger system may have layers corresponding to namespaces with many classes in each. -->

レイヤー化はこれらのどのレベルでも発生します。
小規模なプログラムでは、レイヤーに含まれる関数を別々のファイルに入れるだけかもしれません。
大規模なシステムでは、複数のクラスが含まれる名前空間に対応したレイヤーを作ることもあるでしょう。

<!-- I've mentioned three layers here, but it's common to see architectures with more than three layers. 
 !-- A common variation is to put a service layer between the domain and presentation,  -->
<!-- or to split the presentation layer into separate layers with something 
 !-- like Presentation Model.  -->
<!-- I don't find that more layers breaks the essential pattern, 
 !-- 	since the core separations still remain. -->
ここでは3つのレイヤーを説明しましたが、3つより多いレイヤーを持つアーキテクチャもあります。
よくあるのが、ドメインとプレゼンテーションの間にサービスレイヤーを入れたものです。
あるいは、プレゼンテーションレイヤーを[プレゼンテーションモデル](https://martinfowler.com/eaaDev/PresentationModel.html)などで分割したものもあります。
レイヤーを追加しても、中心となる分割が維持されるのであれば、基本的なパターンが壊れることはありません。

![](https://martinfowler.com/bliki/images/presentationDomainDataLayering/all_more.png)

```
レイヤーの数が多いアーキテクチャも、
基本的なドメイン・データパターンに従っている
```

<!-- The dependencies generally run from top to bottom through the layer stack: 
 !-- 	presentation depends on the domain, which then depends on the data source.  -->
<!-- A common variation is to arrange things 
 !-- 	so that the domain does not depend on its data sources 
 !-- 	by introducing a mapper between the domain and data source layers. This approach is often referred to as a Hexagonal Architecture. -->

依存関係は上から下に向かいます。
つまり、プレゼンテーションがドメインに依存し、ドメインがデータソースに依存します。
一般的には、ドメインがデータソースに依存しないように、間に[マッパー](/pofeaa/Mapper/)を導入します。
このアプローチは「[ヘクサゴナルアーキテクチャ](http://alistair.cockburn.us/Hexagonal+architecture)」と呼ばれます。

<!-- These layers are logical layers not physical tiers. -->
<!-- I can run all three layers on my laptop,  -->
<!-- I can run the presentation and domain model in a desktop with a database on a server,  -->
<!-- I can split the presentation with a rich client in the browser and a 
 !-- 	Backed For Frontend on the server.  -->
<!-- In that case I treat the BFF as a presentation layer 
 !-- 	as it's focused on supporting a particular presentation option. -->
これは物理層ではなく論理レイヤーです。
3つのレイヤーは1台のノートパソコンでも実現できます。
あるいは、デスクトップでプレゼンテーションとドメインモデルを実行して、サーバーでデータベースを実行することもできます。
プレゼンテーションをブラウザのリッチクライアントとサーバーの[Backed For Frontend](https://samnewman.io/patterns/architectural/bff/)に分割することもできます。
なお、BFFは特定のプレゼンテーションをサポートするものなので、プレゼンテーションレイヤーとして扱います。

<!-- Although presentation-domain-data separation is a common approach, 
 !-- it should only be applied at a relatively small granularity.  -->
<!-- As an application grows, each layer can get sufficiently complex on its own 
 !-- 	that you need to modularize further.  -->
<!-- When this happens 
 !-- 	it's usually not best to use presentation-domain-data as the higher level of modules.  -->
<!-- Often frameworks encourage you to have something like 
 !-- 	view-model-data as the top level namespaces;  -->
<!-- that's OK for smaller systems, but once any of these layers gets too big 
 !-- you should split your top level into domain oriented modules which are internally layered. -->
プレゼンテーション・ドメイン・データの分割は一般的なアプローチですが、
比較的小さな粒度で適用する必要があります。
アプリケーションが成長すると、各レイヤーも複雑になるので、さらにモジュール化する必要があります。
このような場合、上位のレベルでプレゼンテーション・ドメイン・データを使用することは最善の方法ではありません。
多くのフレームワークは、トップレベルの名前空間にビュー・モデル・データなどを設定することを推奨しています。小規模なシステムであれば、これで問題ないでしょう。
しかし、レイヤーが大きくなっていくと、トップレベルをドメイン別のモジュール（内部がレイヤー化されたもの）に分割する必要があります。

![](https://martinfowler.com/bliki/images/presentationDomainDataLayering/all_top.png)

```
複雑なアプリケーションでは、トップレベルのモジュールにレイヤーを使用しない...
...代わりに、トップレベルのモジュールをフルスタックにする
```


<!-- One common way I've seen this layering lead organizations astray 
 !-- 	is the AntiPattern of separating development teams by these layers.  -->
<!-- This looks appealing 
 !-- 	because front-end and back-end development require different frameworks (or even languages) 
 !-- 	making it easy for developers 
 !-- 	to specialize in one or the other.  -->
<!-- Putting those people with common skills together 
 !-- supports skill sharing and 
 !-- allows the organization to treat the team
 !-- 	as a provider of a single, well-delineated type of work.  -->
<!-- In the same way, 
 !-- 	putting all the database specialists together fits in with 
 !-- 	the common centralization of databases and schemas.  -->
<!-- But the rich interplay between these layers 
 !-- 	necessitates frequent swapping between them.  -->
<!-- This isn't too hard when you have specialists in the same team 
 !-- 	who can casually collaborate,  -->
<!-- but team boundaries add considerable friction, as well as reducing an individual's motivation to develop the important cross-layer understanding of a system.  -->
<!-- Worse, separating the layers into teams adds distance between developers and users.  -->
<!-- Developers don't have to be full-stack (although that is laudable) but teams should be. -->

レイヤー化で組織が迷走するのは、開発チームをレイヤーに分割するという[アンチパターン](/AntiPattern)です。
フロントエンドとバックエンドでは、使用するフレームワーク（や言語）が違うので、開発者がいずれかに特化できるという意味では、魅力的に思えます。
共通のスキルを持つ人たちを集めると、スキルの共有が可能になり、組織は特定の仕事ができる人たちとして扱うことができます。
同様に、データベースの専門家を集めることは、共通のデータベースやスキーマには適しているでしょう。
しかし、レイヤー間で頻繁にやり取りをするためには、チームを何度も行き来する必要があります。
同じチームに専門家がいて、気軽に話しかけることができるのなら問題ありませんが、チームの境界があると、大きな摩擦が発生するだけでなく、レイヤーを横断するシステムを理解したいという個人のモチベーションが低下します。
さらに悪いことに、レイヤーをチームごとに分割すると、開発者とユーザーの間に距離が生まれます。
開発者はフルスタックである必要はありませんが（フルスタックであれば素晴らしいですが）、チームはフルスタックであるべきです。

<!-- Developers don't have to be full-stack but teams should be. -->
> 開発者はフルスタックである必要はありませんが、チームはフルスタックであるべきです。


<!-- ### Further Reading -->
### さらに詳しく知るために

<!-- I've written about this separation from a number of different angles elsewhere.  -->
<!-- This layering drives the structure of P of EAA 
 !-- 	and chapter 1 of that book talks more about this layering.  -->
<!-- I didn't make this layering a pattern in its own right in that book  -->
<!-- but have toyed with that territory with Separated Presentation and PresentationDomainSeparation. -->

こうした分割については、別のところでさまざまな角度から書いています。
レイヤー化は[PofEAA](https://martinfowler.com/books/eaa.html)本の構成にもなっています。
また、PofEAAの第1章では、これらのレイヤーについて詳しく説明しています。
PofEAAではレイヤー化をパターンにしていませんでしたが、[Separated Presentation](https://martinfowler.com/eaaDev/SeparatedPresentation.html)や[プレゼンテーションとドメインの分離](/PresentationDomainSeparation)などを考えています。

<!-- For more on why presentation-domain-data shouldn't be the highest level modules in a larger system, take a look at the writing and speaking of Simon Brown.  -->
<!-- I also agree with him that software architecture should be embedded in code. -->

大規模なシステムの最上位モジュールをプレゼンテーション・ドメイン・データにすべきではない理由については、[Simon Brown](https://simonbrown.je/)の著書と講演を参照してください。
また、ソフトウェアアーキテクチャをコードに組み込むべきだという彼の意見にも同意します。

<!-- I had a fascinating discussion with my colleague Badri Janakiraman about the nature of hexagonal architectures.  -->
<!-- The context was mostly around applications using Ruby on Rails, but much of the thinking applies to other cases when you may be considering this approach. -->

同僚のBadri Janakiramanとヘキサゴナルアーキテクチャについて[興味深い議論を交わしました](https://martinfowler.com/articles/badri-hexagonal/)。Ruby on Railsを使用したアプリケーションに関するものでしたが、このアプローチを検討している他のケースにも当てはまると思います。

<!-- ## Acknowledgements -->
### 謝辞

<!-- James Lewis, Jeroen Soeters, Marcos Brizeno, Rouan Wilsenach, and Sean Newham discussed drafts of this post with me. -->
James Lewis、Jeroen Soeters、Marcos Brizeno、Rouan Wilsenach、Sean Newhamが、この投稿の草稿について議論してくれました。

<!-- Notes -->
### 脚注

<!-- 1: A PageObject is also an important tool to help testing around UIs. -->
[^1]: [ページオブジェクト](/PageObject)は、UIのテストに役立つ重要なツールでもあります。
