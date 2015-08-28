---
title: PreferDesignSkills
tags: [team organization, recruiting, technical leadership, thoughtworks]
---

http://martinfowler.com/bliki/PreferDesignSkills.html

2008/1/18

//Imagine a hiring situation. There's two candidates both with a few years of experience. In the blue corner we have someone with good broad design skills in the style of design that you favor (in my case that would be things like DRY, judicious use of patterns, TDD, communicative code etc, but the actual list isn't important - just that it's what you favor). However she knows nothing of the particular platform technology that you're using. In the red corner we have someone who has little knowledge (or interest) in those issues, but knows your platform really well - edge cases in the language, what libraries are available, fingers move naturally over the tools. Assume all else about them is equal (which it never is except for thought experiments like this) and that your team doesn't have any gaping holes that this candidate might fill. Which one would you prefer?

雇用について考えてみよう。
応募者が2人。どちらも経験が数年間。
青コーナーの人には、あなたが好きな設計スタイルの広範な設計力が備わっている（私の場合だと、DRY、分別のあるパターンの使用、TDD、伝わるようなコード、なんかが挙げられるけど、自分の好きなやつでいいよ）。ただし、彼女には、あなたが使っているプラットフォーム技術についての知識がない。
赤コーナーの人には、そういった設計の知識は（それに興味も）ないが、プラットフォーム技術についての知識はめちゃくちゃある。言語には詳しいし、どのライブラリが使えるかはよく知ってるし、ツールも流暢に使いこなす。
これ以外のことについては（こうした思考実験以外については）、2人ともまったく一緒だとしよう。
また、あなたのチームには、応募者の力によって埋めるべき欠陥は特に見当たらない。
それでは、どちらの応募者のほうが好ましいだろうか？

//My answer is simple, I'd take the one in the with broad design skills. I've always held the view that a good programmer should be able to pick up a new platform relatively quickly. Learning basic design aesthetics is both harder and carries over better to new platforms. Good design practices that matter in Java are equally valuable in .NET. Not being familiar with the platform does slow you down (how do I get a literal class name in C# again?), but producing well designed code is what really makes a difference.

私の答えは簡単だ。広範な設計力を持っている人のほうだ。
以前から、良いプログラマというのは、比較的すぐに新しいプラットフォームについての知識を身につけられるものだと私は思っている。
基本的な設計美を学習するのは、新しいプラットフォームを学習することよりも難しいことだが、ずっと長く使えるものになる。
Javaにおける良い設計プラクティスは、.NETにおいても同じように使うことができる。
馴染みのないプラットフォームを扱うとスピードは落ちるかもしれないが（C#でクラス名の取得はどうやんの？とか）、良く設計されたコードを生成することが、本当の違いをもたらすのである。

//Broad design skills aren't completely portable. Java and .NET are mostly equivalent as languages - moving to Ruby, however, changes more. Moving to a significantly different beast, like functional languages, is a bigger shift. In any case, you can't just blindly replicate all design habits in a new environment. But if you're aware of the new world, an awful lot does carry over.

広範な設計力は、完璧に移行可能なものではない。
Javaから.NETならば、言語としてほぼ等価なので移行は簡単だが、Rubyに移行しようとするとその違いが大きい。関数型言語のようにまったく違う代物に移行すると、さらに大きな違いとなる。
いずれにしても、新しい環境においてすべての設計の習慣を盲目的に適用することはできない。
もちろん、環境に配慮さえすれば、多くのことが適用可能だ。

//We've seen this principle prove itself at ThoughtWorks. In our early days with Java, we found the skills experienced developers had learned in Forte gave us excellent instincts for working with Java. We moved away early from the EJB-dominant thinking, and I think it was experience with other platforms that guided us. We saw it even more strongly with .NET. Time and again we saw that good developers with a Java background were rapidly more effective than those with a longer .NET or Microsoft background who lacked those skills. The difference was visible in weeks, not months (and sometimes days).

ThoughtWorksでは、これまでに何度もこの法則が証明されている。
Javaを扱い始めた頃、熟練開発者がForteで学んだスキルがJavaにおいても大いに役立つことに気づいた。
我々はEJB中心の考えを早くからやめた。それは、それまでに使ってきたプラットフォームで得た経験があったからだ。
このことは.NETにおいて顕著だ。それまで.NETやマイクロソフト技術に携わってきた広範な設計力を持たない開発者よりも、Javaのバックグラウンドを持つ優れた開発者のほうが、すぐにバリバリ仕事をするようになったのを何度となく目にしてきた。
その違いは、数ヶ月ではなく、数週間で現れた（時には数日で現れた）。

//At the moment we see this shift most notably in Ruby. We've had quite the run of Ruby projects this year, and often we turn to people with long experience in curly-brace languages to fill the need. Again we've seen the value that broad design skills gives us.

現在、この流れを最も目にするのはRubyにおいてである。
昨年は、かなりの量のRubyプロジェクトがあったが、中括弧言語での経験が長い開発者をその人材として充てることが多かった。
ここでも、広範な設計力がもたらす価値を目にすることができた。

//It's not always a sure thing. I have seen cases where someone experienced in another platform just doesn't desire to get in and learn the new one. Desire to learn is a necessary component here - I'd take the single platform specialist if he wanted to learn broad design and the broad designer didn't want to learn the new platform. It's also essential to have someone on the team who knows the platform well.

これは常に確かなことではない。
あるプラットフォームで経験を積んだ人が、新しいプラットフォームについて学びたいと思わないケースもある。
学びたいと思う気持ちは必要不可欠だ。
広範な設計力を学びたいと思っているプラットフォームスペシャリストと新しいプラットフォームについて学びたいと思わない広範な設計力を持った人がいれば、私は前者を採用するだろう。
チームに1人はプラットフォームをよく知る人間が必要不可欠だということもある。

//I'd say most people at ThoughtWorks prefer design skills over platform knowledge. Many clients don't share that point of view - which can lead to some difficult pragmatic and ethical choices.

ThoughtWorksでは、多くの人がプラットフォームの知識よりも設計力のほうを好んでいる。だが、多くのクライアントはこの考え方を理解していない。そのために、難しい倫理的な選択を迫られることもある。

//What happens if you have someone you want to bring onto the team with strong design skills and no platform background - yet the client insists on at least two years experience on the platform. In your professional judgment, the broad candidate is going to be more productive than anyone else available. You need to be honest with your client, but on the other hand he is paying you for your professional judgment. Does this change if the client has given you responsibility for delivery of the project?

設計力は高いけれどプラットフォームの知識がない人をチームに入れたいとしよう。クライアントはそのプラットフォームでの経験が少なくとも2年は必要だと言っている。
専門家としてあなたは、その人が他の誰よりも生産性が高いと判断した。
クライアントに嘘はつけないが、彼はきっとあなたの期待に応えてくれるだろう。
プロジェクトの一切の責任をあなたが負うのであれば、状況は変わるだろうか？

//For us these questions are more charged because there is a financial interest involved. If we add a ThoughtWorker to a team, then we bill for that person. If a client hires a platform specialist contractor, we don't get that income. For many people this is a crucial fact in the situation, yet I expect our project managers are wise enough to know that the risk of adding the wrong person is much more important than one billable income.

こうした質問は多くの議論を巻き起こすことになる。
なぜなら、お金にまつわる問題だからだ。
ThoughtWorkerを1人チームに加えたら、その人に給料を支払うことになる。
クライアントがプラットフォームスペシャリストを雇ってしまったら、
我々はそこで得られるはずの収益を手にすることができない。
こうした状況では、これは多くの人にとっての重要な要因である。
しかし、我々のプロジェクトマネージャには、ひとつの収益よりも間違った人を加えることのほうが、リスクが高いことを承知しておいてもらいたい。

//Consider another case where you're open with the client and the client demands a reduced rate for the broad design person due to her lack of platform knowledge as she'll be learning on the job. You're sure that she, despite that lack, will be more productive than the competing platform expert due to those design skills. Should you accept a reduced rate?

他のケースについても考えてみよう。
広範な設計力を持つ彼女にプラットフォームの知識がないことをクライアントに正直に話したところ、値引きを要求された。彼女が仕事の中でプラットフォームを勉強するからということだ。
彼女にはプラットフォームの知識が足りないかもしれないが、
広範な設計力のおかげで他のプラットフォーム専門家よりも生産性が高いとあなたは考えている。
この値引きを受け入れるべきだろうか？

//It's the nature of our, and most other, professions that you learn on the job. A platform specialist also has to learn broad design skills if he's going to produce maintainable code. Here it's important to remember that not just is it usually harder to learn design than platforms, it's also less certain. Given a motivated broad-designer, I can be pretty sure she'll pick up a platform in time. But there's no guarantee the other way around. Some people are good at learning details of a platform, but never figure out how to write clear code.

仕事を通じて学ぶということは、我々の（そしてみんなの）業界の特性なのである。
保守性の高いコードを書こうと思えば、
プラットフォーム専門家も広範な設計力を学ぶ必要がある。
ここで覚えておいてもらいたいのは、
プラットフォームよりも設計のほうが学習が難しいということだけでなく、
確実度が高いということなのである。
ヤル気のある広範な設計者は、いずれプラットフォームの知識を身につけるだろう。
しかし、逆は確かではない。
プラットフォームの細かなことには詳しくても、
明快なコードを書く方法が分からない人もいるのである。

//I've talked here about broad design skills - and I do believe this makes a difference on the technical axis. But there are other dimensions of broadness too. Most risk in software projects lies in the communication between businesspeople and programmers, so a candidate who can communicate well with users brings a great deal to a team.

ここでは広範な設計力について述べてきた。
私は、これが技術面において違いをもたらすことだと信じている。
ただし、「広さ」にはもうひとつの種類がある。
ソフトウェアプロジェクトにおけるリスクのほとんどが、
ビジネス人間とプログラマとのコミュニケーションに起因する。
つまり、ユーザーとコミュニケーションができる応募者のほうが、
チームに貢献できるのである。

//A similar issue is knowledge of the problem domain. Often clients want people who already know their business, yet are surprised when someone rapidly gains enough understanding to be useful. I've long held that it's the ability to collaborate with others which is central here. By collaborating with a domain expert, or a platform expert, someone with broad skills can be become effective very quickly. Knowledge of other domains often introduces surprising insights into a project and similarities often crop up in sup-rising places. It's remarkable how often things like core accounting patterns crop up in places that don't look like accounting on the surface. In the end it's the ability to work with others, coupled with being a fast learner, that is the critical skill.

ドメイン（問題領域）の知識についても同様である。
よくクライアントが彼らのビジネスについて詳しい人を要求することがあるが、
開発者の理解のスピードの速さにビックリしている。
長年、そう思っていることではあるが、
これは誰かと一緒に働くという能力なのである★。
ドメイン専門家やプラットフォーム専門家、あるいは広範な設計力を持つ人と働くことによって、すぐに役に立てるようになる。
他のドメインの知識がプロジェクトに驚くべき見識をもたらすこともよくあるし、
類似点が思いがけないところでひょっこり顔を出すこともある。
見た目上は会計とは関係のないようなところで
会計パターンがしばしば使えるというのは特筆すべきことだろう。
つまりは、他の人と一緒に働くというのは能力であり、
高速学習と組み合わせることは必要不可欠なスキルなのである。

//I'm not dismissing deep platform knowledge here. In an ideal world every team member would be excellent broad programmers with several years platform experience, good familiarity with the problem domain, and written similar systems at least twice before. But we all know how far our world is from that ideal. You need some platform knowledge on a team, and if it were a gap I would reach for the platform specialist to fill it. But that doesn't alter my default position to prefer broad design skills most of the time.

私はプラットフォームの知識を無視しているわけではない。
理想的な世界では、
チームメンバ全員が優れた広範なプログラマで、
プラットフォームの経験も数年あり、
問題ドメインに精通し、
同様のシステムを少なくとも2回経験しているわけだが、
我々の現実世界は理想とはかけ離れている。
チームにはプラットフォームに精通した人が数人は欲しい。
もし知識が足りないようだったら、専門家をチームに入れる必要があるだろう。
しかし、広範な設計力のほうが重要だという立ち位置は、常に変わらない。

## 反応

* http://mixi.jp/view_diary.pl?id=690428093&owner_id=93155
