---
title: ソフトウェア開発の学派
tags: TAGS
---

http://martinfowler.com/bliki/SchoolsOfSoftwareDevelopment.html

2008/4/12

ソフトウェア開発の学派

//For nth, and I'm sure not last time, I'm sliding into a conversation about defining practices, labeling some of them as "best", and probably the C-word (certification). It's a familiar discussion, and although we've barely started it, I can predict much of where it will go. It's driven by a perfectly reasonable desire to identify who are the better software developers, and how existing developers can improve their abilities.

この話はもう何度目だろう。今回で最後にはなるまい。
私は今、プラクティスを定義し、そのうちのいくつかを「ベスト」だとラベリングし、Cで始まる単語(認定[Certification])がどうとかいったような会話に陥っているのだ。
これはありがちな議論なので、たった今始めたばかりにもかかわらず、私はこの議論の結末が見えている。
この議論は、最高のソフトウェア開発者は誰なのか、および世間の開発者たちが能力をどのぐらい向上できるのか、を明らかにしたいという完全に妥当な野望から来るものだ。

//When people get into these conversations, they usually end up in trouble. Either the group gets into heated discussions and cracks up, or the group doesn't have heated discussions and produces something that others deride. The heart of why this happens, and why I don't see any single, widely-recognized certification program for software development coming soon is that there is no single, well-agreed way to develop software effectively.

この手の会話を始めてしまうと、最後には困ったことになるのが常だ。
議論が過熱しすぎてグループにひびが入るか、でなければ議論は盛り上がらず、他人から馬鹿にされてしまうような結論しか出ないか、どちらかだ。
こういうことになる理由の核心は、そして、なぜ単一で広く認知された認定プログラムが現れる気配すらないのかは、ソフトウェアを効果的に開発する単一で広く同意された方法などないからなのである。

//Instead what we see is a situation where there are several schools of software development, each with its own definitions and statements of good practice. As a profession we need to recognize that multiple schools exist, and their approach to software development development is quite different. Different to the point that what one school considers to exemplary is considered by other schools to be incompetent. Furthermore, we don't know which schools are right (in part because we CannotMeasureProductivity) although each school thinks of itself as right, with varying degrees of tolerance for the others.

その代わりに私たちが見ているものは、ソフトウェア開発には数多くの学派があり、それぞれには独自の定義とよいプラクティスの宣言があるという状況である。
専門職としては、複数の学派が存在すること、そしてソフトウェア開発に対するそれぞれのアプローチが大きく異なっていることを認識しなければならない。
その違いは、ある学派が模範とするものが別の学派では不適格とみなされるまでに至っている。
さらに、我々にはどちらが正しいかなんて分からないのだ(理由の一部は、[[生産性は計測不能]]だからだ)。どちらの学派も自分たちが正しいと考えていて、他学派の許容度はそれぞれ異なっているけれども。

//I'm using "school" here in the style of this definition:

私はここで「学派」を次のような定義で使っている。

""4 a: a group of persons who hold a common doctrine or follow the same teacher (as in philosophy, theology, or medicine) <the Aristotelian school>; also : the doctrine or practice of such a group b: a group of artists under a common influence c: a group of persons of similar opinions or behavior; also : the shared opinions or behavior of such a group <other schools of thought>

--Merriam-Webster

//I came across this notion explicitly from the Context-Driven School of Software Testing (see James Bach and Brett Pettichord). I like their way of looking at this because it's a model that explains why intelligent software developers have such different approaches.

この概念は明らかにソフトウェアテストのコンテキスト駆動学派([[James Bach|http://www.satisfice.com/blog/archives/74]] と [[Brett Pettichord|http://www.io.com/%7Ewazmo/papers/four_schools.pdf]]を見よ)から来ている。
私が彼らのものの見方を好きなのは、知的なソフトウェア開発者たちがそんなにも異なったアプローチを取る理由を説明するモデルだからだ。

//The Context-Driven folks have done some looking at different schools within the testing world, but I don't know of any good attempt to classify the schools within the broader world of software development. I feel a sense of belonging to a school, one that for me is rooted in the people I met through OOPSLA in the 90's. Object-orientation is a key practice of this school, as is agile methods. You could reasonably argue that this is the agile school, except I think that agile methods are a core component of this school's thinking but not the whole picture. The leaders of this school include people like Ward Cunningham, Ralph Johnson, Kent Beck, and Robert Martin. ThoughtWorks is, on the whole, an organization that follows this school (which is why I'm comfortable here).

コンテキスト駆動の人たちはテスト界の別学派たちをいくつか判断しているけれども、ソフトウェア開発の広大な世界における学派たちを分類するよい試みを私は知らない。
私もある学派に所属しているという気持ちがあるが、それは私にとって、90年代のOOPSLAで出会った人たちから来ているものだ。
オブジェクト指向がこの学派の鍵となるプラクティスであり、アジャイルな手法も同様だ。
この学派はアジャイル学派なのだと論じることだってできるだろうが、私が思うに、アジャイルな手法はこの学派の考え方におけるコア・コンポーネントではあるけれども、それが全体像というわけではない。
この学派の指導者にはWard Cunningham、Ralph Johnson、Kent Beck、そしてRobert Martinといった人たちが含まれる。
ThoughtWorks は、総じて言えば、この学派を信奉する組織である(だから私は居心地がよい)。

//But despite this sense of a somewhat coherent school, there's still many open questions. Is it best to think of the agile world as one school or many (are Scrum and XP different schools or part of the same)? What are the major schools out there? What exactly defines a school of thought?

しかし、割と首尾一貫している学派だという感覚はあるのだけれど、未解決問題がいくつも残っている。
アジャイル界を１学派と考えるのと複数学派だと考えるのはどちらがよいのか(ScrumとXPは別学派なのか、同じ学派に含まれるのか)？
世の中で主要な学派はどれだ？学派の考え方を正確に定義するものは何か？

//I don't have much of an answer to these questions, but the key point to remember is that there are multiple schools of thought about how to develop software effectively. We may not think much of the other schools to our particular one, but we are foolish not to recognize that other schools exist.

これらの疑問に対する答えはあまり持っていないけれども、覚えておくべきキーポイントは、ソフトウェアを効果的に開発するための考え方には複数の学派があるということだ。
私たちは、他ならぬ私たちの学派よりも他の学派を重視するほどのアホではないだろうが、他の学派が存在していることを忘れない程度には愚かであると言える。
