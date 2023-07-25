---
title: 2枚のピザチーム
tags: [team organization]
---

<!-- A two-pizza team is a small team that fully supports software for a particular business capability. The term became popular as it used to describe how Amazon organized their software staff. -->

「2枚のピザチーム」とは、特定のビジネス機能のソフトウェアを完全にサポートする小さなチームのことを指します。Amazonがソフトウェア人材の組織化について説明するときに用いられたことから有名になりました。

<!-- The name suggests the most obvious aspect of such teams, their size. 
 !-- The name comes from the principle that the team should no larger than can be fed with two pizzas. 
 !-- (Although we are talking about American Pizzas here, which seemed alarmingly huge when I first encountered them over here.)  -->
<!-- Keeping a team small keeps it cohesive, forming tight working relationships. 
 !-- Typically I hear this means such teams are about 5-8 people, 
 !-- although my experience suggests that the upper limit is somewhere about 15. -->

その名前が示すように、こうしたチームの最も明らかな特徴は規模です。
「チームは2枚のピザで満足できる人数を超えるべきではない」という原則に由来しています
（アメリカのピザの話です。はじめて見たときにはびっくりするほど巨大に思えました）。
チームを小さく保つことで、結束力が高まり、緊密な協力関係が生まれます。
通常は5〜8人程度になると思いますが、上限は15人程度になるでしょう。

<!-- Although the name focuses solely on the size, just as important is the team's focus.  -->
<!-- A two-pizza team should have all the capabilities 
 !-- 	it needs to delivery valuable software to its users,  -->
<!-- with minimal hand-offs and dependencies on other teams.  -->
<!-- They can figure out what their customer needs, 
 !-- 	and quickly translate that into working software, 
 !-- 	able to experiment and evolve that software as their customer's needs change. -->

名前が示しているのは規模だけですが、同じくらい重要なのはチームのフォーカスです。
チームは、他のチームへの引き継ぎや依存関係を最小限に抑えながら、価値のあるソフトウェアをユーザーに届けるために必要なすべての能力を備えている必要があります。
顧客のニーズを把握し、それを動作するソフトウェアにすばやく変換し、
顧客のニーズの変化に応じてソフトウェアの実験と進化を行なっていくことができるチームです。

<!-- Two-pizza teams are Outcome Oriented rather than Activity Oriented.  -->
<!-- They don't organize along lines of skills (databases, testing, operations), 
 !-- 	instead they take on all the responsibilities required to support their customers.  -->
<!-- This minimizes inter-team hand-offs in the flow of features to their customers, 
 !-- 	allowing them to reduce the cycle-team 
 !-- (the time required to turn an idea for a feature into code running in production).  -->
<!-- This outcome-orientation also means  -->
<!-- 	they deploy code into production and monitor its use there, 
 !-- famously responsible for any production outages (often meaning they on the hook for off-hours support) - a principle known as "you build it, you run it". -->

2枚のピザチームは、[アクティビティ指向](/ActivityOriented)ではなく[アウトカム指向](/OutcomeOriented)です。
スキル（データベース、テスト、運用）によって組織化されているのではなく、顧客をサポートするために必要なすべての責任を引き受けます。
こうすることで、
顧客に機能が届くまでの流れのなかで、チーム間の引き継ぎを最小限に抑え、
サイクルタイム（機能のアイデアを本番環境のコードに変えるまでに必要な時間）を短縮できます。
このアウトカム指向とは、
コードを本番環境にデプロイし、
そこでの使用状況を監視することも意味します。
本番環境で発生する障害の責任者になる（営業時間外でもサポートする）ということです。
「あなたが構築し、あなたが実行する（you build it, you run it）」の原則です。

<!-- Focusing on a customer need like this means teams are long-lived, 
 !-- Business Capability Centric teams that support their business capability 
 !-- 	as long as that capability is active.  -->
<!-- Unlike project-oriented teams - that disband when the software is "done" -  -->
<!-- they think of themselves as enabling and enhancing a long-lived product.  -->
<!-- This aspect often leads to them being referred to as product teams. -->

顧客のニーズにフォーカスするというのは、
ビジネス機能が生きている限りサポートする[ビジネス機能中心](/BusinessCapabilityCentric)の長寿なチームであるという意味です。
ソフトウェアが「完成」すると解散するプロジェクト指向のチームとは違い、
彼らは[寿命の長いプロダクト](https://martinfowler.com/articles/products-over-projects.html)の存続と強化のために自分たちは存在すると考えています。
こうしたことから、**プロダクトチーム**と呼ばれることがあります。

<!-- The wide scope of skills and responsibilities that a two-pizza team needs 
 !-- 	to support its product  -->
<!-- means that although such teams can be the primary approach to team organization, 
 !-- 	they need support from a well-constructed software platform.  -->
<!-- For small organizations,
 !-- this can be a commercial platform, such as a modern cloud offering.  -->
<!-- Larger organizations will create their own internal platforms 
 !-- 	to make it easier for their two-pizza teams to collaborate 
 !-- 	without creating difficult hand-offs.  -->
<!-- Team Topologies provides a good way to think about the different kinds of teams and interactions
 !-- 	required to support two-pizza teams (Team Topologies calls them stream-aligned teams). -->

プロダクトをサポートするには、幅広いスキルと責任が必要です。
したがって、2枚のピザチームは第一のアプローチになりますが、
適切に構築されたソフトウェアプラットフォームのサポートも必要です。
小規模な組織の場合は、最新のクラウド製品などの商用プラットフォームになるでしょう。
大規模な組織の場合は、
面倒な引き継ぎをすることなく、
2枚のピザチーム同士が協力しやすくなるように、
独自の内部プラットフォームを構築することになるでしょう。
[チームトポロジー](/TeamTopologies)では、
2枚のピザチーム（チームトポロジーでは**ストリームアラインドチーム**と呼ばれます）をサポートする
さまざまな種類のチームやインタラクションを提供しています。

<!-- For business-capability centric teams to be effective, 
 !-- they will need to make use of each others' capabilities.  -->
<!-- Teams will thus need to provide their capabilities to their peers, 
 !-- 	often though thoughtfully designed APIs.  -->
<!-- This responsibility for such teams to provide services to their peers is often overlooked,
 !-- if it doesn't happen it will lead to sclerotic information silos. -->

ビジネス機能中心のチームが効果的であるには、
チーム同士がお互いの能力を活用する必要があります。
したがって、チームは慎重に設計されたAPIを使用して、自分たちの能力を仲間に提供する必要があります。
他のチームにサービスを提供するという責任は見過ごされがちですが、
これをやっておかないと情報のサイロ化につながってしまいます。

<!-- Organizing people around business capabilities like this
 !-- has a profound interaction with the way the software for an organization is structured
 !--  - due to the effect of Conways Law.  -->
<!-- Software components built by two-pizza teams 
 !-- 	need well-controlled interactions with their peers, 
 !-- 	with clear APIs between them.  -->
<!-- This thinking led to the development of microservices,  -->
<!-- but that's not the only approach -  -->
<!-- well-structured components within a monolithic run-time is often a better path. -->

このようにビジネス機能を中心にチームを組織することは、
組織のソフトウェアの構造と深く関係しています。
[コンウェイの法則](/ConwaysLaw)の影響があるからです。
2枚のピザチームが構築したソフトウェアコンポーネントは、
明確なAPIを使用して、制御したインタラクションを行なう必要があります。
こうした考え方が[マイクロサービス](https://martinfowler.com/microservices/)の開発につながりました。
しかし、マイクロサービスがすべてではありません。
モノリシックなランタイムで適切に構造化されたコンポーネントを使用するほうが良いでしょう。
