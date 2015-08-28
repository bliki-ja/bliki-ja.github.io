---
title: 対話的ストーリー
tags: TAGS
---

http://martinfowler.com/bliki/ConversationalStories.html

2010/2/4

//Here's a common misconception about agile methods. It centers on the way user stories are created and flow through the development activity. The misconception is that the product owner (or business analysts) creates user stories and then put them in front of developers to implement. The notion is that this is a flow from product owner to development, with the product owner responsible for determining what needs to be done and the developers how to do it.

アジャイル方法論に対するよくある誤解の話をしよう。
アジャイル方法論は、開発のなかでユーザーストーリーを作り、変化させていくことに重点を置いている。
よくある誤解とは、プロダクトオーナー（あるいはビジネスアナリスト）がユーザーストーリーを作り、それを開発者に差し出して実装してもらうというものだ。
この考えでは、流れはプロダクトオーナーから開発者に向かっている。
プロダクトオーナーの責任は''何が''必要かを決めることであり、開発者の責任は''どうやって''実現するかを決めることだというのだ。

[[http://martinfowler.com/bliki/images/conversationalStories/decreed.png]]

//A justification for this approach is that this separates the responsibilities along the lines of competence. The product owner knows the business, what the software is for, and thus what needs to be done. The developers know technology and know how to do things, so they can figure out how to realize the demands of the product owner.

この考えは、能力に沿った責任の分割をその理由としてる。
プロダクトオーナーはソフトウェアの目的であるビジネスを知っており、何を行うべきかを知っている。
一方、開発者は技術とその方法を知っており、プロダクトオーナーの望みを実現する方法をあれこれ考えることができる。

//This notion of product owners coming up with DecreedStories is a profound misunderstanding of the way agile development should work. When we were brainstorming names at Snowbird, I remember Kent suggesting "conversational". This emphasized the fact that the heart of our thinking was of an on-going conversation between customers and developers about how a development project should proceed.

プロダクトオーナーが[[DecreedStories]]を思いつくというこの考えは、
アジャイル開発方法論が機能するにあたって、実に深刻な誤解であると言える。
我々が[[Snowbird|http://martinfowler.com/articles/agileStory.html]]でブレインストーミングをしたときに、Kentが「対話」を提案したことが思い出される。
これは、顧客と開発者が開発プロジェクトの進め方について継続的に対話を行うべきだということが我々の考えの肝であることを強調するものだった。

[[http://martinfowler.com/bliki/images/conversationalStories/conversation.png]]

//In terms of coming up with stories, what this means is that they are always something to be refined through conversation - and that developers should play an active role in helping that definition.

ユーザーストーリーの場合、これが意味するのは、
誰もが対話を通じて常にストーリーを洗練させていくことができるということだ。
そして、開発者は、ストーリーを明確化する役割を積極的に担うべきだということだ。

//* spotting inconsistencies and gaps between the stories
* ストーリー間の矛盾や隙間に気づく
//* using technical knowledge to come up with new stories that seem to fit the product owner's vision
* 技術知識を使って、プロダクトオーナーのビジョンに合うような新しいストーリーを考え出す
//* seeing alternative stories that would be cheaper to build given the technological landscape
* 技術的見地から、コストがかからずに構築できる代替ストーリーを考える
//* split stories to make them easier to plan or implement
* ストーリーを分割して、計画や実装をやりやすくする

//This is the Negotiable principle in Bill Wake's INVEST test for stories. Any member of an agile team can create stories and suggest modifications. It may be that just a few members of a team gravitate to writing most of the stories. That's up to the team's self-organization as to how they want that to happen. But everyone should be engaged in coming up and refining stories. (This involvement is in addition to the develpers' responsibility to estimate stories.)

これが、Bill Wakeによるストーリーの[[INVEST|http://xp123.com/xplor/xp0308]]試験の1つ、Negotiable（交渉可能）の原則だ。
アジャイルチームのメンバーは誰もがストーリーを作成したり、修正を提案したりできる。
一部のチームメンバーがほとんどのストーリーを書くことになるかもしれない。
ただそれは、チームがどうしたいかによるものであり、チームの自己組織の判断次第である。
しかし、チームメンバー全員がストーリーを作り、洗練していくことに携わるべきだ。
（ストーリーの見積りに加えて、これも開発者の責任のひとつだ）

//The product owner does have a special responsibility. In the end the product owner is the final decider on stories, particularly their prioritization. This reflects the fact that the product owner should be the best person to judge that slippery attribute of business value. But having a final decision maker should never stop others from participating, and should not lead people astray into a decreed model of stories.

プロダクトオーナーには特別な責任がある。
プロダクトオーナーはストーリーの最終決定者なのだ。
特にストーリーの優先付けについてはそうだ。
プロダクトオーナーだけが、つかみどころのないビジネス価値を判断できる。
ただし、最終決定者は、その他の者の参加を排除してはならない。
そして、命令的ストーリーという誤った道に導いてはいけない。
