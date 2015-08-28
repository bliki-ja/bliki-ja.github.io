http://martinfowler.com/bliki/ConstructorInitialization.html

2006/2/7

//One of two approaches to initializing a new class, the other is SetterInitialization.

新しいオブジェクトを初期化する2つの方法のひとつ。
もうひとつの方法はSetterInitializationである。

//Constructor initialization is the approach where you try to ensure that you always create a class in a valid state by passing in all the collaborators that the object needs in the creation method of the object. So to create a person with firstname, lastname, and a collection of favorite bars we might see something like

コンストラクタによる初期化を使う場合は、
生成メソッドに必要なコラボレータをすべて渡して、
常に妥当な状態のオブジェクトを作るようにしなければならない。

<<<
# ruby
mf = Person.new('martin', 'fowler', 
                ['Turners Oyster Bar', 'Square and Compass'])
>>>

//By doing this you are always sure you have an object in a reasonably well-formed state that's ready to go. It's also a nicely compact approach, allowing you to get the object going in one line. If you only want to do one thing with the object, you can also assign it or call a method on it in that single line, which means you don't need a variable lying around.

これにより、すぐに使える整った状態のオブジェクトを常に得ることができる。
これはまたコンパクトな方法でもある。
ワンライナーでオブジェクトを生成できるからだ。
オブジェクトに行わせたいことが1つだけだったら、
これに続けて何かをアサインしたりメソッドを呼び出したりすれば、
1行で済むことになる。何行もだらだら書く必要はない。

//Declaring all the necessary collaborators in the constructor makes it clear which collaborators are needed, making it easier to see how to get the class going. You'll need one constructor method for each valid combination of mandatory collaborators. It's usually handy to provide constructors that include commonly needed optional collaborators too.

コンストラクタで必要なコラボレータを宣言することで、
明示的にそれが分かるし、クラスがどのように扱えばよいのかも簡単に分かる。
必要なコラボレータの組ごとにコンストラクタを設ける必要があるかもしれない。
頻繁に必要となるコラボレータをコンストラクタに含めてしまうのも便利だ。

//This approach makes it easy to see the difference between immutable and updatable attributes as immutable attributes don't have a setting method, they are just initialized in the construction method.

この方法だと、イミュータブルな属性と更新可能な属性を区別することができる。
イミュータブルな属性はコンストラクタで初期化されるため、セッターメソッドが存在しないのである。

//Constructor Initialization is my first choice. There are cases when it's difficult to set things up this way and I do occasionally prefer setter initialization, but most of the time constructor initialization is the best bet.


私は最初にコンストラクタによる初期化を考える。
それが難しい場合は、セッターによる初期化を行う。
ただし、コンストラクタによる初期化がベストな方法だ。

//Common Issues
!よくある疑問

//What if there's lots of different legal combinations for a new object? Often people get worried that there will be a gazillion constructor methods if you use this approach. Most of the time, this isn't an issue - there's only a few. You only really need the mandatory collaborators here, and there's hardly ever more than a handful of combinations of them.

!!オブジェクトを作成する正しい組み合わせがいくつもあったらどうするの？

この方法を使ったばっかりに、コンストラクタが一億と二千個もあるから困ってるっていう話をよく耳にする。
たいていの場合、これはあまり問題にはならない。ごくごく稀なケースである。
その場合は、本当に必要なコラボレータだけを配置すればよいだろう。
その他の組み合わせは滅多にない。

//What if there's a lot of collaborators to provide in the constructor? A large list of construction parameters, like any large parameter list, is a CodeSmell. Usually when I see these I find that many of the parameters are DataClumps and should be replaced by their own object. Having said that it's not unusual for constructor methods to have more parameters than other methods - but they are a good place to spot data clumps.

!!コンストラクタに渡すコラボレータがたくさんあったらどうするの？

コンストラクタのパラメータがたくさんあったら、その他のパラメータと同じく、CodeSmellだ。
この状況を目にしたら、パラメータをDataClumpsだと見なして、オブジェクトに置き換える。
コンストラクタのパラメータの数が他のメソッドよりも多いのはよくあることだ、
なんて言われるけれど、ここはDataClumpsが見つかるいい場所なのだ。

//How does this square with ContextualValidation? The context here is basic usage of the object - essentially a minimally useful state. This probably won't be valid for various other activities, but it should be valid enough to be useful. 

!!ContextualValidationと一緒に使うにはどうすればいいの？

ここでの文脈は、オブジェクトの基本的な使用である——つまり、使い物になる状態であればそれでよいのだ。
他の様々なアクティビティに使うには妥当でなくとも、
使い物になる程度には妥当であるべきだ。
