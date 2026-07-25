---
title: エクストリームプログラミング
tags: [agile, agile adoption, extreme programming]
---

<!-- Extreme Programming (XP) is a software development methodology developed primarily by Kent Beck. XP was one of the first agile methods, indeed XP was the dominant agile method in the late 90s and early 00s before Scrum became dominant as the noughties passed. Many people (including myself) consider XP to be the primary catalyst that got attention to agile methods, and superior to Scrum as a base for starting out in agile development. -->

エクストリームプログラミング（XP）とは、主に[ケント・ベック](https://x.com/KentBeck)によって開発されたソフトウェア開発手法である。XPは最初の[アジャイル手法](https://www.martinfowler.com/articles/newMethodology.html)のひとつであり、2000年代以降にスクラムが主流になるまでの90年代後半から2000年代初頭にかけて、XPが代表的なアジャイル手法だった。多くの人々は（私も含めて）アジャイル手法に注目を集めるためにXPが重要な役割を果たしており、アジャイル開発を始める際の基盤としてはスクラムよりも優れていると考えている。

<!-- Kent developed XP over the course of his consulting to Smalltalk projects in the late 80s and early 90s. The full set of practices that came to be known as XP were first used together in the C3 project (where I worked with Kent and learned about it). The name “Extreme Programming” came later as the approach was described, first informally on the WikiWikiWeb and then later in a series of books. Various teams took the description in the WikiWikiWeb and implemented XP themselves, thus replicating the methodology and showing it could be used outside its original home. -->

ケントがXPを開発したのは、80年代後半から90年代前半のSmalltalkプロジェクトのコンサルティングの経験からだった。後にXPとして知られるようになるプラクティスのフルセットは、{% include link to="C3"%}ではじめて同時に使用された（私はこのプロジェクトでケントと一緒に働き、XPについて学んだ）。このアプローチを示す「エクストリームプログラミング」という名称は、当初は[WikiWikiWeb](https://wiki.c2.com/?WikiWikiWeb)上で非公式に使用され、その後の一連の書籍として定着したものである。さまざまなチームがWikiWikiWebの説明を参考にして、独自にXPを実践した。彼らは手法を複製することで、オリジナルの現場以外でも適用可能であることを示したのである。

<!-- Kent describes XP by a progression of ideas from broad and abstract values through principles, to concrete practices - a progression that I find useful to apply in many other contexts. It popularized many practices that have since been widely used in software development, including: continuous integration, refactoring, TestDrivenDevelopment, and agile planning. I particularly like its combination of technical and management practices, which make it a good fit for reaching the delivering zone of agile fluency. -->

ケントはXPを広範で抽象的な「価値」や「原則」から具体的な「プラクティス」まで、考えを段階的に説明してる。私は、この段階的な説明方法は他の多くの文脈でも有用だと考えている。XPはソフトウェア開発で広く使用されている多くのプラクティスを普及させた。たとえば、[継続的インテグレーション](https://www.martinfowler.com/articles/continuousIntegration.html)、[リファクタリング](https://refactoring.com/)、{% include link to="TestDrivenDevelopment" %}、アジャイルプランニングなどである。私は技術プラクティスとマネジメントプラクティスを組み合わせたところが特に気に入っている。このことにより、XPは[Agile Fluency](https://www.martinfowler.com/articles/agileFluency.html)の「デリバリー（Delivering）」の領域に到達するのに適した手法となっている[^fn]。

<!-- Notes
 !-- 1: a contrast to Scrum which intentionally only includes management practices, and is thus vulnerable to becoming FlaccidScrum -->

[^fn]: マネジメントプラクティスしか含まず、{% include link to="FlaccidScrum" %}となる脆弱性を抱えるスクラムとは対照的である。

<!-- Although, like most XPers, I don’t think it’s terribly useful to judge a team on whether they are doing XP or not; I would say that most Thoughtworks projects operate in a style that is primarily influenced by XP. -->

私は（ほとんどのXPerと同様に）「XPを実践しているかどうか」でチームを評価することに意味はないと考えているが、Thoughtworks社のプロジェクトのほとんどは、主にXPに影響を受けたスタイルで運営されている。

<!-- Further Reading -->
## 参考文献

<!-- The definitive description of Extreme Programming is Kent’s white book. (Beware that many of the early practitioners of XP learned the approach using the first edition, and there’s quite a few differences.) -->

XPの決定版とも言うべき解説書は[ケントの白本](https://www.amazon.com/dp/0321278658?lv=shuf&redirect=true&linkCode=as2&creativeASIN=0321278658&tag=martinfowlerc-20&ie=UTF8&creative=9325&camp=1789&channelId=1&plpRedirect=mhFallback)である（XPの初期の実践者たちは第1版の手法を学んでいるので、第2版とは相違点があることには注意してほしい）。

<!-- Although the White Book is the best definition of XP, these days I recommend James Shore’s The Art of Agile Development as a guide to learning the XP approach. Although Shore casts his net wider than Kent’s work on XP, his book is firmly grounded on XP’s key features. -->

白本はXPを定義する最良の書籍だが、私はXPを学ぶためのガイドとしてジェームズ・ショアの『[アート・オブ・アジャイル デベロップメント](https://www.amazon.com/dp/1492080691?lv=shuf&redirect=true&linkCode=as2&creativeASIN=1492080691&tag=martinfowlerc-20&ie=UTF8&creative=9325&camp=1789&channelId=1&plpRedirect=mhFallback)』を推薦している。ケントのXPよりも幅広い話題を扱っているが、XPの主要な特徴にしっかりと根ざした内容だ。

