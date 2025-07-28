---
title: クラスインスタンス変数
tags: [language feature, ruby]
---

オブジェクトについて学ぶと、オブジェクトのデータには二種類あることが分かる。
インスタンス変数とクラス変数だ。
通常、インスタンス変数はオブジェクトのインスタンスごとに値が変わる。
クラス変数は（static変数とも呼ばれるが）クラスのインスタンスで共有される。つまり、すべてのインスタンスが同じ値をポイントしていた場合、クラス変数の変更はすべてのインスタンスに影響する。
クラス変数はインスタンス変数ほど頻繁に見かけるものではない。
特にミュータブルなクラス変数(mutable class variables)はほとんど見かけないだろう。



クラス変数の欠点は、継承が絡んできた場合の振る舞いにある。
クラス変数が自身のインスタンスを保持することを考えてみてもらいたい。
（rubyに不慣れなら[ガイド](https://martinfowler.com/articles/readingRuby.html)を参照しておくれ）

```ruby
#ruby
class Employee
  @@instances = []
  def self.instances
    return @@instances
  end
  def store
    @@instances << self
  end
  def initialize name
    @name = name
  end
end

Employee.new('Martin').store
Employee.new('Roy').store
Employee.new('Erik').store

puts Employee.instances.size
```

まだ驚くところではない。
employeeの数は3になる。
では、次のコードを試して欲しい。

```ruby
#ruby
class Employee
  @@instances = []
  def self.instances
    @@instances
  end
  def store
    @@instances << self
  end
  def initialize name
    @name = name
  end
end

class Programmer < Employee; end
class Overhead < Employee; end

Overhead.new('Martin').store
Overhead.new('Roy').store
Programmer.new('Erik').store

puts Overhead.instances.size
puts Programmer.instances.size
```




2と1が出力されて欲しいところだが、3と3が出力された。
なぜなら、クラス変数はクラスのインスタンスで共有されるからだ。
この場合、サブクラスも含まれる。
つまり、クラスは2つあるが、クラス変数は1つなのだ。



この継承階層を横断したクラス変数が役に立つこともある。
だが、今回のような場合は、クラスごとに異なるクラス変数があったほうがよい。
私は後期のSmalltalkで初めてこのコンセプトに出会った（Smalltalkでは「クラスインスタンス変数」と呼ばれている）。
クラスインスタンス変数をクラス変数として扱うこともできる。
ただし、クラスごとに値が異なる点がクラス変数とは異なる。



クラスインスタンス変数は主なオブジェクト指向言語ではサポートされていない。
だが、それほど難しいことではない。
クラス名をキーにしたディクショナリを使うことができる。

```ruby
#ruby
class Employee
  @@instances = {}
  def self.instances
    @@instances[self]
  end
  def store
    @@instances[self.class] ||= []
    @@instances[self.class] << self
  end
  def initialize name
    @name = name
  end
end

class Overhead < Employee; end
class Programmer < Employee; end

Overhead.new('Martin').store
Overhead.new('Roy').store
Programmer.new('Erik').store
puts Overhead.instances.size
puts Programmer.instances.size
```



このテクニックはどのオブジェクト指向言語でも利用可能だろう。
ただし、Rubyの場合は、クラスインスタンス変数をあらかじめ持っている。

```ruby
#ruby
class Employee
  class << self; attr_accessor :instances; end
  def store
    self.class.instances ||= []
    self.class.instances << self
  end
  def initialize name
    @name = name
  end
end

class Overhead < Employee; end
class Programmer < Employee; end

Overhead.new('Martin').store
Overhead.new('Roy').store
Programmer.new('Erik').store
puts Overhead.instances.size
puts Programmer.instances.size
```



クラスインスタンス変数の定義は、``class << self; attr_accessor :instances; end``の部分で行っている。
あまり深追いはしたくないのだが、これは継承元であるEmployeeクラスのインスタンス変数を定義している（それからgetterとsetterも）。
クラス変数と違い、クラスインスタンス変数はクラスオブジェクトごとに異なる値を保持することになる。



クラスインスタンス変数は非常にレアだ。
だが、必要になったときには非常に有用である。

## 参考

* http://www.rubyist.net/~matz/20061220.html#p01

> 1.9では解決されている(クラス変数は継承しない)。
