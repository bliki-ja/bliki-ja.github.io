---
title: データの塊
tags: [bad things, clean code, refactoring]
---

https://martinfowler.com/bliki/DataClump.html

> 2、3個の値があったら、それ$%#$%^オブジェクトにできるよ——俺（楽しそうに）

これは著書『リファクタリング』のなかでも好きなCodeSmellだ。
同様のデータ項目が一緒になって行き交っているときにこの臭いは発見できる。
たとえば、「Start（開始）」と「End（終了）」なんかは、「[Range（範囲）](https://martinfowler.com/eaaDev/Range.html)」にすべきデータの塊だ。
通常、データの塊はプリミティブな値で、誰もオブジェクトにしようと考えないようなものだ。

まずは、データの塊を見つけたらオブジェクトに置き換えてみよう。
一発でパラメータの数が減る。
それに、興味深いことに、オブジェクトを作るとその振る舞いを探し出すもんなんだよ。
