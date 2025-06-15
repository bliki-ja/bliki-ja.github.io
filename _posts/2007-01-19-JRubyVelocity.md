---
title: JRubyVelocity
tags: [tools]
---

https://martinfowler.com/bliki/JRubyVelocity.html

昨日、velocityをいじってテンプレートとマクロについて調査する必要があった。 velocityのシンプルなテンプレート言語は好きだが、Javaや.NETのコンテクストでは使っていなかった。当時、velocityを使うために環境をセットアップしたりJavaでプロセッサを実行したりするのは面倒なことだった。

こういったときにはスクリプト言語が必要だ。私好みのスクリプト言語はRubyなので、JRubyを試す良い機会だろう。結論から言うと、うまくはいくんだが、たぶん話はつまんないよ。

JRubyをダウンロードし、/usr/local/lib に展開して、シンボリックリンクを張ることで /usr/local/lib/jruby で参照できるようにした。

それから、/usr/local/bin に以下のようなリダイレクトをするシェルを記述した。

```
 JAVA_HOME=/usr/lib/jvm/java-1.5.0-sun
 JRUBY_HOME=/usr/local/lib/jruby
 
 /usr/local/lib/jruby/bin/jruby $*
```

これでJRubyを実行できるようになった。

```
 $ jruby -v
 ruby 1.8.5 (0) [java]
```

（実際にはこれよりも時間がかかった。椅子とキーボードの間（訳注：つまり「自分」）にバグがあったのだ。それが何であったかは、恥ずかしくて言えない。）

velocityを実行するには、JRubyのクラスパスにvelocityを追加する必要がある。

```
 CLASSPATH=path/to/velocity-dep-1.4.jar
 export CLASSPATH
 jruby $*
```

velocityの実行用に、ちょっとしたヘルパークラスを書いた。

```ruby
require 'java'

class VelocityLauncher
  def initialize context, template
    @context = context
    @template = template
  end

  include_class 'org.apache.velocity.app.Velocity'
  include_class 'org.apache.velocity.VelocityContext'
  include_class 'java.io.StringWriter'

  def run
    vc = VelocityContext.new(@context)
    writer = StringWriter.new
    Velocity.init
    Velocity.evaluate(vc, writer, "LOG", @template)
    return writer.getBuffer
  end
end
```

で。ちょっとしたテンプレートを書いてみた。

これは$hostからのお知らせだ。

```
Our chief weapons are:
#foreach ($w in $weapons) 
  - $w 
#end
```

これを動かすにはrubyのハッシュが必要だ。ハッシュを作るのは簡単だ。

```ruby
ct = {'host' => 'Cardinal Fang', 
  'weapons' => ['Fear', 'Surprise', 'Ruthless Efficiency']}
template = File.readlines('template.txt').join

puts VelocityLauncher.new(ct, template).run
```

これを拡張すると、velocityにフォームのコンテクストファイルを読み込ませるナイスなコマンドラインランナーになる。

```ruby
 host = 'Cardinal Fang'
 weapons = ['Fear', 'Surprise', 'Ruthless Efficiency']}
```

だが、私にはまだ必要ない。なので、あとでやる。（「あとで」という言葉に拘束力があることは重々承知だ）
