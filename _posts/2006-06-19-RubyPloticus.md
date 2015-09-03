---
title: RubyPloticus
tags: [ruby]
---

http://martinfowler.com/bliki/RubyPloticus.html



先ごろ[EvaluatingRuby](/EvaluatingRuby)を投稿したが、その中で私は、
同僚がWebアプリケーションにファンシーな数値グラフを組み込んだと述べた。
それについて、どのようにやっているのかという質問のメールを頂いた。
簡単な答えとして「Ploticusを使った」と元のエントリーに追記しておいたのだが、
今度は、RubyとPloticusをどのようにつなげたのかという疑問がでてくる。



実は私も、最近、同様の問題に出くわしたのだ。
個人的なプロジェクトでploticusを使ってデータをグラフ化したいと思っていた。
解決策としては、先ほどの同僚が使ったものと似たようなものになった（私のほうが洗練されていないだろうけど）。
なので、ここでその情報を共有したいと思う。



最初に注意しておくこと（文字通り「注意」して欲しい。私が本当にハマったところだから）。
これは堅牢的、パフォーマンス的、エンタープライズ的なものは一切考慮していない。
単に、私の、私の、（何度も言うよ）私のデータに使用したものだからだ。



ploticusのようなCライブラリを使用するときにイケてるやり方は、C APIを使って直接バインドすることだ。
Rubyではこれを簡単に行うことができる……と私も聞いた。
だが、私には難しいよ（お酒の時間の前に終わらせなきゃいけないんだったら、なおさら無理）。
なので私がやったのは、ploticusのスクリプトを作って、ploticusに渡すやり方だ。ploticusは標準入力から命令の書かれたスクリプトを受け取って実行することができる。
私がやることは、rubyでploticusを起動して、コマンドを渡してやることだ。
だいたいこんな感じになる。

```ruby
  def generate script, outfile
    IO.popen("ploticus -png -o #{outfile} -stdin", 'w'){](p| p << script}
  end
```


このスクリプトを作ることで、
自分の言葉で動くオブジェクトを手にすることができた。
そして、必要なploticusの結果を手にすることができた。
プレハブ式なものを使っていれば、それを組み合わせるのは簡単だ。
[こういう感じの|http://ploticus.sourceforge.net/gallery/students.htm)
棒グラフが欲しかったのだが、おれにはploticusスクリプトが必要だった。



私は必要なものを3つのレベルで作った。
最下層はPloticusScripter。これはploticusスクリプトコマンドを作成するクラスだ。
こんな感じである。

```ruby
 class PloticusScripter
   def initialize
     @procs = []
   end
   def proc name
     result =  PloticusProc.new name
     yield result
     @procs << result
     return result
   end
   def script
     result = ""
     @procs.each do |p|
       result << p.script_output << "\n\n"
     end
     return result    
   end
 end
 class PloticusProc
   def initialize name
     @name = name
     @lines = []
   end
   def script_output
     return (["#proc " + @name] + @lines).join("\n")
   end
   def method_missing name, *args, &proc
     line = name.to_s + ": "
     line.tr!('_', '.')
     args.each {|a| line << a.to_s << " "}
     @lines << line
   end
 end
```


ご覧のように、PloticusScripterはprocコマンドのリストである
（script_outputに反応するものでもよかったが、そのときは必要なかった）。
これを使用するには、
procメソッドを繰り返し呼び出して自分のploticus procを定義していき、
すべてが終わったところで、scriptメソッドを呼び出して、
できあがったスクリプトをゲットして、ploticusに投げる。



次のレベルは棒グラフを作るためのものだ。

```ruby
 class PloticusClusterBar 
   attr_accessor :rows, :column_names
   def initialize
     @rows = []
   end
   def add_row label, data
     @rows << [label] + data
   end
   def getdata scripter
     scripter.proc("getdata") do |p|
       p.data generate_data
     end
   end
   def colors
     %w[red yellow blue green  orange]
   end
   def clusters scripter
     column_names.size.times do |i|
       scripter.proc("bars") do |p|
         p.lenfield i + 2
         p.cluster i+1 , "/", column_names.size
         p.color colors[i]
         p.hidezerobars 'yes'
         p.horizontalbars 'yes'
         p.legendlabel column_names[i]
       end    
     end
   end
 
   def generate_data
     result = []
     rows.each {|r| result << r.join(" ")}
     result << "\n"
     return result.join("\n")    
   end  
 end
```


add_rowメソッドを使ってデータ行を追加することで、
簡単にグラフを作ることができる。
グラフの元となるデータをより簡単に作ることができる。



特定のグラフを作るには、
これらの上に位置する3つ目のクラスを作ることになる。



＃[ploticusのサイトにある例](http://ploticus.sourceforge.net/gallery/students.htm)と同じようなものを作る

```ruby
 class StudentGrapher
   def initialize
     @ps = PloticusScripter.new
     @pcb = PloticusClusterBar.new
   end
   def run
     load_data
     @pcb.getdata @ps
     areadef
     @pcb.clusters @ps    
   end
   def load_data
     @pcb.column_names = ['Exam A', 'Exam B', 'Exam C', 'Exam D']
     @pcb.add_row '01001', [44, 45, 71, 89]
     @pcb.add_row '01002', [56, 44, 54, 36]
     @pcb.add_row '01003', [46, 63, 28, 87]
     @pcb.add_row '01004', [42, 28, 39, 49]
     @pcb.add_row '01005', [52, 74, 84, 66]    
   end
   def areadef
     @ps.proc("areadef") do |p|
       p.title "Example Student Data"
       p.yrange 0, 6
       p.xrange 0, 100
       p.xaxis_stubs "inc 10"
       p.yaxis_stubs "datafield=1"
       p.rectangle 1, 1, 6, 6
     end
   end
   def generate outfile
     IO.popen("ploticus -png -o #{outfile} -stdin", 'w'){|p| p << script}
   end
   def script
     return @ps.script
   end
 
 end
 
 
 def run
   output = 'fooStudents.png'
   File.delete output if File.exists? output
   s = StudentGrapher.new
   s.run
   s.generate output
 end
```


非常にシンプルな例だが、私が[Gatewayパターン](http://martinfowler.com/eaaCatalog/gateway.html)と呼んでいるものの良い例だ。
PloticusClusterBarクラスは、私がやりたいことへの完璧なインタフェースを持ったゲートウェイとなっている。
この便利なインタフェースから実際に必要とされる出力に変換することができる。
PloticusScripterクラスはまた別のレベルのゲートウェイである。
このようなシンプルなものでも、composed objectを用いた設計は有用であると分かった。
長い間かけて私の脳がゆがんだだけかもしれないけど。
