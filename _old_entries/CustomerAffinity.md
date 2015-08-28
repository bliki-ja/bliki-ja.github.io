http://www.martinfowler.com/bliki/CustomerAffinity.html

2006/7/28

//When someone is looking at what makes up a top-class enterprise software developer, often the conversation may turn to knowledge of frameworks and languages, or perhaps the ability to understand complicated algorithms and data structures. For me, one of the most important traits in a programmer, or indeed in a development team, is something that I'll call Customer Affinity. This is the interest and closeness that the developers have in the business problem that the software is addressing, and in the people who live in that business world.

トップクラスのエンタープライズソフトウェア開発者になるために必要なものは何かという話になると、だいたいフレームワークや言語の知識や複雑なアルゴリズムやデータ構造を理解する能力だろうという方向に話が進む。
だが、プログラマや開発チームにとって最も重要なのは、私が「顧客親近性」と呼んでいるものだ。
これは、ソフトウェアが対処すべきビジネスの問題、そして、そのビジネスの世界に生きている人々に対する関心および親密さを表すものである。

//There are many aspects to customer affinity. The first one is just the interest in the business, its processes and rules. I've always been fascinated by domains I've worked in: health care, derivatives, payroll, leasing - are all examples of really interesting domain problems with a lot of complexity that has to be organized and understood. For me aspects of a project such as object-relational mapping, remote process communication - what I think of as the plumbing of enterprise systems, don't have that same interest.

顧客親近性には様々な側面がある。
まずは、ビジネスへの関心である。ビジネスのプロセス、そしてビジネスルールへの関心だ。
私はこれまでに携わってきたドメイン——医療、金融派生商品、給与管理、リース業務——に常に魅了されてきた。これらは非常に興味深いドメイン問題の例である。いずれも整理し理解しなければならない複雑さを多数抱えたものだった。
ORマッピングやリモートプロセス通信といったプロジェクトの側面——私はこれらをエンタープライズシステムの配管作業と呼んでいる——には同様の面白さはない。

//It's important that a team has the plumbing working and under control, but I believe that the more energy goes into the business problem, the more effective at providing value a team will be. Which is a good reason to use frameworks that solve and simplify as much of the plumbing as possible.

もちろん、配管工事をきちんと行うことはチームにとって重要なことだ。
しかし私は、ビジネス問題により多くのエネルギーを注げばより効果的にチームが価値を提供できると信じている。
だからこそ、配管工事をできるだけ簡単に解決するためにフレームワークを使用するのだ。

//Another aspect of customer affinity is the ability to collaborate with domain experts. I don't think that detailed knowledge of the domain is an important thing for programmers to have; useful yes, but not important. What's more critical than knowledge is the ability to collaborate with those that have the knowledge.

顧客親近性のもうひとつの側面は、ドメイン専門家とのコラボレーション能力である。
私はプログラマが詳細なドメイン知識を身に着けている必要はないと思っている（もちろん有用なことではある。しかし、重要なことではない）。
知識よりも重要なのは、その知識を持った人とコラボレーションできるかどうかだ。

//My high regard for customer affinity is one the main reasons why I'm such a fan of Extreme Programming and other agile methods. I found it very significant that when Kent Beck summarized XP to his agile peers at the snowbird workshop which coined 'agile', he chose to describe not the technical elements of XP, but his desire to change the nature of the customer/developer interaction.

顧客親近性を重要視しているからこそ、私はエクストリームプログラミングやアジャイル方法論のファンなのだ。
「アジャイル」を生み出したSnowbirdでのワークショップにおいて、Kent Beckがアジャイル仲間たちにXPについて簡単に説明したとき、彼はXPの技術的要素ではなく、顧客と開発者の相互関係のあり方を変えたいという願いについて説明した。私は、これは特筆すべきことだと思っている。

//I've often heard this relationship mis-characterized. In particular there is a belief in some quarters that the customer team just comes up with stories which they throw at the developers. This characterization is rather like the notion that requirements are just lying out there to be gathered. Either way that's not much of a collaboration. Instead developers need to work together with domain people to generate ideas with developers learning a lot about the business in the process.

この両者の関係付けが誤っていることが多いようだ。
特に、顧客チームは開発者にストーリーを提出しさえすればよいと信じているところがあるようだ。この関係付けは、要求というものはそこらに転がっており、集めさえすればよいという考えなのだろう。
いずれにせよ、これはコラボレーションではない。
開発者はドメインに携わる人間と一緒になってアイデアを創出していく必要がある。
開発者はこの過程を通して、ビジネスについての理解を深めていくのだ。

//One of Kent's suggested names for 'Agile' was conversational software development - the point being that it's a two way communication. This isn't something like a telecoms protocol that you can define, but the back and forth discussions about how software can enhance the business are where the real value lives. Much of this conversation is of half-baked ideas, some of which grow into valuable features - often ones that aren't things that the customer originally thought of.

Kentが「アジャイル」以外に提案した名前は「''対話型''(''conversational'')」ソフトウェア開発だった——双方向のコミュニケーションであるところがポイントだ。
テレコムプロトコルのように定義されたものではないが、どうすればソフトウェアがビジネス価値を高められるかを両者で何度も議論を繰り返すことには、真の価値がある。
この対話は生焼けのアイデアかもしれない。
しかし、その中から価値のある機能が育っていくのだ——顧客が考えてもいなかったものが出てくることがよくある。

//One of the things that frustrates me is how organizations often try to squelch customer affinity. It's not something people admit to doing, but it's a common consequence of other decisions. Organizational barriers can contribute to squelching - I've come across places where you have to get your manager to arrange with another manager just so you can have a conversation with someone on the business side. That hardly encourages you to get inside the workings of the business.

組織がこの顧客親近性を鎮圧しようとすることがよくあり、
私はいつもイラっとするのだが、これは認める認めないの話ではなく、
他の決定による結果として出てくるものなのだ。
組織的な障壁が鎮圧を助長していることもある——ちょっと他部署の人間と会話をするためだけに、自分のマネージャに頼んでその部署のマネージャと調整してもらわなければならないようなケースを見たことがある。
そのような状況では、ビジネスの内側に入っていくことなどできやしない。

//I've often heard it said that enterprise software is boring, just shuffling data around, that people of talent will do "real" software that requires fancy algorithms, hardware hacks, or plenty of math. I feel that this usually happens due to a lack of customer affinity. The real intellectual challenge of business software is figuring out what the real contribution of software can be to a business. You need both good technical and business knowledge to find that. Working closely with business people to develop this knowledge, and PleasingTheCustomer as you do it, is what makes enterprise software development fun - and motivation is the key to good and productive work.

エンタープライズソフトウェアはデータをこねくり回しているだけで退屈であるとか、才能のある人間は複雑なアルゴリズム、ハードウェアハック、膨大な計算量などが必要とされる「本物の」ソフトウェアを作る、などといった話をよく耳にする。
だがそれは、顧客親近性が欠如しているからではないかと思う。
ビジネスソフトウェアの真の知的挑戦とは、ソフトウェアがビジネスにとってどのように貢献できるかを見つけ出すことである。
そのためには技術スキルとビジネス知識の両方が必要となる。
ビジネス側の人間と密接に仕事をすることでビジネス知識を高めていき、
また同時に、[[顧客を満足させていく|PleasingTheCustomer]]のだ。
これこそがエンタープライズソフトウェアの楽しみである——そしてこれが、よい製品を作り出すための鍵となるモチベーションになる。

//There are plenty of bright and capable people who want to learn about the businesses they write software for. Too often organizations make it hard for them to do so. Until that changes, our profession will continue to under-deliver on our potential.

自分の作っているソフトウェアが対象とするビジネスについて学びたいと考えている優秀で能力のある人間は数多く存在する。
だが、組織によってそれが難しくなっていることが多々ある。
そういった状況が変わるまで、我々の業種はポテンシャルを発揮できないままだろう。
