http://martinfowler.com/bliki/EvansClassification.html

//In his excellent book Domain Driven Design, Eric Evans creates a classification of the different kinds of domain objects that you're likely to run into.

Eric Evansのエクセレントな著書『Domain Driven Design』では、
我々がしばしば目にする様々なドメインオブジェクトが以下のように分類されている。

//    * Entity: Objects that have a distinct identity that runs through time and different representations. You also hear these called "reference objects".
//    * Value Object: Objects that matter only has the combination of their attributes. Two value objects with the same values for all their attributes are considered equal. I also describe value objects in P of EAA.
//  * Service: A standalone operation within the context of your domain. A Service Object collects one or more services into an object. Typically you will have only one instance of each service object type within your execution context.

* エンティティ：アイデンティティを持ち、時間経過によって形を変えるオブジェクト。「リファレンスオブジェクト」とも呼ばれることがある。
* バリューオブジェクト：属性の組み合わせに意味があるオブジェクト。同じ値（バリュー）を持つ2つのバリューオブジェクトは、どちらもすべての属性が等しいと見なされる。[[バリューオブジェクト|PofEAA:ValueObject]]については、私も[[P of EAA|http://martinfowler.com/books.html#eaa]]で触れている。
* サービス：ドメインにおける独立したオペレーション。サービスオブジェクトは1つ以上のサービスを持つ。実行文脈におけるサービスオブジェクト型のインスタンスは、通常は1つだけである。

//This classification is something that resonates well with my experience of what you need in domain models. The trouble is that the trio are hard to define precisely, they are of the "I know them when I see them" category.

この分類は私の経験から考えられるものと近い。
問題は、これら3つの分類を正確に定義することができないという点だ。
これは「見れば分かる（見るまで分からない）」という分類方法なのである。

//As such some examples may help. Entities are usually big things like Customer, Ship, Rental Agreement. Values are usually little things like Date, Money, Database Query. Services are usually accesses to external resources like Database Connection, Messaging Gateway, Repository, Product Factory.

次のような例を手がかりとして分類できるかもしれない。
エンティティは「顧客」「出荷」「賃貸契約」など大きなものである。
バリューオブジェクトは「時間」「お金」「データベースクエリー」など小さなものである。
サービスは「データベースコネクション」「メッセージングゲートウェイ」「レポジトリ」「プロダクトファクトリ」といった外部リソースにアクセスするものである。

//One clear division between entities and values is that values override the equality method (and thus hash) while entities usually don't. This is because you usually don't want to have more than one object representing the same conceptual entity within your processing context, however you don't care about multiple "5.0" objects. Values may be primitives (in languages that make the distinction) or have special language support (as they do in .NET) but they don't have to. One important rule to follow is that value objects should be immutable (otherwise you get into all sorts of trouble with aliasing bugs). To change a value (such as my height) you don't change the height object, you replace it with a new one.

エンティティとバリューオブジェクトの明確な違いは、バリューオブジェクトは等価メソッドをオーバーライドする（そこでハッシュ値を持つ）が、エンティティはオーバーライドしないという点である。
なぜなら、同一プロセス上に同じ概念を表すエンティティが複数あるのは困るが、
「5.0」オブジェクトならば複数あっても構わないからである。
バリューは、
プリミティブだったり（両者を区別している言語）、
特別な言語サポートを受けていたり（.NETなど）するが、
それらは必ずしも必要なことではない。
従うべきルールは「イミュータブルにすること」ただそれだけである（そうしないと、そのことが原因でバグが発生し、様々なトラブルが起きる）。
イミュータブルにするということは、
値（たとえば私の身長）を変更するときに身長オブジェクトを変更するのではなく、
新しいオブジェクトと入れ替えるということである。

//Service objects are often implemented by using global variables, class fields (monostates in Robert Martin's terminology) or singletons. Certainly they usually singular, in that you only have one of them, but how you do that is more varied. Usually the singularity is within a processing context - so one per thread in a multi-threaded environment. In any case you should ensure that your implementation mechanism is hidden from other domain objects so you can easily change it. Eric states in his book that services should be stateless, although we've talked about that and he no longer things that is necessary - although it's nice if you can do it.

サービスオブジェクトはグローバル変数やクラス変数（Robert Martinの言うmonostates）、あるいはシングルトンで実装されることが多い。
★たいていは、ただ1つになるが、その実現方法は様々である。★
「ただ1つ」というのは「ひとつの処理内において」という意味であり、
マルチスレッド環境では「ひとつのスレッド内で」という意味になる。
いずれにせよ、他のドメインオブジェクトから見えないようにして、実装メカニズムを容易に変更できるようにしなければならない。
Ericは著書のなかで「サービスはステートレスであるべきだ」と述べている。
ただし、彼と話をするなかで、今は必ずしもステートレスではなくてもよい、ということになっている。
もちろん、ステートレスにできるなら、したほうがよい。

//One of the problems with this area is that this terminology, although evocative, gets terribly muddled up with other ideas. Entity is often used to represent a database table or an object that corresponds to a database table. Service has the whole Service Oriented Architecture thing going on, as well as service layers in application architecture. So if I use these terms I have to make it clear I'm using them within the context of Domain Models and according to their meaning within Eric's book. So be wary of assuming people are using these words like this - they are heavily overloaded. Sadly there's not much alternative.

ここで問題となるのは、その用語である。
分かりやすいことは分かりやすいのだが、困ったことに、他の意味と取り違えてしまうことがある。
「エンティティ」は一般にデータベースのテーブルやそれに対応したオブジェクトのことを指す用語である。
「サービス」はSOAの意味する"サービス"とかぶっているし、
アプリケーションアーキテクチャの"[[サービスレイヤ|PofEAA:ServiceLayer]]"ともかぶっている。
これらの3つの用語を使うときは、
ドメインモデルの文脈で、
Eric本で述べられている意味で、
使っていることを明確にすべきだろう。
これら3つの用語を使っている人を見たら、
それがどんな文脈で使われているかを注意する必要がある。
かなり面倒くさいことではあるが、
残念なことに他にうまいこと言い換える言葉がないのだ。
