---
title: ClassInstanceVariable
tags: [language feature, ruby]
---

http://martinfowler.com/bliki/ClassInstanceVariable.html

2007/1/9

//When you learn about objects, you usually learn that they can capture two kinds of data: instance and class. Instance variables are the most common case, the data varies with each instance of the object. Class variables, often referred to as static variables, are shared across all instances of a class. Every instance points to same value and any changes are seen by all. Class variables are much less common than instance variables, especially mutable class variables.

オブジェクトについて学ぶと、オブジェクトのデータには二種類あることが分かる。
インスタンス変数とクラス変数だ。
通常、インスタンス変数はオブジェクトのインスタンスごとに値が変わる。
クラス変数は（static変数とも呼ばれるが）クラスのインスタンスで共有される。つまり、すべてのインスタンスが同じ値をポイントしていた場合、クラス変数の変更はすべてのインスタンスに影響する。
クラス変数はインスタンス変数ほど頻繁に見かけるものではない。
特にミュータブルなクラス変数(mutable class variables)はほとんど見かけないだろう。

//A particular wrinkle with class variables is how they interact with inheritance. Consider a class variable that's used to store instances of itself. (If the ruby is unfamiliar see my reading guide.)

クラス変数の欠点は、継承が絡んできた場合の振る舞いにある。
クラス変数が自身のインスタンスを保持することを考えてみてもらいたい。
（rubyに不慣れなら[ガイド](http://martinfowler.com/articles/readingRuby.html)を参照しておくれ）

<<<
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
>>>

まだ驚くところではない。
employeeの数は3になる。
では、次のコードを試して欲しい。

<<<
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
>>>


//The output here is 3 and 3, while we'd probably prefer 2 and 1. The reason is that a class variable is shared across all instances of a class, which includes all subclasses. There are two classes but only one variable.

2と1が出力されて欲しいところだが、3と3が出力された。
なぜなら、クラス変数はクラスのインスタンスで共有されるからだ。
この場合、サブクラスも含まれる。
つまり、クラスは2つあるが、クラス変数は1つなのだ。

//Sometimes this variable across a hierarchy is exactly what we want, but soemtimes, as in this case, we'd prefer a different variable for each class. I first came across this concept in some later versions of Smalltalk under the name of class instance variable. You could refer to a class instance variable the same way as with a class variable, but you got a different value per class.

この継承階層を横断したクラス変数が役に立つこともある。
だが、今回のような場合は、クラスごとに異なるクラス変数があったほうがよい。
私は後期のSmalltalkで初めてこのコンセプトに出会った（Smalltalkでは「クラスインスタンス変数」と呼ばれている）。
クラスインスタンス変数をクラス変数として扱うこともできる。
ただし、クラスごとに値が異なる点がクラス変数とは異なる。

//Support for class instance variables isn't common in OO languages, but it's not too hard to it yourself. The obvious way is to use a dictionary keyed by class name.

クラスインスタンス変数は主なオブジェクト指向言語ではサポートされていない。
だが、それほど難しいことではない。
クラス名をキーにしたディクショナリを使うことができる。

<<<
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
>>>

//You can use this technique in any OO language. Ruby, however, actually has class instance variables.

このテクニックはどのオブジェクト指向言語でも利用可能だろう。
ただし、Rubyの場合は、クラスインスタンス変数をあらかじめ持っている。

<<<
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
>>>

//The definition of the class instance variable is the fragment class << self; attr_accessor :instances; end. For reasons that I don't really want to go into, this defines an instance variable (and getters and setters) on the class employee that's inherited by its descendents. Unlike class variables these class instance variables will take different values for each class object.

クラスインスタンス変数の定義は、{{code('class << self; attr_accessor :instances; end')}}の部分で行っている。
あまり深追いはしたくないのだが、これは継承元であるEmployeeクラスのインスタンス変数を定義している（それからgetterとsetterも）。
クラス変数と違い、クラスインスタンス変数はクラスオブジェクトごとに異なる値を保持することになる。

//Class instance variables are pretty rare, but useful when you do need them.

クラスインスタンス変数は非常にレアだ。
だが、必要になったときには非常に有用である。

## 参考

* http://www.rubyist.net/~matz/20061220.html#p01

""1.9では解決されている(クラス変数は継承しない)。
