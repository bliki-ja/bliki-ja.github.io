http://martinfowler.com/bliki/CourtesyImplementation.html

クラスを作るとき、機能はそのクラスに合うようなものにしますよね。
でも、そうした方が自然だから機能を追加する、ということもあるのです。

いちばん分かりやすい例は、コンポジットパターンでしょうか。
簡単な箱の例を見てみましょう。
箱の中には別の箱と象が入っています（バーチャルな象だから出来ることです）。
このとき、箱の中の、箱の中の、箱の中の象も全て数えて、
全部で何頭の象が箱に入っているかを知りたいとしましょう。
これはもちろん再帰処理を使います。

 # Ruby
 class Node
 end
 
 class Box < Node
   def initialize 
     @children = []
   end
   def << aNode
     @children << aNode
   end
   def num_elephants
     result = 0
     @children.each do |c|
       if c.kind_of? Elephant
         result += 1
       else
         result += c.num_elephants
       end
     end
     return result
   end
 end
 
 class Elephant < Node
 end

あれれ、{{code('num_elephants')}} メソッド内で
オブジェクトの型の判定に使っている {{code('kind_of?')}} がなんだか臭いますね。
何か代替案はあるでしょうか？
上記では、象の中に箱や象は入らないんだから、
象か箱かの判定を行いました。
象に「象がいくつ入ってますか？」と聞くのは野暮なことですからね。
象に聞くだなんて、そんなの現実世界をきちんとモデル化してるとは言えません。
まあ、どこが現実世界だよって感じですが、
この例は議論のためのものなんで、ちょっと変わってるんですよ。

現実世界をきちんとモデル化していないとはいえ、
条件文を避けるため、象に「象がいくつ入ってますか？」メソッドを追加してみましょう。
こんな感じです。

 class Node
   # 型付けされた言語では、
   # 抽象メソッド num_elephants をここに定義します。
 end
 
 class Box < Node
   def initialize 
     @children = []
   end
   def << aNode
       @children << aNode
   end
   def num_elephants
     result = 0
     @children.each do |c|
       result += c.num_elephants
     end
     return result
   end
 end
 
 class Elephant < Node
   def num_elephants
     return 1
   end
 end


はぁ？と思われる方も多いかもしれません。
ですが、コンポジット構造のロジックをシンプルにするのに、
これはグレートな手なのです。
これでリーフクラス（Elephant）は、
階層ノードの役割に忠実かつシンプルな実装となります。

これと似たようなものに、数学における「0のべき乗の法則」があります。
私はこれが好きなんですね。
これは、どんな数でも0回掛け合わせると必ず 1 になるという法則です（訳注：x^0 = 1）。
え？ 1？ なんで0にならないの？ と思っちゃいますよね。
でも、この定義のおかげで数学はうまく動いているんです。
ですから我々は、何も疑わず、ただ法則に従えばよいのです。

モデルを構築するときは、
どのように世界を認識したいかという視点にもとづいてモデルを設計します。
モデルをシンプルにしてくれるのならば、儀礼的実装は価値のあるものです。
