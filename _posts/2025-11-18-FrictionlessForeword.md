---
title: 『Frictionless』のまえがき
original_page_name: frictionless-foreword.html
tags: [article]
---

<!-- I find most writing on software productivity to be twaddle, but Nicole and Abi are notable exceptions. Here is my foreword to their just-published book. -->

ソフトウェア開発における生産性について書かれたものの大半はクズだ。だが、NicoleとAbiの書籍は注目すべき例外である。出版されたばかりの彼らの書籍に書いた私のまえがきを転載する。

<!-- I'm at lunch with a bunch of senior technology managers, and one is regaling the table with his latest initiative to improve his software development teams. He's launching a metrics program that will tell him which teams and staff members are the most productive so that he can promote those and fire the worst. This is a professional setting, so I'm trying my best not to roll my eyes. Attempting to get a word in edgeways, I ask what metrics he's using, and follow up by asking him if he's trying to consider business outcomes, at least to correlate them to his measurements. Sadly I'm not getting anywhere, it's hard to convince someone to look for their keys in the bushes instead of under the lamp post. -->

上級技術マネージャーたちと昼食を共にしていると、そのうちのひとりが自身の開発チームの生産性向上の取り組みについて語り始めた。彼は昇進や解雇の判断に使えるように、チームやスタッフの生産性を測定する指標プログラムを導入したそうだ。仕事の場だったので、私は呆れた顔をしないように必死にこらえながら、「どのような指標を使っているんですか？」と聞いた。続けて「ビジネスのアウトカムについては考慮していますか？少なくとも測定と関連付けようとしていますか？」と質問した。残念ながら、私の質問は通じなかったようだ。街灯の下ではなく、鍵を落とした茂みのなかを探すように説得するのは難しいと思い知らされた。

<!-- Almost every engineering manager I've met wants to make their team more productive, but almost every developer I've met wants to be more effective at what they do. But lunches like that easily lead developers to the cynicism that talking about productivity is about making simplistic measurements which forget the invincible power of Goodhart's Law: “When a measure becomes a target, it ceases to be a good measure”. -->

私がこれまでに出会ったほぼすべてのエンジニアリングマネージャーはチームの生産性の向上を望んでいたが、私がこれまでに出会ったほぼすべての開発者は自分たちの仕事を効果的に進めたいと思っていた。先ほどの昼食会の話を開発者が耳にすると、生産性は揺るぎない[グッドハートの法則](https://en.wikipedia.org/wiki/Goodhart%27s_law)（ある指標を目標に設定すると良い指標ではなくなる）を無視した、単純化された測定にすぎないと冷笑的に考えてしまうだろう。

<!-- But occasionally I run into folks who study developer productivity without falling into magical thinking - such as Nicole and Abi. -->

しかし、開発者の生産性を研究しながらも、安易な考え方に陥らない人たちに出会うこともある。たとえば、NicoleとAbiがそうだ。

<!-- The key to this book is that they don't think in terms of how to whip people into greater productivity, but how to find the sources of friction that slow them down. Friction is when I have to submit a pull request that sits for a couple of days while I forget about the code, or spend two days wrangling some infrastructure that ought to be a simple API call. Smoothing away these points of friction is the essence of improving Developer Experience - and thus speeding up getting useful software into the hands of its users. -->

本書の重要なポイントは、人々の生産性を強制的に高めようとするのではなく、生産性を低下させる**摩擦**の要因を特定しようとしているところにある。摩擦とは、数日前に書いて内容を忘れたコードをプルリクエストしなければならないことや、単純なAPI呼び出しで済むはずだったのにインフラの整備に2日間かけてしまったことなどである。こうした摩擦点を取り除くことが、開発者体験の向上（さらには有用なソフトウェアをユーザーにいち早く届けること）の本質だ。

<!-- They describe effective developer experience in terms of three elements: feedback loops, flow state, and cognitive load. We can only find out whether we are on the right path by getting rapid feedback. The longer the delay between that blue dot moving on my phone-map, the longer I walk in the wrong direction before realizing my mistake. If our feedback is rapid, we can remain in the second element, a flow state, where we can smoothly and rapidly get things done, improving our products and our motivation. Flow also depends on our ability to understand what we need to do, which means we must be wary of being overwhelmed by cognitive load, whether it comes in the form of poorly structured code, flaky tests, or interruptions that break our flow. -->

彼らは効果的な開発者体験を3つの要素で表している。それは「フィードバックループ」「フロー状態」「認知的負荷」である。正しい道を進んでいるかどうかを判断するには、迅速なフィードバックが不可欠だ。地図アプリで青い点が動く間隔が長ければ長いほど、間違った方向に進んでいると気づくまでの時間は長くなる。フィードバックが迅速であれば、第二の要素「フロー状態」を維持できる。これはスムーズかつ迅速に物事を成し遂げることができ、プロダクトやモチベーションを高めることのできる状態だ。フロー状態を維持するには、自分が何をすべきかを理解する能力も重要である。つまり、構造化されていないコード、不完全なテスト、フローを中断させる妨害などで、「認知的負荷」が高まらないように注意を払う必要がある。

<!-- Focusing on developer experience is about finding what gets in the way of these three elements. Improving developer experience leads to better outcomes for the business. Those lost hours wrangling with infrastructure is money wasted on developers' salary, and revenue lost because the software took longer to get into production. -->

開発者体験の向上とは、これらの3つの要素の阻害要因を特定することである。開発者体験を改善すれば、ビジネスのアウトカムにつながる。インフラの整備に手間取った結果、開発者の人件費がムダになっただけでなく、ソフトウェアが本番投入されるまでの収益の損失にもつながってしまった。

<!-- The bulk of this book is how to develop a program to find these friction points, figuring out which bits are causing the most trouble - and fixing them. It involves metrics, but used to gain a greater understanding of developer experience. While commit frequency is a simple number that's easy to capture, it can only tell part of the story. Well-chosen developer surveys open up an oft-ignored perspective, interviewing developers adds vital context to the numbers. It's tricky to correlate these to the bottom line, but if we can, these metrics can guide us to a more effective operation. -->

本書の大部分は、こうした摩擦点を特定するプログラムの開発方法（多くの問題を引き起こしている部分を特定して修正する方法）について述べている。指標も含まれているが、開発者体験を深く理解するために使用するものである。コミットの頻度は取得が簡単な単純な指標だが、それだけでは全体像を把握できない。適切に設計された開発者アンケートであれば、無視されがちな視点を明らかにできる。開発者にインタビューすれば、数値データに重要な背景を追加できる。これらを収益と結びつけることは簡単ではないが、もしそれが可能であれば、効果的な運営の指針となるだろう。

<!-- While Goodhart's Law remains my favorite saying about measurement, a recent one that I like is: -->
グッドハートの法則は測定に関する大好きな格言だが、他にも最近気に入っている格言がある。

<!-- An incomplete measurement is better than no measurement, 
 !-- if you treat it as a clue instead of judgment. -->
<!-- -- Jessica Kerr -->

> 不完全な測定であっても、それを判断材料ではなく手がかりとして扱うのであれば、まったく測定しないよりもマシだ。
> ―[Jessica Kerr](https://jessitron.com/2024/12/22/okrs-for-evil-and-good/)

<!-- This is a guide book to finding clues. -->
本書は、こうした手がかりを見つけるためのガイドブックである。
