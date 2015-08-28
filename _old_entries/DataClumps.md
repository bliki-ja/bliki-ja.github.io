---
title: DataClumps
tags: TAGS
---

http://martinfowler.com/bliki/DataClump.html

//    Whenever two or three values are gathered together - turn them into a $%#$%^ object.

""2、3個の値があったら、それ$%#$%^オブジェクトにできるよ''——俺（楽しそうに）''

//--Me (it was funnier with the voices)



//This is one of my favorite CodeSmells from the refactoring book. You spot it when you constantly see the same few data items passed around together. start and end are a good example of a data clump wanting to be a range. Often data clumps are primitive values that nobody thinks to turn into an object.

これは著書『リファクタリング』のなかでも好きなCodeSmellだ。
同様のデータ項目が一緒になって行き交っているときにこの臭いは発見できる。
たとえば、「Start（開始）」と「End（終了）」なんかは、「[Range（範囲）](http://martinfowler.com/eaaDev/Range.html)」にすべきデータの塊だ。
通常、データの塊はプリミティブな値で、誰もオブジェクトにしようと考えないようなものだ。

//The first step is to replace data clumps with objects and use the objects whenever you see them. An immediate benefit is that you'll shrink some parameter lists. The interesting stuff happens as you begin to look for behavior to move into the new objects.

まずは、データの塊を見つけたらオブジェクトに置き換えてみよう。
一発でパラメータの数が減る。
それに、興味深いことに、オブジェクトを作るとその振る舞いを探し出すもんなんだよ。
