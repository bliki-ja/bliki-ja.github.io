---
title: アジャイルの押し付け
tags: [agile, agile adoption]
---

http://martinfowler.com/bliki/AgileImposition.html

2006/10/2

//According to the current board of the Agile Alliance, agile methods have "crossed the chasm" , which I think means they are becoming more widespread. While this has its advantages, it also brings problems. As a methodology or design approach becomes fashionable, then we see a lot people using it, or teaching it, who are focusing on the fashion rather than the real details. This can lead to reports of things done in agile's name which are a polar opposite to the principles of movement's founders.

アジャイルアライアンスのボードメンバによると、アジャイル方法論は「[[キャズムを超えた|http://www.infoq.com/articles/agile-alliance-survey-2006]]」そうだ。
つまり、より多くの人に知れ渡ったということだろう。
これはアジャイルの利点だが、同時に問題も起きている。
方法論や設計手法が単なる流行になってしまったために、流行にのみ注目して、使用したり、教えたりする人が多い。
また、アジャイル設立者の原則とは正反対のことをして、アジャイルの名を汚しているという報告もある。

//Drifting around the web I've heard a few comments about agile methods being imposed on a development team by upper management. Imposing a process on a team is completely opposed to the principles of agile software, and has been since its inception.

Webを巡回していると、ある開発チームが上層部からアジャイル方法論を押しつけられているというコメントを見つけた。
チームにプロセスを押しつけるというのは、アジャイルソフトウェアの原則に完全に反しているし、そもそもアジャイルですらない★。

//For me, one of the key features of agile methods is that they are PeopleOriented. They recognize that people and how they work together is the primary factor in software development, and that processes are a secondary factor. This is reflected in the first value of the agile manifesto "Individuals and interactions over processes and tools" and is reinforced by two principles of the manifesto:

私にとって、アジャイル方法論とは[[PeopleOriented]]なものだ。
「人」を認識し、いかに一緒に働くかに気づくことが、
ソフトウェア開発においてもっとも重要な要因である。
プロセスは二の次だ。
これは[[アジャイルマニフェスト|http://agilemanifesto.org/]]の第一項「プロセスやツールより個人と相互作用を重視します{{fn('http://www.agileprocess.jp/wg/agilepm/modules/bwiki/index.php?AP(M)BOK%A4%CE%C7%D8%B7%CAより引用')}}」を反映したものであり、アジャイルマニフェストの2つの[[原則|http://agilemanifesto.org/principles.html]]により補足されている。

//* Build projects around motivated individuals. Give them the environment and support they need, and trust them to get the job done.
//* The best architectures, requirements, and designs emerge from self-organizing teams.

* モチベーションのある個人の周りにプロジェクトを構築する。必要な環境、サポートを与え、彼らが仕事を成し遂げることを信頼する。
* ベストなアーキテクチャ、要求、設計は、自己組織型のチームから生まれる。

//An important consequence of these values and principles is that a team should choose its own process - one that suits the people and context in which they work. Imposing an agile process from the outside strips the team of the self-determination which is at the heart of agile thinking.

この価値と原則によりもたらされる結論は、
チームは自らのプロセス——携わっている人、コンテクストに合ったプロセス——を選択しなければならないということである。
アジャイルプロセスを外部から押しつけることは、
アジャイルの心臓部とも言うべき「自発的決定」をチームから奪ってしまうことだ。

//This notion goes further with another principle from the manifesto: "At regular intervals, the team reflects on how to become more effective, then tunes and adjusts its behavior accordingly." Not just should a team choose their own process, the team should be control of how that process evolves.

この考えを推し進めると、もうひとつのアジャイルマニフェストの原則につながる。
「定期インターバルでは、どうすればより効率的にできるかをチームで考える。やり方をチューニングして、適応させるようにする」という原則だ。
チームはただプロセスを選択すればよいのではなく、そのプロセスを進化させていかなければならない。

//This notion of a process made to fit the team (and not the other way around) is a necessary condition for agile methods, but clearly isn't sufficient. A team may choose a totally waterfall, un-agile process. In that case, clearly the process is no more agile than apples taste of strawberries. But agile methods aren't the best for all situations, and personally I'd rather have a team work in a non-agile manner they chose themselves than have my favorite agile practices imposed upon them.

プロセスをチームにフィットさせる（その逆ではない）という考えは、アジャイル方法論の必要条件である。しかし、十分条件ではない。
たとえば、ウォーターフォールのような、アジャイルプロセスではないプロセスを選択するチームもあるだろう。
その場合、リンゴ味のイチゴがリンゴではないように、そのプロセスはアジャイルではない。
ただし、アジャイル方法論はすべての状況においてベストというわけではない。
個人的には、大好きなアジャイルプラクティスを押しつけられるくらいなら、アジャイルではないプロセスを選択したほうがマシだと思っている。

//So I hope I've made clear that imposing agile methods is a very red flag. When I hear about it, however, I'm usually not getting the whole story. There are situations that may look similar from the outside, but aren't really the same.

アジャイルの押しつけは危険信号だと明言しておこう。
ただし、いつもそうだが、これがすべてのことに当てはまるとも限らない。
一見、似たような状況であっても、実際はまったく違うということもある。

//One case is that of learning. Introducing agile methods often involves learning a whole bunch of new things at once, many of which are counter-intuitive. This is particularly true of Extreme Programming. In this situation it's very difficult to tailor a process until you've used it for a while (I wrote about this with respect to XP several years ago). At this point a team is in the Shu stage of ShuHaRi and thus needs to follow the practices pretty slavishly until they get the hang of how they work. In this situation dogmatism and inflexibility are a (temporary) learning tool.

たとえば、学習がそうだ。
アジャイルを導入するときは通常、多くの新しいことを一度に学習することになる。
中には直感では理解できないことも多い。
これは、部分的には、XPの真実である。
慣れるまでしばらくは、プロセスをチームに合わせることは難しい（この点については、数年前にXPを交えた[[記事を書いた|http://martinfowler.com/articles/xpVariation.html]]（[[邦訳|http://www.objectclub.jp/community/XP-jp/xp_relate/xpvariations-j]]））。
チームはまだ[[ShuHaRi]]の「守」の段階で、コツをつかむまでは盲目的にプラクティスをこなす必要がある。
このような状況では、「教義主義」や「非柔軟性」も（一時的には）良い学習ツールとなっているのである。

// Another situation that we are usually in at ThoughtWorks is where we are on a co-sourced project with a client team. In most of these situations we are responsible for the delivery of the software but we need to work with client staff in order to provide a good handover and so that the client people can learn about how we work. In this situation we are being paid to be as effective as we can be, so we'll use a process that works for us. This doesn't mean we don't tailor the process to the client's environment, that's always necessary, but there is a tricky line between sensible tailoring and abandoning the practices that make us successful.

もうひとつの状況は、ThoughtWorksでよく見られるクライアントとの共同プロジェクトチームである。
我々にはソフトウェアを納品する責任があるが、うまく引継ぎを行うためにクライアントと一緒に働く必要もある。そのため、クライアントは我々の仕事のやり方で仕事を行うことになる。
この状況では、我々はできるだけ効果的に仕事を成し遂げる必要があり、そのプロセスは我々に合わせたものとなる。
これはクライアントの環境に我々が合わせないということではない。
それは常に必要である。
しかし、クライアントの環境にうまく合わせることと、我々を成功に導くプラクティスを捨てることの線引きは難しい。

// Those kinds of situations show than imposition isn't as clear cut as it can sound, but the fundamental point remains - imposing agile methods introduces a conflict with the values and principles that underlie agile methods.

以上のような状況では、「押しつけ」はそれほど悪いことではないだろう。
ただし、基本的な点はそのままだ——アジャイル方法論の押しつけは、アジャイル方法論の根底にある価値、原則とコンフリクトするのである。

// This kind of problem was inevitable. I distinctly remember a period when it was fashionable to be object-oriented and all sorts of odd things were done in the name of objects. It's all part of the normal adoption process. There's nothing that can be done to prevent the agile name being applied to very un-agile behaviors - there's no agile police enforcing RigorousAgile. All we can do is for those of us who care to keep trying to explain what agile is really about. And I prefer to explain than convince.

こういった類の問題は必然である。
私はオブジェクト指向とその他オブジェクトほげほげみたいなよく分からないものが流行したことをハッキリと覚えている。
新しいものが受け入れられる過渡期では、これはごく普通のことだ。
アジャイルではないものに「アジャイル」という名前がつくことを防ぐことはできない——[[RigorousAgile]]を取り締まる「アジャイル警察」はいないのだ。
我々にできることは、アジャイルが本当に意味することを説明できるよう、日々心がけることである。
「説得」ではなく「説明」しよう。
