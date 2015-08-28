---
title: ヘッダーインタフェース
tags: [API design]
---

http://martinfowler.com/bliki/HeaderInterface.html

ヘッダーインタフェースとは、クラスのpublicインタフェースをそのまま明示的なインタフェースにしたものである。基本的に、クラスのpublicメソッドをすべてインタフェース内で宣言することになる。こうすることで、実装クラスを別のものに置き換えることができる。これは[[RoleInterface]]とは反対のことである——詳細および利点、欠点についてはそちらのページで論じている。
