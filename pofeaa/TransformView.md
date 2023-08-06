---
layout: pofeaa
title: トランスフォームビュー
---

原文: <https://www.martinfowler.com/eaaCatalog/transformView.html>

*ドメイン モデル要素ごとに処理し、HTMLへと変換するビュー。*

解説の全文は『PofEAA』 **361** ページを参照。

![](https://www.martinfowler.com/eaaCatalog/transformViewSketch.gif)

ドメインやデータ ソース
レイヤにデータを要求した際に得たすべてのデータ（まだWebページで表示できる形にはフォーマットされていないデータ）を変換させる。
[ModelViewController](ModelViewController) (330)
のViewの役割は、データをWebページ用にレンダリングすることである。
TransformViewは、モデルのデータをHTMLへ出力させる作業を「トランスフォーメーション」と捉えている。
