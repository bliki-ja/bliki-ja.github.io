---
title: RoleInterface
tags: [API design]
---

http://martinfowler.com/bliki/RoleInterface.html

2006/12/22

// Interfaces for software elements take two forms, what I call role interface and HeaderInterface. A role interface is defined by looking at a specific interaction between suppliers and consumers. A supplier component will usually implement several role interfaces, one for each of these patterns of interaction. This contrasts to a header interface, where the supplier will only have a single interface.

ソフトウェアの構成要素としてのインタフェースには二種類ある。
ひとつは私がロールインタフェースと呼んでいるもの、もうひとつはHeaderInterfaceである。
ロールインタフェースは、サプライヤ(suppliers)とクライアント(consumers){{fn('訳注：一方がサプライアだから対になるようにコンシューマになってるんだろうけど、ここでは一般的に使われる「クライアント」とした。thx:greentea')}}間の、ある特定のやり取りを考慮して定義される。
サプライヤコンポーネントは通常、いくつかのロールインタフェースを実装する。
インタフェースのひとつひとつが、この種のやり取りに使用される。
サプライヤコンポーネントがただひとつのインタフェースしか持たないヘッダーインタフェースとは対称的である。

// Let's look at this with an example. Consider a program for PERT style project planning. In this scheme we break down a project into a set of activities. We then arrange these activities into a network (strictly a directed acyclic graph) to show the dependencies between the tasks. So if 'have breakfast' is a task, then 'make coffee' and 'mix cereal' might be predecessor activities. This means I cannot begin to have my breakfast until all the predecessors have completed.

[[PERT|http://en.wikipedia.org/wiki/PERT_Chart]]を使ったプロジェクト計画のプログラムを例にして見ていこう。
ここでは、プロジェクトをいくつかのアクティビティに分解する。
次に、これらのアクティビティをネットワーク（厳密に言えば、[[非循環有向グラフ|http://en.wikipedia.org/wiki/Directed_acyclic_graph]]）に配置し直して、
タスク間の依存関係を示す。
「朝食を食べる」がタスクならば、「コーヒーをいれる」や「シリアルを混ぜる」などは事前に行われるアクティビティとなる。
つまり、事前処理が完了しない限り、朝食を食べ始めることはできないのだ。

//Each activity has a duration, how long we expect it to take. With that duration, together with the relationships in the network, we can figure out other information. We can calculate the earliest start of an activity as the latest earliest finish of its predecessors. We calculate the earliest finish of an activity as its earliest start plus its duration. Similarly we can work out the latest finish and latest start. The code would look something like this.

各アクティビティには、どれだけ時間がかかるかという、所要時間がある。
所要時間があれば、ネットワーク内での相互関係を使って、その他の情報を算出することができる。
アクティビティの最早開始時間は、事前処理の最遅終了時間から算出することができる。
最早終了時間は、最早開始時間に所要時間を足せば算出できる。
同様に、最遅終了時間と最遅開始時間も算出できる。
コードは以下のようになる。
<<<
  private int duration;

  public MfDate earliestStart() {
    MfDate result = MfDate.PAST;
    for (?TYPE? p : predecessors())
      if (p.earliestFinish().after(result))
        result = p.earliestFinish();
    return result;
  }

  public MfDate earliestFinish() {
    return earliestStart().addDays(duration);
  }

  public MfDate latestFinish() {
    MfDate result = MfDate.FUTURE;
    for (?TYPE? s : successors())
      if (s.latestStart().before(result))
        result = s.latestStart();
    return result;
  }

  public MfDate latestStart() {
    return latestFinish().minusDays(duration);
  }
>>>
// You'll notice a hole in that code above - the ?TYPE?s. If we ask an activity for its predecessors and successors, what type of objects should we expect back? (To be precise we expect to return a collection, so the real question is what should the type of the elements of the returned collection be?)

上のコードが穴埋め式になっていることに気づいたかもしれない。「?TYPE?」の部分である。
アクティビティに{{code('predecessors')}}（事前処理）と{{code('successors')}}（事後処理）を呼び出させると、どんな型のオブジェクトが戻ってくればよいだろうか？（正確に言えばコレクション型が戻って来るので、「戻り値であるコレクションの要素の型は何がよいだろうか？」が正しい質問）

// If you use a header interface, the returned interface would be an activity and would mirror the public methods of our activity class to create an InterfaceImplementationPair.

ヘッダーインタフェースを使うと、戻ってきたインタフェースはアクティビティ型であり、InterfaceImplementationPairを作るためにパブリックなメソッドを実装している。
<<<
 public interface Activity ...
   MfDate earliestStart();
   MfDate earliestFinish();
   MfDate latestFinish();
   MfDate latestStart();

 class ActivityImpl...
   List<Activity> predecessors() ...
   List<Activity> successors() ...
>>>
//With a role interface, however, we look at how the collaborating objects are actually used. In this case a successor is only used for its latestStart and a predecessor is only used for its earliestFinish. So as a result we create two interfaces which only have the methods we actually use.

一方、ロールインタフェースであれば、協調するオブジェクトがどのように使われるかを考慮することになる。
この場合、successor は {{code('latestStart')}} でのみ使用され、predecessor は {{code('earliestFinish')}} でのみ使用される。
そのため、実際に使うメソッドを持つ２つのインタフェースを作ることになる。
<<<
 public interface Successor {
   MfDate latestStart();
 }
 public interface Predecessor {
   MfDate earliestFinish();
 }

 class Activity
   List<Predecessor> predecessors() ...
   List<Successor> successors() ...
>>>
// We can think of a successor as a role that a collaborating object plays with respect to this object. This approach of thinking about objects and the roles that they play in collaborating with others has a long history in the object-oriented world.

successor はこのオブジェクトとのみ協調するロールだと考えることができる。
オブジェクトとロールがお互いに協調し合うと考える手法は、オブジェクト指向の世界ではずいぶんと歴史のあるものである。

//The strength of a role interface is that it clearly communicates the actual collaboration between an activity and its successors. Often a class doesn't use all the methods of a class, so it's good to show which ones are actually needed. This can be particularly useful if you need to substitute it later on. A header interface forces you to implement every method, even if you're not going to need them; but with a role interface you only need to implement exactly what's needed.

ロールインタフェースの利点は、アクティビティとsuccessorsという実際の協調関係の間で、明確にコミュニケートするという点である。
通常、クラスはすべてのメソッドを使うことはない。
そのため、実際に必要なものだけ見せるというのはよい考えだ。
あとで代替が必要となる場合には、特に有用である。
ヘッダインタフェースだと、これから必要にならなくても、すべてのメソッドを実装しなければならない。
しかし、ロールインタフェースならば、実際に必要なものだけを実装すればよい。

//The disadvantage of a role interface is that it's more effort to come up with, since you need to look at each collaboration to form the role interface. With a header interface all you have to do is duplicate the public methods, no thought needed. There is also a sense of dependence on your consumers. I say a "sense" because there isn't a formal dependency, but it's still enough to make many people uncomfortable. They prefer header interfaces because they believe that you shouldn't care who uses your service, or how. You publish an interface and they can use it if they find it useful.

ロールインタフェースの不利点は、作る手間がかかるという点である。
なぜなら、ロールインタフェースを作るには、それぞれの協調関係を考慮する必要があるからである。
ヘッダインタフェースならば、必要ではなくとも、パブリックメソッドを置いておけばよい。
また、クライアントに依存するような感じもする。
「感じ」と言ったのは、フォーマルな依存関係があるわけではないが、多くの人々を不快にするからだ。
クライアントは、あなたが「誰が、どのように、サービスを使うか」を気にせずに済むと信じているので、ヘッダインタフェースを好む。
あなたがインタフェースを公布すれば、クライアントは（有用だと思えば）それを使うことができる。

// On the whole I much prefer role interfaces, so I suggest pushing towards them as much as you can. There is work involved in doing it, but my belief has always been that you should only use interfaces when you really need substitutability, and if you do need interfaces you should think hard about what the consumer of that interface needs.

私はロールインタフェースのほう好みなので、できるだけそちらを使っていくことをおすすめする。
これには手間がかかるが、私にはインタフェースは代替性が本当に必要なときのみ使うべきだという信念がある。
また、インタフェースが必要であれば、インタフェースのクライアントが何を必要としてるかを真剣に考えるべきである。

// There is an interesting twist if you think of this in a remoting context using something like web services. If we were to ask a remote service for details on predecessors, what should we expect back? Some might argue that for it to be a role interface, it should only return a document with earliest finish data. I would disagree - I think it's perfectly valid for it to return a document with more data than I asked for. The point is that any type checking involved should only check that the earliest finish data is present. If extra data can be ignored, then it's no crime to supply it; just as a class may implement multiple interfaces. This thinking matches the philosophy of Consumer Driven Contracts, which is one of the reasons I find consumer driven contracts so compelling.

Webサービスのようなリモート環境では、興味深い「ねじれ」が発生する。
リモートサービスにpredecessorsの詳細を問い合わせた場合、何が戻ってきて欲しいだろうか？
最早終了日を含んだドキュメントを戻すだけのロールインタフェースだという者もいるだろう。
だが私は反対である——求めたもの以上のデータを含んだドキュメントが、この場合最適だと思う。
ポイントは、ここで必要とされる型チェックは、最早終了日が存在しているかどうかだけでよい点である。
それ以外のデータを無視することができれば、そのデータを提供しても問題ない。
クラスは複数のインタフェースを実装すればよい。
この考えは[[Consumer Driven Contracts|http://martinfowler.com/articles/consumerDrivenContracts.html]](クライアント駆動契約)の考えとも一致する。
私が、クライアント駆動契約が非常に強い影響力を持つと考えているのは、このためである。

// As I've indicated, this notion has been around for a long time. Trygve Reenskaug wrote a methodology book based around analyzing roles and synthesizing them into classes. Robert Martin talks about this topic as the Interface Segregation Principle: role interfaces follow that principle but header interfaces do not. 

先ほども述べたが、これは古くからある考え方である。
Trygve Reenskaugが、ロール分析に基づいたクラス設計の方法論を{{isbn('0134529308','本')}}を著している。
Robert Martinは、このトピックを「[[インターフェイス分離の原則|http://www.objectmentor.com/resources/articles/isp.pdf]](Interface Segregation Principle)」として述べている。
ロールインタフェースはこの原則に沿っているが、ヘッダインタフェースはそうではない。
