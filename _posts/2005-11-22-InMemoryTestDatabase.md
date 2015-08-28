---
title: メモリ内データベース
tags: [testing, database]
---

http://martinfowler.com/bliki/InMemoryTestDatabase.html

2005/11/22

最後の部分を更新

//An in-memory database is a database that runs entirely in main memory, without touching a disk. Often they run as an embedded database: created when a process starts, running embedded within that process, and is destroyed when the process finishes.

メモリ内データベース（別名：組込みデータベース）とは、ディスクにアクセスすることなく、完全に主記憶装置内だけで動作するデータベースのことである。
プロセスが起動した時点で作成され、プロセス内で動作し、プロセス終了時に破棄される。

一見すると、このすばらしいアイデアは、バカげた話のように聞こえる。データベースの主な目的は、プロセス終了後の情報の永続化と、複数のプロセスからの同時アクセスの制御の2つだ。だが、メモリ内データベースはそのどちらも行わない——では、利点は何なのだろう？

//While most people think of databases as large disk-centered creatures, there's a small but busy world of in-memory databases out there. There are applications which need fast access to some sort of managed data which doesn't need to be persisted either because it doesn't change, or it can be reconstructed (imagine a routing table in a router, or an EventPoster.)

多くの人はデータベースのことを巨大なディスクの化け物と思っているだろうが、
体は小さいが働き者のメモリ内データベースの世界がやってきたのである。
変更されていないから、もしくは、再生成できるから、といった理由で、
永続化されていないデータに高速にアクセスしたいアプリケーションがある。
（たとえば、ルータのルーティングテーブルやEventPosterなどだ）

//Yet even developers of traditional database systems can find an in-memory database useful, particularly for testing. When you're developing an enterprise application, tests that hit the database can be a huge time drain when running your test suites. Switching to an in-memory database can have an order of magnitude effect which can dramatically reduce build times. Since most ThoughtWorkers get the shakes if they haven't had a green bar recently, this makes a big difference to us.

伝統的なデータベースシステムの開発者であっても、
メモリ内データベースは便利なものになるだろう。
エンタープライズアプリケーションを開発しているとき、
データベースにアクセスしなければならないようなテストのテストスイーツを走らせると膨大な時間を無駄にしてしまう。
これをメモリ内データベースに変更すれば、
ビルド時間を大幅に短縮できるなど桁違いの効果が得られるだろう。
多くのThoughtWorkerはグリーンバーをしばらく見ないと震えあがるので、我々にとってこれは大きな違いである。

//There are two routes people seem to take to a in-memory database for testing. The first one is to use a SQL in-memory database library. In Java-land the popular one seems to be HSQLDB. Elsewhere SQLite and Firebird come up. The nice thing about these tools is that they allow you to use regular SQL to query them. One issue is that they may not support quite the same dialects or have all the features of the target database. You can do something similar by running a file-based database on a ram disk, which allows you to keep the test and production deployments closer to each other.

メモリ内データベースをテスト用に採用するには、2つの方法がある。
まず、SQLメモリ内データベース ライブラリを使用することだ。
Javaの世界でポピュラーなのは、[HSQLDB](http://hsqldb.org/)だろう。
その他の世界では、[SQLite](http://www.sqlite.org/)や[Firebird](http://firebird.sourceforge.net/)が登場している。
これらのツールがナイスなのは、標準SQLで問い合わせができる点だ。
逆に問題なのは、使用するデータベースと同じ方言をサポートしていなかったり、すべての機能を持っていなかったりする点である。
似たようなことは、RAMディスクにファイル ベースのデータベースを走らせればできる。

もうひとつの方法は、すべてのデータベース アクセスを抽象化して、[レポジトリ](PofEAA:Repository)の背後に置くことである。
そうすることで、データベースをメモリ内のデータ構造に置き換えることができる。
通常、オブジェクト グラフの最初のポイントを指すハッシュ テーブルがあれば十分だ。
レポジトリの強みは、一貫した方法で非SQLデータソースにもアクセス（そして、スタブ化も）できる点である。
つまり、あなたのオブジェクト リレーショナル マッピング システムもレポジトリの中に隠すことができるわけだ。

中にはメモリ内データベースを毛嫌いする人もいる。
SQLやオブジェクト リレーショナル マッパーのコードをドメイン モデルに撒き散らしたいという信念をもっているからだ。
メモリ内データベースは、アクセス速度を大幅に向上させる以外にも、
レポジトリがないという「臭い」を消すデオドラントとしても機能する。

これまでのところ、テストが主な使い道になっている。
しかし、メモリ内データベースにはまだ多くの使い道があると思う。
メモリサイズは、アプリケーション データベースの多くをロードできるほど、十分にある。
もし、アプリケーションの状態のすべての変更をイベントログとして記録するならば、
ログを読み込んだ結果のキャッシュとしてメモリ内データベースを使用することができ、
必要に応じてログの再構築をしたり、スナップショットを撮ったりすることができる。
これは、読み出しは多いが書き込みは少ない場合には、非常にスケーラブルかつ高パフォーマンスなスタイルになるだろう。

[Prevayler](http://www.prevayler.org/)はこの種のアプローチを採用しており、多くの注目を集めている。
実際に試した人間は、メモリ内オブジェクトと密結合されており、マイグレーション ツールが無いために深刻な問題になるだろうと述べていた。
しかし私は、記録システムとして変更ログを永続化するアプローチは、これから深く掘り下げていくことのできる肥沃な土地だと考えている。

!!フォローアップ

このページを書いてから、興味深いメールを何通かいただいた。
ここでいくつかポイントを共有しようと思う。

ある方は、SQLは得意だがオブジェクトが苦手なことにメモリ内データベースを使っているようだ。
SQLが好きな開発者は、普通はマイノリティのようだが、
たしかにSQLの方がオブジェクトや手続き型コードよりもエレガントに解決できることもある。

同僚のSteve Sparksが、最近のプロジェクトについて教えてくれた。
まず最初に、稼働中のデータベースからデータを引っ張り出し、
それをファイルに保存して、メモリ内レポジトリを初期化し、テストを行う。
そうすることで、その後のクエリはデータベースにアクセスせずに済むのだ。
私はこの手法をC3プロジェクトで最初に目にした。
そこでは、SQLクエリストリングをkeyにしたハッシュテーブルにデータを格納していた。
valueがない場合は、DB2にアクセスして結果をキャッシュした。

（
Peter Becker、Zane Rockenbaugh、Steve Sparksからのコメントに感謝。
また、社内メーリングリストで有用なコメントをくれたThoughtWorkersにも感謝したい。
）
