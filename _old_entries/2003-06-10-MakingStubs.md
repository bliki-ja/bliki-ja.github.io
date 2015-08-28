---
title: スタブの生成
tags: [testing]
---

http://www.martinfowler.com/bliki/MakingStubs.html

テストによって拡張されてきた設計における一般的な問題は、実際に動くものが製品向け(やテスト向け)にある一方で、テストモードにおいてサービススタブをどのように生成するかです。私の同僚の何人かは、同じ考えをもっています。

Jeremy Stell-Smithは、Abstract Factoryに基づくアプローチを見せてくれました。スタブにすることができるサービスを、すべて一つのファクトリから引き出すようにするのです。次の例は、そうして動くPersistenceクラスです。

 public abstract class Persistence ...
   public static Persistence getInstance() {
     return (Persistence)Factories.get(Persistence.class);
   }
 
  public abstract void save(Object obj);

Abstract Factoryでも可能なように、テストのファクトリも実装をうまく積み重ねることができます。—これによりファクトリの準備が簡単になります。

 public class FooTest ...
   public void setUp() {
     TestFactories.pushSingleton(Persistence.class, new MockPersistence());
   }
 
   public void tearDown() {
     TestFactories.pop(Persistence.class);
   }
 
   public void testSave() {
     Foo foo = new Foo();
     foo.save();
     ...
   }
 
 public class Foo ...
   public void save() {
     Persistence.getInstance().save(this);
   }

他のプロジェクトでは、Kraig Parkinson が少し違うやり方を見せています。単一の抽象ファクトリを使うのではなく、スタブを必要とするようなサービスはプロトタイプを使います。

 public class MyFacade {
   private static MyFacade prototype;
   
   /**
    * getInstance メソッドから返されるファサードのインスタンスを設定する。
    * getInstance メソッドは、ファサードのクライアントすべてが使用する。
    */
   public static void setFacade(MyFacade newPrototype) {
     prototype = newPrototype;
   }
   
   /**
    * もしセットされていればプロトタイプを使用して、ファサードのインスタンスを返す。
    * そうでなければ、ファサードのインスタンスは通常の操作を通して作られたインスタンスを返す。
    */
   public static MyFacade getInstance() {
     if (prototype != null)
       return prototype;
     else
       return new MyFacade();
   }

これをテストで使うには、次のようにします。

 public class MyClientTest extends junit.framework.TestCase {
   private class Client {
     public String speak(String input) {
       return MyFacade.getInstance().echo(input);
     }
     public void dance() {
       return MyFacade.getInstance().move();
     } 
   }
   public void testSpeak() {
     final String expectedInput = "bar";
     final String expectedOutput = "foo";
     
     MyFacade.setPrototype(new MyFacade() {
       public String echo(String input) {
         assertEquals(expectedInput, input);
         return expectedOutput;
       }
     }
 
     // ファサードを実行したものと同じコードを実行する。
     // しかし、それが終わったらプロトタイプの参照を消去することを忘れてはならない。
     try {
       final String actualOutput = new Client.speak(expectedInput);
       assertEquals(expectedOutput, actualOutput);
     } finally {
       MyFacade.setPrototype(null);
     }
   }
 
   public void testDance() {
     final StringBuffer proof = new StringBuffer();
     
     MyFacade.setPrototype(new MyFacade() {
       public void move() {
         proof.append("g");
       }
     }
 
     // ファサードを実行したものと同じコードを実行する。
     // しかし、それが終わったらプロトタイプの参照を消去することを忘れてはならない。
     try {
       new Client().move();
       assertTrue("move was not invoked", proof.length > 0);
     } finally {
       MyFacade.setPrototype(null);
     }
   }

この例においてKreigは、テストメソッドの{{code(finally)}}ブロックの中でリソースを開放しています。他の手段(私はそうすべきだと思うのですが)としては、開放のコードを{{code(tearDown)}}メソッドの中に置くようにもできます。

ダンスのケースは、Mock Objectsを実践する人たちがモックオブジェクトに予想を設定するのと同じです。これをMock Objectsを行う簡便な方法であると考えてもいいでしょう。


translated cept<ceptcept@hotmail.com>
