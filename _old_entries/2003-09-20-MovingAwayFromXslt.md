---
title: XSLTから遠ざかる
tags: [writing]
---

http://www.martinfowler.com/bliki/MovingAwayFromXslt.html

このサイトはすべてシンプルなXML文書で書かれたものをHTMLに変換して作られています。これが非常に具合がよいのです。もうHTMLフォーマットに悩まされることもありません（奇抜なレイアウトが私っぽくないのはご存知でしょう）。[[書籍もこうやってすべて書きました|http://www.martinfowler.com/articles/writingInXml.html]]。

ほとんどの時間はXSLTで言語変換に要した時間でした。XSLTを投げつけてやりたいことをさせるのも上手くなりました。

だけどもうおさらばです。

このBlikiのためのソフトウェアを（長いフライト中に）作ったとき、私はRubyを使いました。以前、ホームページの新しいバージョンのためにRubyを使っていました。この習作によって、RubyでXML変換を行ったほうがXSLTよりもずいぶん簡単だと結論付けました。

* XMLはプログラム言語にとってひどいシンタックスを作る。ノイズが多すぎるし、結果としてプログラムを見れたもんじゃない。
* XSLTはサブルーチンを呼び出すのに手間がかかる。マジでいやになる。重複コードを招くことにもつながる。
* XSLTは簡単なタスクだったら使える。でもちょっと複雑になったら、だんだん歪んできてしまう。まったく歯の立たないタスクもあるので、どっちにしろ他の言語をひっぱりださざるを得なくなる。
* Rubyはきれいだ。きれいなシンタックスを持ち、[[クールなXMLライブラリ|http://www.germane-software.com/software/rexml/]]を持っているOO言語だ（Pythonもよさげかもしれないけれど、試してない）。
* テンプレートスタイルと変換スタイルのコードを混ぜたまま書ける。

私のコードは、XSLTのデザイン影響を受けています。
基本的名変換タスクは、XSLTの apply-template コマンドと同じように、再帰を用いて処理されます。下の例の場合は、Rubyのリフレクション機能を使っています。
中身はこんな感じ、

 class ElementHandler
 
   def apply anElement
     anElement.each {|e| handle(e)} if anElement
   end
 
   def handle aNode
     if aNode.kind_of? REXML::Text
       handleTextNode(aNode) 
     elsif aNode.kind_of? REXML::Element
       handle_element aNode  
     else
       return #ignore comments and processing instructions
     end
   end
   def handle_element anElement
     handler_method = "handle_" + anElement.name.tr("-","_")
     if self.respond_to? handler_method
       self.send(handler_method, anElement)
     else
       default_handler(anElement)  
     end
   end

基本的に handle_element メソッドはhandlerオブジェクト内の対応する名前の関数を呼び出すためにリフレクションを使っています。特定のページのためにElementHandlerを継承しています。クエスチョンタグを特定のページに登場するかどうかの判定のために使っています。このために、短い変換ルーチンを書きました。

     def handle_question anElement
       @html.p {@html.element('b'){apply anElement}}
     end

@html.element メソッドはbタグを挿入して出力します。bタグの中にはブロックコード{apply anElement}の処理結果が再帰的に入ります。ここで、Rubyのブロックはとても役に立ちます。

改良の余地はいくらでもあるでしょう。しかし、いまはblikiが動けばよいので、これ以上コードを触る必要はありません。XSLTを扱うよりははるかに簡単だと分かりました。

XSLTについての疑問がわくと思います。XSLTのパワーは今も好きですが、シンタックスやみなさんがしょっちゅうでくわす面倒事は大嫌いです。
サイト全てを、今日明日にでも Ruby で実装しようとは思っていません（XSLTのほとんどはうまく動いています）が、そのうちには、その方向でやることにはなると思っています。
しかしより大きな疑問は、こういったタスクを処理する際にXSLTよりスクリプト言語を使った方がシアワセになるかどうかです。
