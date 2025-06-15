---
title: TestInvariant
tags: [testing]
---

https://martinfowler.com/bliki/TestInvariant.html

更新：以前のエントリは説明が簡単すぎたので、サンプルコードを追加した。

以前から、息の長い、地味な議論があります。
契約による設計(DbC: Design by Contract)とテスト駆動開発(TDD: Test Driven Development)に関する議論です。
ここでは詳細については触れませんが、
[Daniel Jackson](http://people.csail.mit.edu/dnj/)と会話をしていたときに「DbCとTDDをマージする」というアイデアが出ました。それについて、みなさんにも軽くお話したいと思います。

DbCでは各クラスに不変表明(invariant)を定義します。
不変表明とは、クラスが常に真となる特性を表しています。
オブジェクトは、常にこの不変表明を満たさなければなりません
（何かを処理している最中は除きます）。
Eiffelを使うと、クラス不変表明は、メソッドの呼び出し前（事前条件チェック内で）およびメソッドの呼び出し後（事後条件チェック内で）に自動的にチェックされます。
不変条件が偽だと、例外をスローします。
（このチェックは、パフォーマンス向上のために製品版ではオフにすることもできます）

このアイデアをTDDに適用すると、
クラスの不変表明をテストする共通メソッドを製品版のクラス内に定義することになります。
そして、テストコードの中でクラスの不変表明をテストします。

さて、お馴染みのサンプルの登場です。

 public class Bowler ...
     int overs, runs, wickets;

Bowlerクラスの不変表明は、変数がすべて正になればよいのですから、
次のように定義することができます。

     public boolean passesInvariant() {
         return (runs >= 0 && overs >= 0 && wickets >= 0);
     }

テストのセットアップ後、それから、テスト用の実行を行った後で、
これを呼び出します。

     public void testConcedingRunsAddsToRunsScore() {
         Bowler botham = new Bowler();       // セットアップ(setup) - showing my age
         assert botham.passesInvariant();
         botham.concedeRuns(4);              // テスト用の実行（exercise）
         assert botham.passesInvariant();
         assertEquals(4, botham.getRuns());  // 検証（verify）
     }
私自身はまだこれを試していません。
また、実際にやってみた人がいるかどうかも知りません。
ただ、今述べたことは、面白い考えだと思っています。
