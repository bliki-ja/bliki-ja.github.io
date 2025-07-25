---
title: オーバーロードしたゲッターとセッター
tags: [bad things, API design]
---

https://martinfowler.com/bliki/OverloadedGetterSetter.html

最近、JavaScriptを触っていてひとつ気になったことがあるのだが、それはgetterとsetterに同じ関数名を使うという習慣についてだ。
つまり、もしjQueryでバナーの高さを知りたい場合は ``$("#banner").height()``を使うことになるし、
一方もし高さを変えたいのであれば、``$("#banner").height(100)``を使うことになる。

私には、この規約は馴染みがあるものだ。なぜなら、Smalltalkはそのような規約だからだ。
``banner height``で値を取得し、``banner height: 100``でそれを変更すればよい。
Smalltalkの規約だと知っている以上、本来、私にとって、この習慣は気に入っても全然おかしくないぐらいのものであるはずなのだ。というのも、私は、距離をおきながらも、あの言語に変わらぬ愛着を持っているからだ。
けれども、最高のものにだって欠点はあるものだ。そして私はこのコーディングスタイルに対しては反感を隠しえない。

私の主要な反論を述べると、データを取得する行為は、データをセットする行為とは根本的に異なるのであるから、名前はもっと明確に異なっているべきだということだ。

原注: getterとかsetterと述べているのは、値を取得あるいは設定するようなメソッドのことであるが、[UniformAccessPrinciple](/UniformAccessPrinciple) (訳注:Meyerの統一アクセス原則)に従えば、- どのような方法で実装されているものでも構わない。

ほかの理由としては、setterと、引数をとるgetterとが混同しやすいということが挙げられる。
``$("#banner").css('height')``と書いてあったら、一般的にはこれはcssプロパティに'height'とセットしていると期待するだろう。実は``css('height')``はheightの値を取得するもので、更新するには``css('height', 100)``とするものなのだが、そのことは、私にjQuery APIについての知識があるから初めてわかることなのだ。

getterとsetterの明示的な区別がないということは、JavaScriptにおいては、メソッドが1つになってしまうという点において、Smalltalkよりも問題だ。Smalltalkは動的型付けを行なう言語だが、メソッド引数の数に基づくオーバーロードが行われる。('原注: 厳密にはこれはオーバーロードではない。'height'と'height:'は(コロンのせいで)別の名前だからだ。とはいえオーバーロードのようなものには違いない。)
JavaScriptは言語機構としてオーバーロードするわけではないので、getterとsetterは単一のメソッドとして現れるわけだ。文書化は助けになるが、API自身としてはそれらの区別がない。
追加の引数があるということは [FlagArgument](/FlagArgument)と同じような働きをするので、通常は悪しき事(Bad Thing)の一種だ。

訳注：Fowlerのblikiにおけるタグのひとつにbad thingsというのがありました。単によくないことというだけでなく、先頭大文字ですし、アンチパターン系の用語か、聖書か何かに起源を持ちそうな言葉ですが未詳でしたのでそのまま訳してみました

私は別に、Javaのあの醜い``getHeight()`` / ``setHeight(100)``という規約のほうがよいなどと提案しようとしているわけではない。私が思うに、getterには裸の値を使うのが通常は最良な方法だ。
私の好みは、どんなsetterも明確にそれと分かるようにすることだ。

一般には、私はこのことをもっと別な文法で行うのが好みであるので、この場合は、C#とRubyにおけるプロパティをセットする際の文法が評価点としては最高となる。これらの言語では、``banner.height``で値を取得し、``banner.height = 100``でそれを変更することができる。
ここでのポイントは、代入を使うことによって、値を変更していることをはっきりと知らせることができるということだ。getterで=を使うことはないので、``$("#banner").height(100)``と``$("#banner").css('height')``の間に生まれるような曖昧さを生むことがない。

ただしこのアプローチの可否は、言語がそれをサポートするか否かにかかっている。JavaScriptでこれを行うことはできない。JavaScriptであれば、私なら裸のgetterとプリフィクスをつけたsetterをつける方法がいい。
この方法であれば、``banner.height()``で値を取得し、``banner.setHeight(100)``でそれを変更することができる。

よしんばこの方法が好みであるとしても、実際には使用している言語における規約には従わざるを得ない。
もし私が再びSmalltalkを書く事があるとしたなら、私は依然として``height:100``を使うだろう。
それによってSmalltalkの規約との整合性が保たれるからだ。
しかしながら、JavaScriptでは、特にこれといって強力な規約があるといったわけではないので、
いくらjQueryが使っているとはいえ、私としては先に述べたこの規約は避けたいところだ。

----
(訳: ooharak)
