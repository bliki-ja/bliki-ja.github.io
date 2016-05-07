---
title: CircuitBreaker
tags: [delivery, application architecture]
---

http://martinfowler.com/bliki/CircuitBreaker.html

ネットワークを介して異なるマシンで動作するソフトウェアを呼び出すことは一般的に行われている。インメモリ処理とリモートコールの大きな違いの１つは、リモートコールは失敗したりレスポンスが返ってこないままタイムアウトするまで停止してまう可能性があることだ。レスポンスが遅いシステムが多くの利用者を抱えている場合、
重要なリソースを使い果たしてしまい、複数のシステムをまたがった障害が発生するだろう。Michael Nygard は名著 [Release It](https://www.amazon.com/gp/product/0978739213?ie=UTF8&tag=martinfowlerc-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=0978739213)で、このような壊滅的な連鎖を防止するために Circuit Breaker パターンを広めた。

CircuitBreaker の基本は非常にシンプルだ。失敗を監視する CircuitBreaker オブジェクトで関数呼び出しを保護する。失敗数が閾値に達すると Circuit Breaker が作動し、以降の CircuitBreaker オブジェクトの呼び出しは、保護された呼び出しをせずにエラーを返す。通常、CircuitBreaker が作動したら何らかのアラートを上げる事をお勧めする。

![sketch.png](http://martinfowler.com/bliki/images/circuitBreaker/sketch.png)

タイムアウトから保護するためのこれらの振る舞いについて、Ruby によるシンプルな例を示す。

保護された呼び出しとしてブロック ([ラムダ](http://martinfowler.com/bliki/Lambda.html)) を使い、CircuitBreaker をセットアップした。


```ruby
cb = CircuitBreaker.new {|arg| @supplier.func arg}

```

CircuitBreaker はブロックを保持し、各種パラメータ (閾値、タイムアウト、モニタリング) を初期化後、自身の状態を closed にリセットしている。

```ruby 
class CircuitBreaker...
  attr_accessor :invocation_timeout, :failure_threshold, :monitor
  def initialize &block
    @circuit = block
    @invocation_timeout = 0.01
    @failure_threshold = 5
    @monitor = acquire_monitor
    reset
  end
```

CircuitBreaker の呼び出しは回路が閉じている場合は予めセットアップしたブロックを実行するが、開いている場合はエラーを返す。

```ruby
# client code
    aCircuitBreaker.call(5)
```

```ruby
class CircuitBreaker...
  def call args
    case state
    when :closed
      begin
        do_call args
      rescue Timeout::Error
        record_failure
        raise $!
      end
    when :open then raise CircuitBreaker::Open
    else raise "Unreachable Code"
    end
  end
  def do_call args
    result = Timeout::timeout(@invocation_timeout) do
      @circuit.call args
    end
    reset
    return result
  end
```

タイムアウトした場合は失敗数カウンタを増加させ、成功した場合はカウンタを 0 に戻す必要がある。

```ruby
class CircuitBreaker...
  def record_failure
    @failure_count += 1
    @monitor.alert(:open_circuit) if :open == state
  end
  def reset
    @failure_count = 0
    @monitor.alert :reset_circuit
  end
```

この例では CircuitBreaker の状態を下記のとおり定義している。

```ruby
class CircuitBreaker...
  def state
     (@failure_count >= @failure_threshold) ? :open : :closed
  end
```

このシンプルな CircuitBreaker は回路が開いている時に保護された呼び出しの実行を避けるが、復旧した場合はそれをリセットする仕組みが必要だ。
これは建築におけるブレーカーと同様に合理的なアプローチだが、ソフトウェアの CircuitBreaker は呼び出しの復旧を自分自身で検知する。
適切なインターバルをおいて再試行し、成功した場合は CircuitBreaker をリセットすることで自己復帰する振る舞いを実装可能だ。

![state.png](http://martinfowler.com/bliki/images/circuitBreaker/state.png)

この種の CircuitBreaker を作るには再試行の閾値を追加し、最後のエラーからの待機時間を設定する。

```ruby
class ResetCircuitBreaker...
  def initialize &block
    @circuit = block
    @invocation_timeout = 0.01
    @failure_threshold = 5
    @monitor = BreakerMonitor.new
    @reset_timeout = 0.1
    reset
  end
  def reset
    @failure_count = 0
    @last_failure_time = nil
    @monitor.alert :reset_circuit
  end
```

問題が修正されたか確認するために実際の呼び出しを行う準備ができていることを表すために「half open」という３番目の状態が出てくる。

```ruby
class ResetCircuitBreaker...
  def state
    case
    when (@failure_count >= @failure_threshold) && 
        (Time.now - @last_failure_time) > @reset_timeout
      :half_open
    when (@failure_count >= @failure_threshold)
      :open
    else
      :closed
    end
  end
```

half open 状態の再試行が成功すれば CircuitBreaker をリセットし、そうでなければタイムアウトを再スタートする。

```ruby
class ResetCircuitBreaker...
  def call args
    case state
    when :closed, :half_open
      begin
        do_call args
      rescue Timeout::Error
        record_failure
        raise $!
      end
    when :open
      raise CircuitBreaker::Open
    else
      raise "Unreachable"
    end
  end
  def record_failure
    @failure_count += 1
    @last_failure_time = Time.now
    @monitor.alert(:open_circuit) if :open == state
  end
```

この例は説明のための単純なもので、実際の CircuitBreaker はより多くの機能やパラメータを提供する。多くの場合それらはネットワークの接続失敗など、保護された呼び出しが上げる誤差の範囲から保護する。全てのエラーが回路を作動させるべきではなく、いくつかが正規の失敗を反映し、通常のロジックの一部として扱われるべきだ。

高トラフィックな状況では、初期タイムアウト待ちの大量の呼び出しが問題になるだろう。多くの場合、リモート呼び出しは遅いので [future や promise](http://en.wikipedia.org/wiki/Futures_and_promises) を使ってそれぞれの呼び出しを異なるスレッドで行い、結果が返ってきた時にそれらをハンドリングするのは良いアイデアだ。これらのスレッドをスレッドプールから割り当てることで、スレッドプールを使い切った時に CircuitBreaker を作動させるようにアレンジできる。

CircuitBreaker を作動させるシンプルな方法——呼び出しが成功したらカウンタをリセットする——を例示した。より洗練させるには、エラーの頻度や任意のタイミングで作動させること、アラート、50%故障率を考慮すると良い。またタイムアウトは10、接続障害は3といったようにエラーの種類ごとに異なる閾値を設定してもいいだろう。

私が示した例は同期呼び出しを行う CircuitBreaker だが、非同期コミュニケーションにも役立つ。全てのリクエストをキューに入れ、サプライヤーが自身の速度でそれを消費するのが一般的なテクニックだ——サーバーの過負荷をさけるのに役立つ。この場合、キューがいっぱいになった時に CircuitBreaker が作動する。

CircuitBreaker は自分自身で、失敗する可能性の高いオペレーションにかかるリソースを削減できる。あなたはクライアントのタイムアウト待ちを避け、作動した CircuitBreaker は苦しんでいるサーバーに負荷をかけるのを避ける。この記事では CircuitBreaker の一般的な例としてリモート呼び出しについて解説したが、これらはシステムの一部の障害からその他の部分を保護する様々なシチュエーションで役に立つ。

CircuitBreaker は監視のための貴重な空間だ。全ての CircuitBreaker の状態変化はログに残し、CircuitBreaker はより深い監視のために自身の状態の詳細を明らかにすべきだ。CircuitBreaker の振る舞いはしばしば、環境に起因する根が深い問題についての良い情報源になる。運用スタッフが CircuitBreaker を作動・リセットできるようにするべきだ。

CircuitBreaker には価値があるが、それを利用するクライアントは CircuitBreaker の障害に対応する必要がある。任意のリモート呼び出しと同様に、障害が発生した場合に何をすべきかを検討する必要がある。実施したオペレーションが失敗した場合、回避策は存在するだろうか？クレジットカードの承認は後で処理するためにキューに入れることができ、何らかのデータ取得の失敗は、新鮮ではなくとも十分なデータを表示することで軽減できるだろう。

### 参考文献

Netflix の技術ブログは、様々なサービスで構成されるシステムの信頼性を改善するための有益な情報が多数掲載されている。[Their Dependency Command](http://techblog.netflix.com/2012/02/fault-tolerance-in-high-volume.html) では Circuit Breaker の利用やスレッドプールの制限について解説している。
Netflix は [Hystrix](https://github.com/Netflix/Hystrix/) という、分散システムのための遅延処理や耐障害性を高める洗練されたツールをオープンソースで公開している。これにはスレッドプールを利用した CircuitBreaker パターンの実装が含まれている。

[Ruby](http://github.com/wsargent/circuit_breaker/tree/master)、[Java](https://github.com/Comcast/jrugged)、[Grailsプラグイン](http://www.grails.org/plugin/circuit-breaker)、[C#](http://timross.wordpress.com/2008/02/10/implementing-the-circuit-breaker-pattern-in-c/)、[AspectJ](http://github.com/sptz45/circuit-breaker/tree/master)、[Scala](http://github.com/FaKod/Circuit-Breaker-for-Scala) のオープンソースの CircuitBreaker パターンの実装も存在する。

### 謝辞

Pavel Shpak にサンプルコードのバグを指摘してもらった。