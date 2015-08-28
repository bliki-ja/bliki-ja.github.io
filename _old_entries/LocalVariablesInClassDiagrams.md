http://www.martinfowler.com/bliki/LocalVariablesInClassDiagrams.html

!!クラス図の中でローカル変数（パラメータや一時変数など）をどうやって表していますか？

単に「表してねー」と言うかもしれませんね。
私もこれまで必要になった覚えがありません。
使われていたとしても、役に立ったという話は聞きません。

もし本当に本当に本当に必要だというなら、&laquo;キーワード&raquo;を用いて依存を使用し、
あとから冷たいシャワーをたっぷり浴びるといいでしょう。
あるオブジェクトがローカルに他のクラスのインスタンスを保有しているとき、
それは何らかの依存関係があるということを意味します。
こういった依存関係はきちんと明示するとよいでしょう。
依存が問題となるのはこの場合だけですので、
キーワードがあっても煩わしくないと思います。

関連のステレオタイプを用いよと書いてある本もあります。
なるほど、UML1.3の仕様書にはこう書いてあります。
これはUMLのメタモデルの問題に関係がありそうです。
コラボレーション図でインスタンス間のつながりを表す場合、
メタモデルでもその"つながり"が表現されていなければなりません。
そのため、ステレオタイプのついた関連が生み出されました。
UML2のメタモデルでは、さらにより良い方法が提示されています——UML1.3ではこれらのステレオタイプは廃止されました。

関連に注釈を用いることに関して、問題があるようにも思います。
単にメソッドの呼び出し範囲内にしかない関連と、クラスが生きている間存在する関連とでは、両者に決定的な違いがあるからです。
後者のほうが重要です。
私はこういった長時間に渡る関係性がある場合に限って、関連を用いたいと思っています。