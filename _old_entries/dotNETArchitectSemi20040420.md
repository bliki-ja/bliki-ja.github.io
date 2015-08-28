---
title: dotNETArchitectSemi20040420
tags: TAGS
---

2004 年 4 月 20 日に開催された Martin Fowler 来日公演のメモです。

間違い等ありましたら、ご指摘ください。--[[kdmsnr]]

* 動画：http://www.microsoft.com/japan/msdn/webcasts/
* 資料：http://roots.dnd.no/downloads/2003/Fowler_Martin/eaa.ppt
** http://roots.dnd.no/repository/03_Fowler_Martin_eaa.ppt 
----
{{toc_here}}
----
!Q&A

!!ドメインモデルにおけるパフォーマンスは？（instantiate costとか）

パフォーマンスはドメインモデルだけの問題ではない。ドメインモデルで問題となるのは、オブジェクトが多く存在することによるinstantiate costではなく、DBへのアクセスの問題であることが多い（ORマッピングが適切に行われていないのが原因である）。例えば、１ユーザーに対して50契約あれば、50インスタンス作ることになってしまって、クエリも50回で……といったアホな設計だとDBアクセスは苦しくなる。

また、locking interactionが発生する可能性もある。locking interaction問題が発生していれば、単数ユーザだけでなく、複数ユーザでのテストもしっかり行っておこう。

パフォーマンスの問題を扱う際には「測定」が必要である。パフォーマンス測定に時間をかけておいて損は無い。

!!SOAとdistributedなシステムについて。

SOAの定義は様々である。MSのPDCのパネリストとして参加したとき、5人のパネリスト全員が口々に「SOAはXXXである」と異なる定義をしていた。私の番になったとき、私は「SOA……私はよく分かりません」と答えた。結局、みなが私の意見に賛同してくれた。

SOAはアプリケーション同士のインタラクションを可能にする状況を示すことがある。Web ServiceなどがSOAのほぼ同義語として用いられる。distributeする予定がなくとも、システムをdistributeせざるを得ない場面がよくある。このとき、非同期にするのは超重要。そのときは、Gregor Hohpeの『[[Enterprise Integration Patterns|http://www.eaipatterns.com/]]』をお勧めする。これは、私たちに欠けていた非同期メッセージングによるパターンを提供してくれる（私にはこれほどのものを書く時間も力もないので、Gregorにお願いして書いてもらった）。

注意してほしいのは、シングルアプリケーションのLayering（presentation - domain - data source）をメッセージングにて行うのは単なるバカであるということだ。両端を自分で管理できるのであれば、いっそのことつなげてしまえ。==RMIやら.Net Remotingやら、そんなのは==Web Serviceなんかここで使うもんじゃない。どうしてもリモートで、というのであればRMIやら.Net Remotingを使え。

SOAとはシステムを大きなオブジェクト（データとプロセスとインターフェイス）だと見なすこともある。つまり、ここで言いたいのは、SOAの定義はたくさんあるってことだ。

!!パターンやリファクタリングを技術者に根付かせる方法は？

両者は密接な関係がある。半年以内にJoshua Kerievskyが書いた『{{isbn('0321213351','Refactoring to Patterns')}}』が発刊されるので、そちらを読んで欲しい。これは、パターンをリファクタリングして別のパターンへと変更したりする術を、Toy Code Exampleではなくちゃんとしたコードでもって説明してくれている。Martin Fowlerシグニチャシリーズで出る予定だ。

!!エンタープライズアプリケーションにおけるテスティングフレームワークについて

ドメインモデルがテストしやすいのは、言うまでもないだろう。
エンタープライズアプリケーションを作る際に気をつけるべきなのは、テストしやすいかどうかである。まず、データベースのスタブを作ること（これだけで開発スピードが上がる）。それから、簡単なUIドライバをクライアントとして用いることだ。

!!Java界隈ではDependencyInjection (IoC)やAOPが花盛りだが、これらは.NETに適応できるか？

DependencyInjectionという言葉を使うということは、私の書いたものを読んでいるということだね。これは[[日本語訳|http://www.kakutani.com/trans/fowler/injection.html]]もされている。

DependencyInjectionはコンポーネントのコンビネーションを担うものだ。EJBが嫌われているための代替案であるLight Weight Container には、Pico ContainerやSpring Frameworkなどがある。DependencyInjectionのキーとなるパターンは、.NETでも使える。ロンドンでの事例があるので、しばらくしたら私のサイトで事例紹介をすると思う。JavaもC#もそれほど変わりが無いので、どちらでも使えるだろう。

!参加者リンク
追加していってください。
*2004-04-21 (水) 00:00:18 ''[[kdmsnr]]'' : http://capsctrl.que.jp/kdmsnr/diary/20040420.html#p03
*2004-04-21 (水) 00:24:33 ''[[名無しさん]]'' : http://inomata.lolipop.jp/archives/2004/4/20/martin-fowler-in-tokyo/
*2004-04-21 (水) 00:58:14 ''[[WR]]'' : http://www.csus4.net/WR/d/?date=20040420
*2004-04-21 (水) 01:42:33 ''[[arton]]'' : http://arton.no-ip.info/diary/20040421.html#p01
*2004-04-21 (水) 10:06:17 ''[[名無しさん]]'' : http://blog.goo.ne.jp/izumi_kanesada/e/4d1aa14f187836767fef3190bc4eaf9f
*2004-05-06 (木) 15:07:56 ''[[名無しさん]]'' : http://www.ineta.jp/activity/event/dotnet_as040420/dotnet_as040420.htm
*2004-07-16 (金) 11:25:58 ''[[名無しさん]]'' : [[アーキテクト・セミナーレポート|http://www.ric.co.jp/sol/contents/sol_0407/sol_architect.html]]
{{comment}}

