---
title: コンウェイの法則
tags: [team organization,enterprise architecture,application architecture]
---

<!-- Pretty much all the practitioners I favor in Software Architecture are deeply suspicious of any kind of general law in the field.  -->
<!-- Good software architecture is very context-specific, 
 !-- 	analyzing trade-offs that resolve differently across a wide range of environments.  -->
<!-- But if there is one thing they all agree on, it's the importance and power of Conway's Law.  -->
<!-- Important enough to affect every system I've come across, and powerful enough that you're doomed to defeat if you try to fight it. -->

私が敬愛するソフトウェアアーキテクチャの専門家たちは、この分野のあらゆる一般法則に対して懐疑的です。
優れたソフトウェアアーキテクチャはコンテキストに固有であり、さまざまな環境下で異なる解決をしなければならないトレードオフを分析するものだからです。
とはいえ、彼ら全員が同意するものがひとつだけあります。
それは、コンウェイの法則の重要性とパワーです。
私がこれまでに経験したすべてのシステムに影響を与えるほど重要であり、抗えないほどのパワーがあります。


<!-- The law is probably best stated, by its author, as: [1] -->

この法則を説明するには、作者の言葉がいちばんでしょう[^1]。

<!-- Any organization that designs a system (defined broadly) will produce a design whose structure is a copy of the organization's communication structure.
 !-- -- Melvin Conway -->

> システム（広義に定義）を設計するあらゆる組織は、組織のコミュニケーション構造をコピーした構造を持つ設計を生み出す。<br/>
> ―[メルヴィン・コンウェイ](https://www.melconway.com/Home/Conways_Law.html)

<!-- Conway's Law is essentially the observation 
 !-- that the architectures of software systems look remarkably similar to the organization of the development team that built it.  -->
<!-- It was originally described to me by saying that if a single team writes a compiler, 
 !-- 	it will be a one-pass compiler, but if the team is divided into two, then it will be a two-pass compiler.  -->
<!-- Although we usually discuss it with respect to software, the observation applies broadly to systems in general. [2] -->

コンウェイの法則とは、ソフトウェアシステムのアーキテクチャは開発チームの組織とよく似る、というものです。
元々は、1つのチームでコンパイラーを作るとワンパスのコンパイラーになり、2つのチームでコンパイラーを作るとツーパスのコンパイラーになる、というものでした。
通常はソフトウェアに関するものですが、システム全般に広く適用されます[^2]。

![](https://martinfowler.com/bliki/images/conwaysLaw/card.png)


```
設計者のコミュニケーションのやり方が...
...システムの設計に制約を与える
```

<!-- As my colleague Chris Ford said to me:  -->
<!-- "Conway understood that software coupling 
 !-- 	is enabled and encouraged by human communication."  -->
<!-- If I can talk easily to the author of some code, 
 !-- 	then it is easier for me to build up a rich understanding of that code.  -->
<!-- This makes it easier for my code to interact,
 !-- 	and thus be coupled, to that code.  -->
<!-- Not just in terms of explicit function calls, 
 !-- but also in the implicit shared assumptions and way of thinking about the problem domain. -->
同僚のChris Fordが私に言ったように「ソフトウェアの結合は人間のコミュニケーションによって可能になり、強化されるものであることをコンウェイは理解していました」。
コードの作成者と簡単に話をすることができれば、私はそのコードを深く理解できます。
私のコードはそのコードとやり取りしやすくなり、両者は結合していくでしょう。
結合とは明示的な関数呼び出しのことだけではありません。
暗黙的な共有理解や問題領域に対する考え方なども含まれます。

<!-- We often see how inattention to the law can twist system architectures.  -->
<!-- If an architecture is designed at odds with the development organization's structure, 
 !-- 	then tensions appear in the software structure.  -->
<!-- Module interactions that were designed to be straightforward become complicated, 
 !-- 	because the teams responsible for them don't work together well.  -->
<!-- Beneficial design alternatives aren't even considered 
 !-- 	because the necessary development groups aren't talking to each other. -->
この法則に注意を払っていないと、システムアーキテクチャにねじれが生じます。
アーキテクチャが開発組織の構造と違った形で設計されていると、ソフトウェアの構造に緊張が生まれます。
素直に設計されたモジュールのやり取りが複雑になっていきます。
それらを担当するチームがうまく連携できないからです。
開発グループ同士が話し合わないので、有益な設計の代替案も考慮されません。

<!-- A dozen or two people can have deep and informal communications, so Conways Law indicates they will create a monolith.  -->
<!-- That's fine - so Conway's Law doesn't impact our thinking for smaller teams.  -->
<!-- It's when the humans need organizing that Conway's Law should affect decision making. -->

10〜20人程度であれば、非公式に深くコミュニケーションできます。
コンウェイの法則に従えば、彼らはモノリスを生み出すことになるでしょう。
特に問題はありません。
小規模のチームであれば、コンウェイの法則が考え方に影響を与えることはありません。
コンウェイの法則が意思決定に影響を与えるのは、人間が組織化を必要とするときです。

<!-- The first step in dealing with Conway's Law is know not to fight it.  -->
<!-- I still remember one sharp technical leader,  -->
<!-- who was just made the architect of a large new project that consisted of six teams 
 !-- 	in different cities all over the world.  -->
<!-- “I made my first architectural decision” he told me.  -->
<!-- “There are going to be six major subsystems. I have no idea what they are going to be, 
 !-- but there are going to be six of them.” -->

コンウェイの法則に対応する最初のステップは、抗わないことです。
ある優秀なテクニカルリーダーのことを今でも覚えています。
そのリーダーは、世界中の都市にいる6つのチームで構成された、大規模な新規プロジェクトのアーキテクトに任命されたばかりでした。
彼は私にこう言いました。
「最初のアーキテクチャを決めました。6つの主要なサブシステムにする予定です。それぞれ何になるかはわかりませんが、数は6つになると思います」

<!-- This example recognized the big impact location has on human communication.  -->
<!-- Putting teams on separate floors of the same building is enough 
 !-- 	to significantly reduce communication.  -->
<!-- Putting teams in separate cities, and time zones, further gets in the way of regular conversation.  -->
<!-- The architect recognized this,
 !-- 	and realized that he needed take this into account in his technical design from the beginning.  -->
<!-- Components developed in different time-zones 
 !-- needed to have a well-defined and limited interaction 
 !-- 	because their creators would not be able to talk easily.[3] -->
この例では、場所が人間のコミュニケーションに大きな影響を与えることが認識されています。
同じ建物であってもチームを別々のフロアに配置するだけで、コミュニケーションが大幅に減少します。
異なる都市や別々のタイムゾーンにチームを配置すると、日常的な会話がさらに妨げられます。
このアーキテクトはそのことを認識しており、技術的な設計では最初から考慮しておかなければならないことを理解していました。
異なるタイムゾーンで開発されたコンポーネントは、相互のやり取りを厳密に定義して制限する必要がありました。
作成者同士が簡単に話せなかったからです[^3]。

<!-- A common mismatch with Conways Law is 
 !-- 	where an ActivityOriented team organization 
 !-- 	works at cross-purposes to feature development. 
 !-- Teams organized by software layer (eg front-end, back-end, and database) lead to dominant 
 !-- PresentationDomainDataLayering structures,  -->
<!-- which is problematic because each feature needs close collaboration between the layers.  -->
<!-- Similarly dividing people along the lines of life-cycle activity
 !-- (analysis, design, coding, testing) means lots of hand-offs 
 !-- 	to get a feature from idea to production. -->
コンウェイの法則のよくあるミスマッチは、[アクティビティ指向](/ActivityOriented)のチーム組織がさまざまな目的で機能開発をしている場合です。
ソフトウェアレイヤー（フロントエンド、バックエンド、データベースなど）で組織化されたチームは、[プレゼンテーションドメインデータレイヤリング](/PresentationDomainDataLayering)の構造になります。
これには問題があります。
機能ごとにすべてのレイヤーでコラボレーションが必要になるからです。
同様に、ライフサイクルのアクティビティ（分析、設計、実装、テスト）で組織を分割すると、機能をアイデアから実装するまでに何度も受け渡しが必要になってしまいます。

<!-- Accepting Conway's Law is superior to ignoring it,  -->
<!-- and in the last decade, we've seen a third way to respond to this law.  -->
<!-- Here we deliberately alter the development team's organization structure 
 !-- 	to encourage the desired software architecture, 
 !-- 	an approach referred to as the Inverse Conway Maneuver [4]. 
This approach is often talked about in the world of microservices,  -->
<!-- where advocates advise building small, long-lived BusinessCapabilityCentric teams
 !-- 	that contain all the skills needed to deliver customer value.  -->
<!-- By organizing autonomous teams this way,  -->
<!-- we employ Conway's Law to encourage similarly autonomous services 
 !-- 	that can be enhanced and deployed independently of each other.  -->
<!-- This, indeed, is why I describe microservices as primarily a tool to structure a development organization. -->

コンウェイの法則を受け入れることは無視するよりも優れていますが、この10年間で3番目の方法が見られるようになりました。
開発チームの組織構造を変更して、望ましいソフトウェアアーキテクチャを目指すというものです。
これは**逆コンウェイ作戦**と呼ばれるアプローチです[^4]。
このアプローチは、[マイクロサービス](https://martinfowler.com/articles/microservices.html#OrganizedAroundBusinessCapabilities)の世界でよく話題に上ります。
マイクロサービスの支持者たちは、顧客価値を提供するためのすべてのスキルを持つ、小規模で寿命の長い[ビジネスケイパビリティ中心](/BusinessCapabilityCentric)のチームを作ることを推奨しています。
このような自律的なチームを編成し、コンウェイの法則を利用することで、チームと同様の自律的なサービスを促進するのです。各サービスは独立して改良およびデプロイできます。
私が「マイクロサービスは開発組織の構造を作るためのツールである」と説明するのはそのためです。


|                  | コンウェイの法則に対する反応                                                                                               |
|------------------|----------------------------------------------------------------------------------------------------------------------------|
| 無視する         | コンウェイの法則を考慮に入れていない。聞いたことがないか、当てはまらないと思っているからだ（ナレーター：当てはまります）。 |
| 受け入れる       | コンウェイの法則の影響を認識している。アーキテクチャが設計者のコミュニケーションパターンと衝突しないようにしている。       |
| 逆コンウェイ作戦 | 設計者のコミュニケーションパターンを変更して、望ましいソフトウェアアーキテクチャを促進している。                              |

<!-- Responses to Conway's Law
 !-- Ignore	
 !-- Don't take Conway's Law into account, because you've never heard of it, or you don't think it applies (narrator: it does) -->

<!-- Accept 
 !-- Recognize the impact of Conway's Law, and ensure your architecture doesn't clash with designers' communication patterns. -->

<!-- Inverse Conway Maneuver   
 !-- Change the communication patterns of the designers to encourage the desired software architecture. -->

<!-- While the inverse Conway maneuver is a useful tool, it isn't all-powerful.  -->
<!-- If you have an existing system with a rigid architecture 
 !-- 	that you want to change,  -->
<!-- changing the development organization isn't going to be an instant fix.  -->
<!-- Instead it's more likely to result in a mismatch between developers and code
 !-- 	that adds friction to further enhancement.  -->
<!-- With an existing system like this,  -->
<!-- the point of Conway's Law is that we need to take into account its presence while changing both organization and code base.  -->
<!-- And as usual, I'd recommend taking small steps while being vigilant for feedback. -->

逆コンウェイ作戦は便利なツールですが、万能ではありません。
既存のシステムのアーキテクチャに柔軟性がない場合、それを変更しようとして開発組織を変更しても[即効性はありません](https://verraes.net/2022/05/conways-law-vs-rigid-designs/)。
むしろ開発者とコードにミスマッチが生まれ、変更に摩擦が生じる可能性が高くなります。
このような既存のシステムでは、コンウェイの法則の存在を考慮しながら、組織とコードベースの両方を変更する必要があります。
いつものように、フィードバックに気を配りながら小さなステップで進めることをお勧めします。

<!-- Domain-Driven Design plays a role with Conway's Law 
 !-- 	to help define organization structures, 
 !-- since a key part of DDD is to identify BoundedContexts.  -->
<!-- A key characteristic of a Bounded Context is that it has its own UbiquitousLanguage, defined and understood by the group of people working in that context.  -->
<!-- Such contexts form ways to group people around a subject matter 
 !-- 	that can then align with the flow of value. -->


ドメイン駆動設計（DDD）はコンウェイの法則において重要な役割を果たします。
DDDで重要となるのは[境界づけられたコンテキスト](/BoundedContext)を特定することなので、組織構造の定義を支援します。
境界づけられたコンテキストの特徴は、独自の[ユビキタス言語](/UbiquitousLanguage)を持ち、そのコンテキストで働く人たちが言語を定義および理解できることです。
そのようなコンテキストが、価値の流れに沿ったテーマの周囲に人々を集める方法になります。

<!-- The key thing to remember about Conways Law is that the modular decomposition of a system and the decomposition of the development organization must be done together.  -->
<!-- This isn't just at the beginning,  -->
<!-- evolution of the architecture and reorganizing the human organization 
 !-- must go hand-in-hand throughout the life of an enterprise. -->

コンウェイの法則で覚えておきべきことは、システムのモジュール分解と開発組織の分割は同時に行わなければならない、ということです。
これは最初だけではありません。
アーキテクチャの進化と人間組織の再編成は、企業が存続する限り密接に連携させなければなりません。

<!-- ### Further Reading -->
### さらに詳しく知るために

<!-- Recognizing the importance of Conway's Law 
 !-- means that budding software architects need to think about IT organization design.  -->
<!-- Two worthwhile books on this topic are Agile IT Organization Design by Narayan and Team Topologies by Skelton and Pais. -->

コンウェイの法則の重要性を認識するというのは、これからのソフトウェアアーキテクトはIT組織の設計について考えなければならないことを意味します。
このトピックに関する価値ある2冊は、Narayanの『Agile IT Organization Design』とSkeltonとPaisの『Team Topologies』です。

<!-- Birgitta Böckeler, Mike Mason, James Lewis and I discuss our experiences with Conway's Law on the ThoughtWorks Technology Podcast -->
Birgitta Böckeler、Mike Mason、James Lewisと私は、[ThoughtWorks Technology Podcast](https://www.thoughtworks.com/insights/podcasts/technology-podcasts/reckoning-with-the-force-conways-law)でコンウェイの法則の経験を話し合っています。

<!-- ### Acknowledgements -->
### 謝辞

<!-- Bill Codding, Birgitta Boeckeler, Camilla Crispim, Chris Ford, Gabriel Sadaka, Matteo Vaccari, Michael Chaffee, and Unmesh Joshi reviewed drafts of this article and suggested improvements -->
Bill Codding、Birgitta Boeckeler、Camilla Crispim、Chris Ford、Gabriel Sadaka、Matteo Vaccari、Michael Chaffee、Unmesh Joshiは、この記事の草稿をレビューして、改善点を提案してくれました。

<!-- ### Revisions -->
### 更新履歴

<!-- 2022-10-24: I added the paragraph about the inverse Conway maneuver and rigid architectures. I also added the footnote about remote-first working. -->

2022-10-24: 逆コンウェイ作戦と柔軟性のないアーキテクチャに関する段落を追加しました。また、リモートファーストの働き方に関する脚注も追加しました。


<!-- ### Notes -->
### 脚注

<!-- 1: The source for Conway's law is an article written by Melvin Conway in 1968.  -->
<!-- It was published by Datamation, one of the most important journals for the software industry at that time.  -->
<!-- It was later dubbed “Conway’s Law” by Fred Brooks in his hugely influential book The Mythical Man-Month.  -->
<!-- I ran into it there at the beginning of my career in the 1980s, 
 !-- and it has been a thought-provoking companion ever since. -->
[^1]: コンウェイの法則の出典は、1968年にメルヴィン・コンウェイが書いた[記事](https://www.melconway.com/Home/Committees_Paper.html)です。当時のソフトウェア業界で最も重要なジャーナルのひとつであるDatamationから出版されました。後にそれはFred Brooksの非常に影響力のある著書『人月の神話』で「コンウェイの法則」と呼ばれました。私はキャリアの初期の1980年代にそれに出会いました。それ以来、思考を刺激してくれる仲間です。

<!-- 2: As Conway mentions,  -->
<!-- consider how the social problems around poverty, health care, housing, and education are influenced by the structures of government. -->

[^2]: コンウェイが言及しているように、貧困、医療、住宅、教育に関する社会問題が、政府の構造にどのような影響を受けているかを考えてみてください。

<!-- 3: While location makes a big contribution to in-person communication patterns,  -->
<!-- one of the features of remote-first working, is that it reduces the role of distance, as everyone is communicating online. Conway's Law still applies,  -->
<!-- but it's based on the online communication patterns.  -->
<!-- Time zones still have a big effect, even online. -->

[^3]: 場所は対面のコミュニケーションパターンに大きく貢献します。[リモートファースト](https://martinfowler.com/articles/remote-or-co-located.html#remote-first)の働き方では、全員がオンラインでコミュニケーションするため、距離の役割が低下します。コンウェイの法則は引き続き有効ですが、オンラインコミュニケーションパターンに基づきます。タイムゾーンはオンラインであっても大きな影響があります。

<!-- 4: The term “inverse Conway maneuver” was coined by Jonny LeRoy and Matt Simons in an article published in the December 2010 issue of the Cutter IT journal. -->
[^4]: 「逆コンウェイ作戦」という言葉は、Cutter ITジャーナルの2010年12月号に掲載された[記事](http://jonnyleroy.com/2011/02/03/dealing-with-creaky-legacy-platforms/)において、Jonny LeRoyとMatt Simonsが生み出したものです。
