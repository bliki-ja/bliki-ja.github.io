---
title: コレクションクロージャメソッド
tags: [object collaboration design, API design, ruby, language feature]
---

http://martinfowler.com/bliki/CollectionClosureMethod.html

(detectとinject部分を明確にするよう更新)

Smalltalkでプログラミングを始めたときから、コレクションクラスが好きでした。
よく使う強力なオペレーションを簡単に使うことができました。
Javaが登場したとき、このようなメソッドがなくなって物足りないと感じました——Java（およびC#）のコレクションは、Smalltalkのそれと比べて非常に限定されたものでした。
というのも、Javaには[[Closure]]が実装されていなかったからです。
Smalltalkの強力なコレクションのメソッドは、すべてクロージャに依存しています。

近年、私はRubyで頻繁にプログラミングをするようになりました。
Rubyに引き付けられたのは、Rubyには強力なコレクションメソッドがあったからです。
Rubyは言語内にクロージャを持っています。

では、クロージャを使ったコレクションのメソッドには何があるでしょうか？
最も重要なメソッドは「each」です。
デザインパターンの用語を使うと、これは内部イテレータです。
（Smalltalkでは「do」メソッドと呼んでいました。）

 employees.each do |e|
   e.doSomething
 end

eachメソッドはブロック引数をひとつ取ります（RubyやSmalltalkでは、クロージャのことをブロックと呼びます）。
それから、コレクション内の各要素に対してブロックを実行します。
これは、多くの現代のプログラム言語に見られるforeachステートメントと本質的に同じです（先頃、Java1.5にも採り入れられました）。
foreachメソッドにはこの機能しかありませんのでこれで終わりですが、
コレクションとクロージャを使った場合は、eachメソッドは始まりにすぎません。

コレクションを使ってよく行うのは、
ある条件に合う要素を探し出すことです。
例えば、以下のようなコードになります。

 managers = []
 for e in employees
   if e.manager?
     managers << e 
   end
 end

これはRuby的には正しい構文です（「<<」はコレクションへの追加です）。
ただ、優秀なrubyistたちはこのようには書かないでしょう。
以下のように書くと思います。

 managers = employees.select {|e| e.manager?}

eachメソッドのように、selectメソッドもブロック引数を取ります。
この場合、ブロックは「do...end」ではなく「中括弧{}」で括られます（どちらも正しい構文ですが、ワンライナー（一行コード）の場合は中括弧を使用します）。
リストの各要素に対してブロックが適用されます。
ブロックがtrueを返した要素は、最後に返される結果コレクションの要素になります。
こういったメソッドがあるおかげで、ずいぶんと楽になることが分かると思います。
Smalltalkでもこのメソッドを「select」と呼んでいました。
Rubyには「find_all」というエイリアスもあります。
ブロックがfalseを返した要素のコレクションを返す兄弟メソッド「reject」もあります。

次によく使うコレクションのクロージャメソッドは「collect」です。
ブロック引数に対してメソッド呼び出しを行う必要があるということ以外は、先ほどと同じです。
以下が伝統的なコードです。

 offices = []
 for e in employees
   offices << e.office
 end

このコードもワンライナーになります。

 offices = employees.collect {|e| e.office}

これが何を行っているか分かると思います。
selectに似ていますが、メソッド呼び出しの結果を返却するコレクションに入れています。
Smalltalkも「collect」と呼んでいました。
Lispにも同様の機能があり、「map」と呼んでいます。
Rubyにも「collect」のエイリアスとして「map」が用意されています。

現代の関数型言語から出てきた概念があります。
それは先ほどの2つのクロージャメソッドに似ています——List Comprehension（リスト内包表現）と呼ばれています。
List Comprehensionは、Pythonに[[採用されました|http://www.secnetix.de/~olli/Python/list_comprehensions.hawk]]。
これまで見てきたようなメリットを得るために、
List Comprehensionでは統合アプローチを提供しています。
以下にPythonのList Comprehensionを使った例を2つ挙げました。

 managers = [e for e in employees if e.isManager]
 offices = [e.office for e in employees]

List Comprehensionを使うと、上の2つを簡単に結びつけることができます。

 managersOffices = [e.office for e in employees if e.isManager]

ブロック同士をつなげることで実現できますが、ちょっとダサい感じがします。

 managersOffices = employees.select{|e| e.manager?}.map {|m| m.office}

List Comprehensionは素晴らしいのですが、selectとcollectしか扱えません。
ブロックにはまだまだ機能があります。
これからコレクションとブロックを使った例をいくつかお見せします。

selectと似ていますが、
すべての要素が条件にマッチしているか（またはマッチしていないか）を調べています。


 allManagers = employees.all? {|e| e.manager?}
 noManagers = ! employees.any? {|e| e.manager?}

partitionメソッドはselectとrejectを合わせたものです。
複数の変数に割り当てる際に役に立ちます。

 managers, plebs = employees.partition{|e| e.manager?}

ブロック引数がひとつあればよいわけではありません。
私は「sort」メソッドもよく使います。
これは（古いスタイルでは）ブロック引数をふたつ取ります。

 sortedEmployees = employees.sort {|a,b| a.lastname <=> b.lastname}

sortメソッドはブロック内のコードを使ってソートされたリストを返します。
<=>演算子は比較演算子です。スターシップ演算子(starship operator)として知られています。
a が b よりも小さければ-1を返します。
a が b よりも大きければ+1を返します。
同じ場合は0を返します。

Ruby 1.8からより簡単にソートが行えるようになりました。
これだとブロック引数はひとつで済みます。

 sortedEmployees = employees.sort_by {|e| e.lastname}

ブロック引数をふたつ取るメソッドは他にもあります。
例えば「each_with_index」メソッドなどです。
これはeachと同じようにリスト内をイテレートしますが、
eachとは違い、要素の値以外にインデックスも渡してくれます。

findメソッド（smalltalk風のエイリアスは「detect」）は
条件にマッチした最初の要素を探し出します。

 volunteer = employees.find {|e| e.steppedForward?}

findのようなメソッドを使う際によくあることですが、
すべての要素が条件にマッチしない場合に何か処理を行う必要があります。
findメソッドは、何も条件にマッチしない場合はnilを返します。
その結果から何もマッチしなかったということが分かります。
また、何も条件にマッチしなかった際の処理として、もうひとつブロックを渡すこともできます。

 volunteer = employees.find(lambda{self.pickVictim}) {|e| e.steppedForward?}

ブロックがひとつの場合だと、Rubyの構文は非常にナイスですが、
ブロックが複数になるとちょっとダサい感じがします。
Smalltalkでは（ちょっと自信ないけれど）こういう感じになったと思います。

 volunteer := employees 
                detect: [:each| each hasSteppedForward]
                ifNone: [self pickVictim]

Smalltalkのキーワード パラメータにより、
複数のブロックでも読みやすいものとなっています。


最後に触れるのは、よく理解しにくいと言われる「inject」です。
injectは、コレクションの累計を出す場合などに便利です。
従業員（employee）の給料（salary）の合計を出してみましょう。
伝統的な方法では、以下のようになります。

 total = 0
 for e in employees
   total += e.salary
 end

injectを使うと、以下のようになります('訳注：+=ではなく+でOK。→ total = employees.inject(0) {|result, e| result + e.salary}')。

 total = employees.inject(0) {|result, e| result + e.salary}

コレクションの各要素において、
injectはブロックの実行結果を変数resultに代入しています。
処理が完了すると、injectメソッドの戻り値としてresultが返されます。

ここでの目的は、クロージャメソッドを持つRuby（やSmalltalk、Lispなど）がいかに素晴らしいかについて述べることではありません。
ポイントは、クロージャとコレクションのコンビネーションによって、
素晴らしいことができるという点です。
クロージャを持たない言語はこういったメリットを得る機会を失っているのです。
クロージャを持った言語でプログラミングする機会があれば、
こういったメソッドを使えるようになってください。
きっと役に立つと思います。

（Masanori Kado、Rik Hemsley、Christian Neukirchen、Stanislav Karchebnyに感謝。初校の誤りを訂正してくれました。）


----

* [[sumim’s smalltalking-tos - コレクションクロージャメソッド|http://d.hatena.ne.jp/sumim/20050803/p1]]
* [[sumim’s smalltalking-tos - Squeak の Smalltalk にあるコレクションブロックメソッド|http://d.hatena.ne.jp/sumim/20050803/p2]]
