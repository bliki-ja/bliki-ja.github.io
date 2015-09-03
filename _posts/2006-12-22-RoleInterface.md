---
title: RoleInterface
tags: [API design]
---

http://martinfowler.com/bliki/RoleInterface.html





ソフトウェアの構成要素としてのインタフェースには二種類ある。
ひとつは私がロールインタフェースと呼んでいるもの、もうひとつはHeaderInterfaceである。
ロールインタフェースは、サプライヤ(suppliers)とクライアント(consumers){{fn('訳注：一方がサプライアだから対になるようにコンシューマになってるんだろうけど、ここでは一般的に使われる「クライアント」とした。thx:greentea')}}間の、ある特定のやり取りを考慮して定義される。
サプライヤコンポーネントは通常、いくつかのロールインタフェースを実装する。
インタフェースのひとつひとつが、この種のやり取りに使用される。
サプライヤコンポーネントがただひとつのインタフェースしか持たないヘッダーインタフェースとは対称的である。



[PERT](http://en.wikipedia.org/wiki/PERT_Chart)を使ったプロジェクト計画のプログラムを例にして見ていこう。
ここでは、プロジェクトをいくつかのアクティビティに分解する。
次に、これらのアクティビティをネットワーク（厳密に言えば、[非循環有向グラフ](http://en.wikipedia.org/wiki/Directed_acyclic_graph)）に配置し直して、
タスク間の依存関係を示す。
「朝食を食べる」がタスクならば、「コーヒーをいれる」や「シリアルを混ぜる」などは事前に行われるアクティビティとなる。
つまり、事前処理が完了しない限り、朝食を食べ始めることはできないのだ。



各アクティビティには、どれだけ時間がかかるかという、所要時間がある。
所要時間があれば、ネットワーク内での相互関係を使って、その他の情報を算出することができる。
アクティビティの最早開始時間は、事前処理の最遅終了時間から算出することができる。
最早終了時間は、最早開始時間に所要時間を足せば算出できる。
同様に、最遅終了時間と最遅開始時間も算出できる。
コードは以下のようになる。

```java
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
```


上のコードが穴埋め式になっていることに気づいたかもしれない。「?TYPE?」の部分である。
アクティビティに``predecessors``（事前処理）と``successors``（事後処理）を呼び出させると、どんな型のオブジェクトが戻ってくればよいだろうか？（正確に言えばコレクション型が戻って来るので、「戻り値であるコレクションの要素の型は何がよいだろうか？」が正しい質問）



ヘッダーインタフェースを使うと、戻ってきたインタフェースはアクティビティ型であり、InterfaceImplementationPairを作るためにパブリックなメソッドを実装している。

```java
 public interface Activity ...
   MfDate earliestStart();
   MfDate earliestFinish();
   MfDate latestFinish();
   MfDate latestStart();

 class ActivityImpl...
   List<Activity> predecessors() ...
   List<Activity> successors() ...
```


一方、ロールインタフェースであれば、協調するオブジェクトがどのように使われるかを考慮することになる。
この場合、successor は ``latestStart`` でのみ使用され、predecessor は ``earliestFinish`` でのみ使用される。
そのため、実際に使うメソッドを持つ２つのインタフェースを作ることになる。

```java
 public interface Successor {
   MfDate latestStart();
 }
 public interface Predecessor {
   MfDate earliestFinish();
 }

 class Activity
   List<Predecessor> predecessors() ...
   List<Successor> successors() ...
```


successor はこのオブジェクトとのみ協調するロールだと考えることができる。
オブジェクトとロールがお互いに協調し合うと考える手法は、オブジェクト指向の世界ではずいぶんと歴史のあるものである。



ロールインタフェースの利点は、アクティビティとsuccessorsという実際の協調関係の間で、明確にコミュニケートするという点である。
通常、クラスはすべてのメソッドを使うことはない。
そのため、実際に必要なものだけ見せるというのはよい考えだ。
あとで代替が必要となる場合には、特に有用である。
ヘッダインタフェースだと、これから必要にならなくても、すべてのメソッドを実装しなければならない。
しかし、ロールインタフェースならば、実際に必要なものだけを実装すればよい。



ロールインタフェースの不利点は、作る手間がかかるという点である。
なぜなら、ロールインタフェースを作るには、それぞれの協調関係を考慮する必要があるからである。
ヘッダインタフェースならば、必要ではなくとも、パブリックメソッドを置いておけばよい。
また、クライアントに依存するような感じもする。
「感じ」と言ったのは、フォーマルな依存関係があるわけではないが、多くの人々を不快にするからだ。
クライアントは、あなたが「誰が、どのように、サービスを使うか」を気にせずに済むと信じているので、ヘッダインタフェースを好む。
あなたがインタフェースを公布すれば、クライアントは（有用だと思えば）それを使うことができる。



私はロールインタフェースのほう好みなので、できるだけそちらを使っていくことをおすすめする。
これには手間がかかるが、私にはインタフェースは代替性が本当に必要なときのみ使うべきだという信念がある。
また、インタフェースが必要であれば、インタフェースのクライアントが何を必要としてるかを真剣に考えるべきである。



Webサービスのようなリモート環境では、興味深い「ねじれ」が発生する。
リモートサービスにpredecessorsの詳細を問い合わせた場合、何が戻ってきて欲しいだろうか？
最早終了日を含んだドキュメントを戻すだけのロールインタフェースだという者もいるだろう。
だが私は反対である——求めたもの以上のデータを含んだドキュメントが、この場合最適だと思う。
ポイントは、ここで必要とされる型チェックは、最早終了日が存在しているかどうかだけでよい点である。
それ以外のデータを無視することができれば、そのデータを提供しても問題ない。
クラスは複数のインタフェースを実装すればよい。
この考えは[Consumer Driven Contracts](http://martinfowler.com/articles/consumerDrivenContracts.html)(クライアント駆動契約)の考えとも一致する。
私が、クライアント駆動契約が非常に強い影響力を持つと考えているのは、このためである。



先ほども述べたが、これは古くからある考え方である。
Trygve Reenskaugが、ロール分析に基づいたクラス設計の方法論を{{isbn('0134529308','本')}}を著している。
Robert Martinは、このトピックを「[インターフェイス分離の原則](http://www.objectmentor.com/resources/articles/isp.pdf)(Interface Segregation Principle)」として述べている。
ロールインタフェースはこの原則に沿っているが、ヘッダインタフェースはそうではない。
