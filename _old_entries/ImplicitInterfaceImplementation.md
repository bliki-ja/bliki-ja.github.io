---
title: 暗黙的インタフェースの実装
tags: TAGS
---

http://martinfowler.com/bliki/ImplicitInterfaceImplementation.html

//Both Java and C# share the same model of pure interface types. You declare a pure interface by going interface Mailable, then you can declare you implement it with class Customer implements Mailable (in Java). A class may implement any number of pure interfaces.

JavaもC#も純粋なインタフェース型というものを用意している。
純粋なインタフェースは{{code('interface Mailable')}}のように宣言し、
Javaの場合だと{{code('class Customer implements Mailable')}}のようにして実装する。
ひとつのクラスは複数のインタフェースを実装することができる。

//One of the things this model ignores is that you have implicit interfaces whenever you have a class . The implicit interface Customer is all the public members declared on Customer. (This implicit interface is present in every OO language I've seen.) One thing that neither Java nor C# allow you to do is to implement an implicit interface - that is you cannot write class ValuedCustomer implements Customer

このモデルが考慮していないのは、
クラスには必ず''暗黙的な''インタフェース(implicit interface)があるという点である。
Customerの暗黙的なインタフェースは、Customerで宣言されたすべてのpublicなメンバである（この暗黙的なインタフェースは、今まで私が見てきたどのOO言語にも存在する）。
JavaでもC#でも、暗黙的なインタフェースをimplementすることはできない——つまり、{{code('class ValuedCustomer implements Customer')}}のように書くことはできない。

//What would it mean to implement an implicit interface? Essentially it would tell the type system that the ValuedCustomer class implements all the methods declared in the public interface of Customer but does not take any of its implementation, that is its public method bodies, and non public methods or data. In other words we have interface-inheritance but not implementation-inheritance.

暗黙的なインタフェースをimplementするとはどういうことだろうか？
基本的には、型システムにValuedCustomerクラスがCustomerのpublicなインタフェースで宣言されたすべてのメソッドをimplementしていることを知らせるが、実装の中身については考慮しないということだ。実装の中身とは、publicメソッドの中身とpublicではないメソッドとデータのことを指す。
つまり、我々が手にしているのはインタフェース継承であり、実装継承ではないのだ。

//It would be equivalent to changing Customer into an interface that contains all the public methods of customer, and then having a CustomerImpl class that implements this interface.

これができるなら、すべてのpublicメソッドを保ったまま、Customer をインターフェースに変更し、その上で、このインターフェースをimplementするCustomerImplクラスを作るのと、同等の効果がある。

//When would this be useful? One case I remember from the past was in the old days of Java, before the current collections framework. We wanted to replace the Vector class with an implementation of our own, but couldn't because Vector was a class and we could only subclass it. From time to time you run into cases like this when libraries don't provide interfaces to allow free substitution, without this feature we're stuck.

暗黙的なインタフェースの実装は、どのようなときに便利なのだろうか？
Javaの初期、今のようにフレームワークが乱立する以前、
Vectorクラスを我々の実装に置き換えたいと思ったことがあった。
しかし、それはできなかった。
なぜなら、Vectorはクラスであり、我々はサブクラスを作ることしかできなかったからだ。
ライブラリが自由に代替できるようなインタフェースを提供していないと、
何度もこのような場面に遭遇するだろう。
暗黙的なインタフェースの実装機能がないために、我々はハマるわけだ。

//This particularly comes up these days with testing. There are lots of times when you want to stub out stuff, but it's difficult or impossible unless you have an interface. It also leads to defining pure interface types when the only reason to do it is to support substitution for testing. While using an InterfaceImplementationPair is a common approach it's one that many of us don't favor. Implicit Interface Implementation would be a much cleaner approach.

最近は、特にテストのときに困るようになってきた。
スタブ化は時間のかかる作業だが、そもそもインタフェースがないとスタブ化するのは難しい。不可能な場合さえある。
テスト用の代替をサポートするためだけに、
純粋なインタフェース型を定義するということになっている。
この場合、[[InterfaceImplementationPair]]を使用することが多いが、
これは我々の好みではない。
暗黙的インタフェース実装の方が明快な手法である。

//So why don't languages allow this? I don't really know - but then I'm not a language designer. I once had the chance to ask Anders Heljsberg about this and his reply was much along the same lines as his preference to only have overriding if you explicitly declare members as virtual. Essentially it's a concern about subclasses (or implementers in this case) breaking the superclass, something which touches on a much broader topic how to use subclassing. However this was only a brief conversation over dinner so I'm not convinced we really fleshed out the discussion.

では、どうして言語がこれを許していないのだろうか？
言語設計者ではないので私はよく知らないのだが、
Anders Heljsberg{{fn('訳注：Turbo Pascal、Delphi、C#などの作者')}}にこの点について聞いたことがある。
彼の返答は、明示的にvirtualと宣言した場合のみ、オーバーライドを許可する方が好ましいという考えと同じであるというものだった。
これはつまり、サブクラス（あるいはその実装者）がスーパークラスを破壊しないかという懸念であり、継承をどのように使うかというもっと広範囲な主題に関わってくる話だ。
ただ、夕食のときに軽く話しだけなので、詳細については話を聞けていない。

//This issue isn't a problem with dynamically typed languages. If you want to implement another class's interface all you need to do is implement the same methods and just use the object where you need it. It's also quite common to use dynamic proxies to do this kind of thing in Java, although I feel that implicit interface implementation would be more communicative.

この話は動的型言語では問題にならない。
他のクラスのインタフェースを実装した場合、
必要なオブジェクトに同じメソッドを実装すればよいだけだからだ。
Javaでは、動的プロキシを使ってやる手もあるが、
暗黙的インタフェースの実装の方がより伝わりやすいだろう。

//Follow Up
//Mike Rettig pointed out one problem with this kind of approach - not every client uses the public interface only. Consider if the class PaymentPlan is in the same package as customer - it can then call package visibility methods on customer. If you substituted an implicit implementation for Customer you'd be stuck.

!!追記
Mike Rettigがこの手法の問題点——すべてのクライアントがpublicインタフェースだけを使っているとは限らない点——を指摘してくれた。
PaymentPlanクラスがCustomerと同じパッケージに入っている場合を考えてみよう——PaymentPlanクラスはCustomerのパッケージ可視性メソッドを呼び出すことができる。
そこでCustomerを暗黙的な実装に置き換えてしまうと、ハマる。

//The problem here is that there's multiple implicit interfaces on a class - one for each level of access control. This includes a wide open access for other instances of the same class. 

ここでの問題は、クラスには複数の暗黙的インタフェースがあるという点だ——アクセス制御ごとに1つのインタフェースがあることになる。
これには、同じクラスの他のインスタンスからアクセスできるという広範囲なオープンアクセスも含まれる。

!コメント

*2006-01-29 (日) 11:43:37 keis : ★部分とそれに続く一文の訳を考えて見ました。「返答は、明示的に virtual と宣言されたメンバのみ、オーバーライドを許す方が好ましいという彼の考えと軌を一にするものだった。つきつめればこれは、サブクラスが（あるいはその実装者が）スーパークラスを破壊しやしないかという懸念であり、継承をどのように使うかというもっと広範な主題に関わってくる話だ」。Heljsbergのスタンスは、クラス設計者によるコントロールを重視する、といったところなんでしょうね。（Effective Java の著者である）Joshua Bloch的でもありますね。
*2006-01-29 (日) 11:53:02 keis : It would be equivalent... で始まるパラグラフが抜けていたので追加しました。
*2006-01-30 (月) 10:18:03 kdmsnr : ありがとうございます。反映しました。
{{comment}}
