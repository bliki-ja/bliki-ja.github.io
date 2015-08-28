http://www.martinfowler.com/bliki/DslBoundary.html

2006/8/1

//When the topic of DomainSpecificLanguage comes up, one of the common puzzles is exactly what is or isn't a DSL. The trouble is that there is no precise definition for a DSL and there is a large gray area between DSLs and other things.

[[DomainSpecificLanguage]]が表れたときに疑問として挙がったのが、
「DSLは何なのか」そして「DSLは何でないか」だった。
混乱の元はDSLに厳密な定義が存在しないためであり、
DSLとその他とを区別するグレーゾーンが広大だったためである。

//For me, a key element is that DSLs are limited both in scope (they refer to a particular domain) and capability (they lack features that are basic for general purpose languages). As a result good DSLs are usually small and simple: hence terms like 'little languages' and 'mini-languages'.

私にとっては、「スコープ」と「能力」が限定されている点がDSLの重要な要素である（特定のドメイン向けであり、汎用言語にとって基本的な機能が欠けている）。
つまり、良いDSLというのは、小さくてシンプルなものなのだ。
だからこそ「リトル言語」や「ミニ言語」と表現されるのである。

//For internal DSLs, the fuzzy boundary is what is an API and what is a DSL. Fundamentally there is no difference, an internal DSL is just an API with a fancy name (as the old Bell labs saying goes: "library design is language design"). Despite this, however, I think there is a different feel when you are working with an API that's written with a DSL feel. Things like a FluentInterface can make working with an API a qualitatively different experience. Thinking in DSL terms makes you think about readability in a different way, exploiting the syntax of the host language to create something that seems to stand on its own - rake is a great example of this.

内部DSLではAPIとDSLの境界があいまいである。
基本的に両者に違いはない。
内部DSLとは、単なるイイ感じの名前のついたAPIなのだ（「ライブラリ設計は言語設計(library design is language design)」というベル研究所の古い諺があるように）。
だが、違いはないとはいったものの、DSLっぽく書かれたAPIを使うときはなんとなく「感覚」が異なるように感じられる。
[[FluentInterface]]のようなものはAPIを使用することを質的に変えてしまうのだ。
DSLを使って考えると読みやすさを違った方法で考えるようになる。
ホスト言語のシンタックスを利用して、それ自身に依存した何かを作るようになる——[[rake|http://www.martinfowler.com/articles/rake.html]]が良い例だ。

//When it comes to external DSLs the question often comes in the form of what the difference is between a DSL and a general purpose language (GPL). Often a clear sign is when the DSL isn't Turing complete or lacks abstraction facilities. Regexps are a fine example of this limitation in capability. SQL is a more interesting candidate. It's a complex and capable language, yet lacks both Turing completeness and the ability to build new abstractions.

外部DSLでよく問題となるのが、DSLと汎用言語(GPL: General Purpose Language)の違いは何なのかという点である。明らかな違いは、DSLはチューリング完全ではない、あるいは、抽象化機構が欠けているところだろう。
正規表現は能力が限られているという意味で良い例だ。
SQLは興味深い。複雑かつ能力のある言語だが、やはりチューリング完全ではないし、新しく抽象化することができない。

//Can a language be Turing complete and still be a DSL? Ploticus's script language is Turing complete, but it's clear focus on producing graphs within Ploticus makes it a DSL - at least for me. But then what about XSLT? It too has a limited focus on transforming XML documents, yet it has gained so many capabilities that increasingly people think of it as a GPL.

では、チューリング完全かつDSLな言語というのはあり得るのだろうか？
[[Ploticus|http://ploticus.sourceforge.net/]]のスクリプト言語はチューリング完全である。そして、Ploticusでグラフを作成するというところに焦点をしぼっていることから、DSLだともいえる——少なくとも私にとってはDSLだ。
XSLTはどうだろうか？XML文書を変換することに焦点をしぼっているが、汎用言語ではないかと思われるほど非常に多くの能力を備えている。

//The example of Ploticus raises the question of whether embedded languages are DSLs. Is Excel's macro language a DSL when it's virtually the same as Visual Basic? What happens if you embed a general scripting language into an application?

Ploticusの例では、組み込み言語はDSLなのかという疑問がわく。
Excelのマクロ言語がVisual Basicとほぼ同じものだとすると、DSLと呼べるだろうか？
汎用スクリプト言語をアプリケーションに組み込んだらそれはDSLだろうか？

//As with the internal DSL vs API issue, I think the intention is the key here, both of the language writer and of the user. If I use XSLT only to transform an XML document then I'm treating it as a DSL - even if I do some fancy call out to embed some value in the output document. However if I use it to solve the eight queens puzzle I'm using it as a GPL. If the designers of XSLT see it as about XML transformations then they are thinking of it as a DSL even if clever people do unnatural acts with it.

内部DSLとAPIの問題と同様に、ここではその目的が鍵となる。
言語作成者と言語ユーザーの目的だ。
XSLTをXML文書の変換にのみ使用すると、XSLTをDSLとして使っているということになる——出力文書に値を入れるために、ちょっとアレな使い方をしてるとしてもだ。
しかし、エイト・クイーン問題を解くのにXSLTを使用すると、今度はXSLTを汎用言語として使っているということになる。
XSLTの設計者がXML文書を変換するものとして考えていれば、たとえユーザーが別の使い方をしていたとしても、XSLTはDSLだと考えられているのだ。

//This is one of those discussions are interesting ones to have in the pub but shouldn't detract from the good ideas in using DSLs. DSLs should be designed as used to be a limited language tightly focused on a single problem. If you go into their design and use with that idea foremost, they'll be useful. And after all it's usefulness that really counts.

このようなDSLが何なのかという話は居酒屋で話す分には面白いが、
DSLを使用するという考えを悪く言うものであってはならない。
DSLは、単一の問題に密接にフォーカスした限定された言語として設計される。
DSLの設計をしたり使用したりすることがあれば、限定されたものだということを念頭に置いておくと、DSLは有用になるだろう。
結局、実用性こそが最重要なのだ。
