---
title: ペンディングHEAD
tags: [version control]
---

2007/4/26

//I'm a big fan of Continuous Integration, it's an relatively simple practice that can make a huge difference to most development teams. However like most practices it has its flaws^H^H^H^H^H opportunities for improvement. Paul Duvall, author of the soon-to-be-standard book on the subject, pointed out one of these recently. If the commit build breaks, the whole team is affected and potentially slowed until it's fixed.

諸君、私は[[継続的インテグレーション|http://www.objectclub.jp/community/XP-jp/xp_relate/cont-j]]が大好きだ。
シンプルなプラクティスが開発チームに甚大な影響を与えるのが好きだ。
だがあらゆるプラクティスがそうであるように、欠陥^H^H^H^Hカイゼンの余地がある。
[[Paul Duvall|http://www.testearly.com/category/duvall/]]（{{isbn '0321336380','まもなく出版される継続的インテグレーション本'}}の著者）がこの点について[[指摘|http://www.testearly.com/2007/04/25/the-future-of-continuous-integration/]]していた。
コミットビルドが失敗すると、チーム全体に影響し、それが修正されるまでスピードが落ちてしまう。

//When we first started doing Continuous Integration at ThoughtWorks, this one of the of the things that worried me about the way we were doing it. It worried me because there was an important difference between between the ThoughtWorks 2000 style and the style we'd used at C3.

ThoughtWorksで継続的インテグレーションを始めた頃、
そのやり方について心配していたことがあった。
ThoughtWorks 2000のスタイル（訳注：2000年頃のやり方）と
[[C3]]プロジェクトで使っていたスタイルが違っていたからだ。

//The ThoughtWorks 2000 style is pretty much the canonical style of CI used today. Once you are happy with your work you commit it to the repository, and then build it on the build machine (either manually for with a CI server like CruiseControl). The problem lies if your commit is bad, anyone who updates will get failing code until you fix it.

ThoughtWorks 2000スタイルは、今日使われているような通常の継続的インテグレーションスタイルである。
成果に満足したらレポジトリにコミットし、ビルドマシーンでビルドする（あるいは、CruseControlなどのCIサーバで手動でビルドする）。
問題は、誤ったコードをコミットしてしまい、
それが修正されるまで、アップデートすると欠陥コードが出てくるということだ。

//In the C3 way of doing it we didn't commit to the head of repository directly. C3 was a Smalltalk project and used Envy, a Smalltalk-oriented repository system. Envy had some different concepts to mainstream repositories. Since it's ages since I used it my memory on exactly how it worked has gone all fuzzy, but the basic idea was that when you were working on your feature you committed to editions. An edition was like a private branch, visible to everyone but not blessed. Only when you had a successful build on the build machine would you upgrade your edition into a release, which was the equivalent to the mainline. This way you never got broken code into the mainline of the project.

C3流ではレポジトリのHEADに直接コミットしない。
C3はSmalltalkのプロジェクトで、Envy（Smalltalk指向レポジトリシステム）を使っていた。
Envyは主流のレポジトリとは少しコンセプトが異なっている。
ずいぶん昔のことなので、どういう動きをしていたか記憶が定かではないが、
基本的に、作業中は「エディション」にコミットすることになる。
これはプライベートなブランチのようなものだ。
みんなに見えるが、干渉はされない。
ビルドマシンでビルドに成功したときだけ、
エディションを「リリース」にアップグレードする。
これはブランチではなくメインラインに相当する。
この方法だと、壊れたコードをプロジェクトのメインラインに入れてしまうことは決してない。

//Envy made it easy to work this way, the version control systems we mostly use now make it more tricky. Ideally you want to create a working copy that updates from the true head (to keep you in sync) but commits to a different pending-head branch. Only a successful integration build can actually commit to the true project head. A continuous integration server would check out from the pending head and, if successful, commit to the true head.

Envyだとこのような使い方が簡単にできる。
今日のバージョン管理システムでは、少しトリッキーにならざるを得ない。
理想を言えば、ワーキングコピーを作って、
アップデートはHEADから行って同期するようにしておき、
コミットは別のHEAD（ペンディングHEAD）にコミットする。
そして、インテグレーションビルドに成功したときだけ真のHEADにコミットする。
継続的インテグレーションサーバは
ペンディングHEADからチェックアウトして、
ビルドに成功したら、真のHEADにコミットする。

//How difficult is it to set something like this up yourself? I'm not sure, I haven't chatted with a team that's done it2. However a number of team oriented tools are providing this kind of capability. For example JetBrains's TeamCity does it under the name "delayed commit". Paul also mentions Borland's Gauntlet.

こういったものを自分でセットアップするのは難しいのだろうか？
すでにやったことのあるチームがいるが、まだ話していないのでよく分からない。
だが、いくつかのチーム指向のツールを使って、同等のことができる。
たとえば、JetBrainの[[TeamCity|http://www.jetbrains.com/teamcity/]]では「遅延コミット」と呼ばれている。
また、PaulがBorlandのGauntletについて言及している。

//The other question is how much it matters. Despite my worries we didn't get enough pain from broken builds to want to install a pending head in 2000. If you get a lot of broken integration builds there are other ways to fix it. Often the main problem is that people aren't doing a private build before they commit. As usual the people-issue is often a more important issue to deal with before introducing more complicated technology.

他にも、これがどれだけ重要なのかという疑問もある。
2000年における私の心配は杞憂で、我々はビルドが失敗してもペンディングHEADを採用ほどダメージを受けることはなかった。
ビルドが失敗しても、それを直す方法は他にもある。
問題なのは、コミットする前に自分のところでビルドしないことだ。
毎度のことだが、複雑な技術を導入する前に考えなければいけないのは、
人の問題なのである。
