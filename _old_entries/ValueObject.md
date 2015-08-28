---
title: バリューオブジェクト
tags: TAGS
---

http://martinfowler.com/bliki/ValueObject.html

P of EAA で、[[Value Object|http://martinfowler.com/eaaCatalog/valueObject.html]] は通貨や時間のような、小さなオブジェクトだと述べました。
Value Object では、キーとなるプロパティは、参照というよりも「値」として扱われます。

オブジェクトが等しいかどうかということは、この場合、アイデンティティに基づいているものではないため{{fn('（訳注）同じオブジェクトかどうかで同一視をするのではなく、単に数値が同じであれば同一だと見なす。')}}、簡単に違いが分かるでしょう。
フィールド値が同じであれば、2つのValue Objectは同じものだと言えます。
サブセットが同じであれば、すべてのフィールド値を比較する必要さえありません。
たとえば、通貨オブジェクトの場合、通貨コードさえあれば、両者が等しいかどうかが判断できます。

Value Object は不変でなければならないとよく言われます。
Value Object を変更しなくてはならない場合は、いっそのこと新しいオブジェクトと入れ替えたほうがよいでしょう。
元のオブジェクトを修正するのはよくありません。エイリアス問題が発生します。

J2EE初期の文献では、Value Objectは別の意味で用いられていました。
それは私が [[Data Transfer Object|http://martinfowler.com/eaaCatalog/dataTransferObject.html]] と呼んでいるものでした。
以来、[[Transfer Object|http://java.sun.com/blueprints/patterns/TransferObject.html]] が代わりに用いられるようになりました。

Value Objectに関する教材は、[[Dirk Riehle|http://www.riehle.org/computer-science/research/1998/ubilab-tr-1998-10-1.html]] の [[wiki|http://c2.com/cgi/wiki?ValueObject]]にあります。
