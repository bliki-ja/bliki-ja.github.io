---
title: VisualChannel
tags: [presentations]
---

http://martinfowler.com/bliki/VisualChannel.html

2010/12/6

//At the end of the 1990's I made a personal push-back against using slides in presentations, as I was tired by poorly designed bullet-points presentations. For around a decade, I gave keynotes with no slides at all. 
//In the last year or so 
//	I've started using slides again - primarily inspired 
//	by watching my colleague Neal Ford 
//		who turns the dreaded slide-deck into a genuine enhancement to 
//		his talks (and is collaborating on a book project to pass on his techniques). 
//As I've been working with slides again, 
//	I've also been thinking about 
//	what makes a set of slides an effective part of a talk. 
//The main principle 
//	I've tried to follow is 
//		to think of them as a visual channel 
//	that complements the audio channel which is my spoken words. 
//I find that thinking them of separate channels in this way 
//	helps me avoid common problems with presentations 
//	- many of which are rooted in the commonplace bullet point slides.

1990年代の終わり頃、
私はプレゼンテーションでスライドを使わないと決めた。
見栄えのしない箇条書きのプレゼンテーションに飽きたのだ。
それから約10年間、基調講演ではスライドを一切使っていない。
しかし、去年あたりから、またスライドを使い始めたのだ。
同僚のNeal Fordからの影響が大きい。
彼のスライドは、講演のいい味付けになっている
（彼のプレゼンテーション技術を伝える[本を共著で執筆中](http://presentationpatterns.com/)のようだ）。
スライドを使い始めてから、
どうすればスライドを効果的に使えるかを考えている。
私が実践している原則は、
講演の言葉を音声チャンネルとした場合に、
スライドをそれに対する視覚チャンネルと考えることである。
チャンネルを分けて考えることで、
プレゼンテーションの問題を回避できるのではないかと思っている
（問題の多くは平凡な箇条書きのスライドが原因だ）。

[[http://martinfowler.com/bliki/images/visualChannel/sketch.png]]


 【図中】
 「（計画駆動）ソフトウェア開発は、確かな要求仕様があるかどうかで決まります」

//Most presentation mavens 
//	will tell you to avoid bullet point slides, 
//	but that leaves the question of what should should go there. 
//When I think of a complimentary visual channel, 
//	it makes me think of what visual elements will match my words. 
//	This means that the visual channel needs 
//		to make the same point, 
//		but in a different way.

プレゼンの達人は箇条書きを避けよと指摘する。
では、何を使えばいいのだろうか。
私が視覚チャンネルについて考えるときは、
言葉に合う視覚要素は何なのかを考えている。
つまり、伝える手段は違っても、伝えることは同じでなければならないのだ。

//Saying the same thing differently 
//	implies getting away from words on the slide 
//	- or at least words that take much attention to read. 
//That's one reason 
//	why bullet point sentences are out. 
//But I find words can work, 
//	providing they are just words not sentences.

同じことを異なる手段で伝えるには、スライドに文章を入れないことだ
（少なくとも熟読してしまうような文章は避ける）。
箇条書きがダメな理由がこれだ。
ただし、単語は有効だと思う。文章ではなく単語だ。

//The common approach these days for post-bullet-point presentations 
//	is to use photographs. 
//I've derided this by saying 
//	that stock photos are the bullet points of the 21st century. 
//By this I don't mean 
//	that photos are always wrong, 
//	but they often seem to be very unconnected with the speaker's words. 
//I get the impression of many hours spent crawling the internet 
//	for some photo 
//	that tenuously goes with the talk. 
//(And please, if you use photos, make sure you credit the photographer.)

箇条書きプレゼンテーションの後継は、写真を使ったプレゼンテーションだ。
「Stock Photosは21世紀の箇条書きだ」と言ったらウケた。
写真が悪いということではないが、
話し手の言葉と合っていないことが多い。
長い時間かけて講演に合っていない写真を
インターネットで探しているのではないかと思う
（それから、写真を使うときは必ず撮影者を記名すること）。

//What I tend to use most is simple diagrams. 
//I try to find some arrangement of simple graphics (and words) 
//	that through their visual positioning 
//		can help to illustrate, 
//		and thus better explain, my words.

私がよく使っているのは簡単な図だ。
簡単な図（と単語）を並べて、
視覚的に使うことで、
私の言葉を補足し、
より良い説明としてくれるのではないかと思っている。

//Here's a somewhat random example 
//	that I picked from my Essence of Agile talklet.

私のTalkLet{{fn '訳注：対話しながら進める講演のことらしい。'}}
「アジャイルのエッセンス」から例を示そう。

[[http://martinfowler.com/bliki/images/visualChannel/essenceAgile.015.png]]

 【図中】
 ソフトウエア開発 ---決まる---> 確かな（？）要求
                                  ↑
 要求仕様の策定               ┌─┘固める
                          ┌─┘
             変更審査委員会
                                      署名

//At this point in the talk 
//	I'm describing the plan-driven approach to software 
//	that the creators of agile were pushing back against. 
//My actual words 
//	that go with slide vary depending on the day I give the talk, 
//	but they hit these points:

この講演では、
アジャイルの創設者が反対する
計画駆動ソフトウエア開発についての話をした。
実際のスライドの単語は講演日によって違うが、
基本的には以下のことを示している。

//(In a plan driven world)

（計画駆動の世界では、）

//* The software development activity depends on having stable requirements
//* Most of the time, the stability of requirements is questionable
//* The plan-driven community knows that requirements stability is hard so explicitly seeks to stabilize them
//* Stabilization techniques include up-front requirements, change control boards, and sign-offs

* ソフトウェア開発は、確かな要求があるかどうかで決まる。
* 多くの場合、確かな要求は疑わしい。
* 計画駆動のコミュニティも確かな要求の難しさは分かっている。そこで、要求を固めようとする。
* そのための技術には、要求仕様の策定、変更審査委員会、署名などがある。

//In my talking, 
//	I don't verbally state the techniques, 
//	instead leaving that list for the slide to illustrate. 
//I think a list of examples is best left to the visual channel.

講演では、最後の技術については口に出さない。スライドで示すだけだ。
例を一覧で示すのは視覚チャンネルに適している。

//I've shown this slide as a single graphic, 
//	but when I give the talk 
//	the slide builds up over a sequence of slides and builds, 
//	with me timing the builds to match what I'm saying. 
//This is an example of another 
//	aspect of my approach 
//	to the visual channel 
//	- using motion. 
//Of course it's not uncommon for people 
//	to use animations on slides, 
//	but too often these animations are 
//		gratuitous sizzle that are there purely to show off the 
//			capabilities of the presentation software. 
//I've no problem in using sizzle, 
//	but I try to always match an animation 
//		to what I'm saying, 
//		so that the animation can be part of that semantically rich visual channel.

ここではスライドを1つの図として紹介したが、
実際に講演するときは、複数のスライドや要素を使って構成し、
講演のタイミングに合わせて表示するようにしている。
もうひとつの視覚チャンネルの使い方は、動きを使うことだ。
スライドでアニメーションを使うのはよくあることかもしれない。
しかし、使いすぎると、
プレゼンテーションソフトの機能を紹介するだけになってしまう。
効果的に使うのは構わない。
私は、言葉に合ったものを選び、
アニメーションが意味を豊富に含んだ視覚チャンネルになるようにしている。

//An example here is what I do with the slide after this one. 
//That slide is very similar to this one, 
//	just showing an earlier point 
//	in the build sequence 
//	(the point of software development depending on requirements stability). 
//Most of the time I just use a simple fade to transition 
//		from one slide to another, 
//		but in this case I'm starting to discuss 
//		the agile approach to dealing with this dependency. 
//As a result 
//	I do a fancy 3D cube rotation animation, 
//		to illustrate the point that we are changing perspectives into the agile world-view. 
//Whenever I switch 
//	between the plan-driven and agile world-views in the talk, 
//	I do a 3D cube rotate. 
//That transition is eye-candy, 
//	but when used this way 
//	I think it's eye-candy that helps communicate the point I'm making.

ここで示した例は、アニメーションを使ったあとのものだ。
これとよく似ているが、最初は前述した部分（ソフトウェア開発は、確かな要求があるかどうかで決まる）だけを示していた。
私は、フェードを使ってスライドを移動することが多いが、
アジャイル手法について話すときは、3Dキューブを使っている。
アジャイルの世界に入り、視点が変わったことを示すためだ。
このトランジションは、
見た目に楽しく、
私の伝えたいことをうまく伝えられると思っている。

//I think 
//	that since we have animation available to us 
//	when doing presentations, 
//	we should use it to enhance the visual channel, 
//	providing I can do this in a way 
//		that fulfills the role of the visual channel. 
//That role is 
//	to keep the eyes engaged in an activity 
//		that supports my words 
//		without distracting from them.

プレゼンテーションでアニメーションが使えるのだから、
視覚チャンネルの役割を果たすのであれば、是非使うといいだろう。
その役割とは、
私の言葉を支援する活動に注意を向けるものであり、
注意をそらすものであってはならない。
