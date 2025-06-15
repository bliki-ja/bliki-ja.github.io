---
title: UMLスケッチツール
tags: [uml]
---

https://martinfowler.com/bliki/UmlSketchingTools.html

私は多くのUMLダイアグラムを描いているが、CASEツールは使っていない。
というのも、私は[スケッチとしてのUML](/UmlAsSketch)に興味があるのであって、
あの倉庫に積まれた一式全部には興味がないからだ。
今のところ、よく使っているのはVisioだ。
Visioには最初からUMLテンプレートがついてくるが、
私は[Pavel Hruby](http://www.phruby.com/)のテンプレートの方を好んで使っている。

これまでVisioには大変お世話になった。
今でも私のファースト・チョイスはVisioである。
だが、ちょっとばかし目移りしちゃってることをここで白状せねばなるまい。
だって、Visioって、Windowsでしか動かないじゃん。
私はMacもUnixenも使っとるのよ。
だからね、すべての環境で動くツールがあったら、そりゃナイスなわけ（共通フォーマットでもいいけど）。
私はすべての環境を使いながらあれこれやるのが好きだから、
Windows以外でVisioを使えないのならば仕方ない。
オープンソースかなんかのツールでダイアグラムを描くのであーる。

Macだと、Omni Graffle をちょっとだけ触ったことがあるが、
評価できるだけちゃんと触ったわけじゃない。
アンチエイリアスの効いたかっちょいい見た目なんだけどね。
[UMLet](http://qse.ifs.tuwien.ac.at/~auer/umlet/index.html)もなんだか見た目が面白い。

中でも一番面白いと思ったのは、UMLダイアグラムをテキストで記述するというものだ。
UML「ダイアグラム」なのに、テキストだぁ？なんじゃそりゃ。って、そう思うはずだ。
テキストにはいくつかの利点があるのだ。
ものすごい量の図をレイアウトするのはめちゃくちゃ面倒くさいけど、
テキストなら、ほら、簡単。
図を使って編集するんじゃなくて、図は見せるためだけに使うのだ。
テキストならcvsとdiffを使って、簡単に変更履歴管理も出来るしね。

というわけで、私は[UmlGraph](http://www.spinellis.gr/sw/umlgraph/)に興味を持っている。
私の心をわし掴みしたのは、シーケンス図のエディタだ。
従来からある画像系プログラムの手法を使っている。
[このページ](http://www.spinellis.gr/sw/umlgraph/doc/uml-appa.html)にちょっとしたマクロがあるが、
これでシーケンス図が作れるのだ。ナイス杉。
もちろん、このマクロにはいくつかの制限がある。
だが、こんな感じに、もっとコンパクトで簡潔なものになると私は思っている。

```
 objects 
    thread, t:thread
    tool, :Toolkit
    peer, p:Peer, unborn

 trace 
   found: a1:run(3) -> 
     thread: 
       run() -> 
         tool: 
            callbackLoop() -> self
            create -> peer
            handleExpose() -> 
              peer: 
                return      
            delete -> peer
```

これは単なる思いつきに過ぎない。
実際に現場で使えるかどうかは分からない。
でもまあ、とにかく、このUmlGraphを試しに使ってみようと思っている。
プログラム自体は小さいものだから、tweak（訳注：ハックと言えばいいのに）しようと思えば出来るし。

UmlGraphのクラス図ジェネレータはナイスだ。
Javaソースファイルからクラス図を作れちゃうんだぜ。
でも、単なるダイアグラム生成というだけじゃあ、ちょっとばかし不満かも。
やはりクラスの位置まで指定したいよね。
とはいっても、CustomerはOrderの左に、とかだけで私は十分。
たとえば、[この図](http://www.spinellis.gr/sw/umlgraph/doc/ceg-adv.html)を描くには、こういう感じで書けるといいな：

```
 layout
   row: Controller, EmbeddedAgent, URLStreamHandler, ChannelIterator
   SetTopController below: URLStreamHandler
   PowerManager below: SetTopController

 interface URLStreamHander 
   operations 
     OpenConnection()
     parseURL()
     setURL()
     toExternalForm()

 class SetTopController
   specializes
     Controller
     EmbeddedAgent
   implements
     URLStreamHandler
   attributes
     authorizationLevel
   operations
     startUp()
     shutDown()
     connect()
   associations
     -> PowerManager

 class ChannelIterator
   dependencies
     -> SetTopController keyword:friend
```

何度も言うけど、これは単なる思い付きでしかない。
誰かがこの道を進んでもらえるのであれば、私は嬉しく思う。
もっと先を見てみたい。
