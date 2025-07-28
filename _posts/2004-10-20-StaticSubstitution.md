---
title: staticの置き換え
tags: [testing, application architecture, refactoring]
---

周囲の開発チームのそれぞれに、自分たちの仕事について思うところを訊いてみた。すると共通するテーマがあきらかになった。staticで保持することは嫌われている。

その典型的な例は、共通サービスやコンポーネントだ。これらはstatic変数で保持され、staticイニシャライザで初期化される。

(ほとんどの言語において)staticが由々しき問題なのは、ポリモフィズムを利用してある実装を別の実装に置き換えることができないからだ。

確かにこれは萎える。なぜなら我われはテスティング野郎だからだ——テストを巧くやるためにはサービスを[Service Stub](http://capsctrl.que.jp/kdmsnr/wiki/PofEAA/?ServiceStub)に置き換えられることが重要なのだ。

以下はこのテのstaticのサンプルだ:

```java
 public class AddressBook {
     private static String connectionString, username, password;
 
     static {
         Properties props = getProperties();
         connectionString =(String) props.get("db.connectionString");
         password = (String) props.get("db.password");
         username = (String) props.get("db.username");
     }
 
     public static Person findByLastName(String s) {
         String query = "SELECT lastname, firstname FROM PEOPLE where lastname = ?";
         Connection conn = null;
         PreparedStatement st = null;
         ResultSet rs = null;
         try {
             conn = DriverManager.getConnection(connectionString, username, password);
             st = conn.prepareStatement(query);
             st.setString(1, s);
             rs = st.executeQuery();
             rs.next();
             Person result = new Person (rs.getString(2), rs.getString(1));
             return result;
         } catch (Exception e) {
             throw new RuntimeException(e);
         } finally {
             cleanUp(conn, st, rs);
         }
     }
```

このサンプルでは、設定関連の初期化をstaticイニシャライザで行い、staticメソッドでデータベースに対してクエリを行っている。

このおかげで変更が簡単になるところもある。プロパティファイルを修正すれば、データベースの接続先をすぐに変更できる。しかし、テスティングではデータベース接続は全く行いたくない——シンプルなスタブが決まりきったデータを返してくれさえすればよいのだ。

シンプルにスタブと置き換え可能にするには、少々リファクタリングが必要だ。その最初のステップでは、staticをsingletonにする。

```java
 public class AddressBook {
 
     private static AddressBook soleInstance = new AddressBook();
 
     private String connectionString, username, password;
 
     public AddressBook() {
         Properties props = getProperties();
         connectionString =(String) props.get("db.connectionString");
         password = (String) props.get("db.password");
         username = (String) props.get("db.username");
     }
 
     public static Person findByLastName(String s) {
         return  soleInstance.findByLastNameImpl(s);
     }
 
     public Person findByLastNameImpl(String s) {
         String query = "SELECT lastname, firstname FROM PEOPLE where lastname = ?";
         Connection conn = null;
         PreparedStatement st = null;
         ResultSet rs = null;
         try {
             conn = DriverManager.getConnection(connectionString, username, password);
             st = conn.prepareStatement(query);
             st.setString(1, s);
             rs = st.executeQuery();
             rs.next();
             Person result = new Person (rs.getString(2), rs.getString(1));
             return result;
         } catch (Exception e) {
             throw new RuntimeException(e);
         } finally {
             cleanUp(conn, st, rs);
         }
     }
```

なんとわかりやすいリファクタリングであることよ。

* すべてのstaticなデータをインスタンスのデータにする。
* staticイニシャライズブロックのコードをコンストラクタに移動する。
* すべてのpublicメソッドをインスタンスに移して、staticメソッドは単純なデリゲータ(delegator)として残す。

このリファクタリングはカタログには収録していない——もし収録するならば「Singletonによるstaticの置き換え(Replace Statics With Singleton)」と呼ぶだろうね。現状では、何も変更はされていないが、これは置き換えをサポート可能すべく刻むステップなのだ。この次のステップでは、唯一のインスタンス(the sole instance)を読み込むメソッドを導入する。

```java
     public static void loadInstance(AddressBook arg) {
         soleInstance = arg;
     }
```

これでテスティング(あるいは他の目的)のために置き換える準備が整った。テストケースのsetUpメソッドで適切な呼び出しが可能だ。すなわち、``AddressBook.loadInstance(new StubAddressBook())``と。スタブが``AddressBook``のサブクラスであれば、テストを本番オブジェクトに対してではなくスタブに対して書ける。

ところが話はこれで終わりではない。上のコードでいえば、本物のサービスを実際に利用する・しないにかかわらず、必ずサービスのインスタンスを生成しなければならない——唯一のインスタンスをstaticイニシャライザで初期化しているからだ。これはサービスにアクセスするコード、つまりこのクラス自身の悩みの種になる。これをどうにかするためには、初期化処理をstaticイニシャライザから括り出して別の初期化用クラスへと分離し、初期化用クラスを置き換えるようにするのだ(これについては[Chrisのエントリ](http://www.skizz.biz/archives/000421.html)に詳しい)。とはいえ現状でも、最初の一歩として有効なことは間違いない。

これはSingletonのインスタンスを抱えこんでしまいがちになるのと同じ問題でもある。Singleton(または[Registry](http://capsctrl.que.jp/kdmsnr/wiki/PofEAA/?Registry))を採用しているすべての人の肝に銘じておいて欲しいのだが、Singletonは簡単に置き換え可能だ。Singletonの初期化処理についても同様。これも簡単に置き換えられる。

ちょうど手元に入手したばかりのMichael Feathersの新刊『Working Effectively With Legacy Code』があるのだが、彼はこうした問題についてより多く(そして上手に)語っている。

##  コメント

* 2004-11-13 (土) 00:26:11 ''[[かくたに]]'' : Hiki-devに手ぶらで相談できねーなー、と思って早数ヵ月。↓はイイ感じ。でもこの話題ってスレ違い？
* 2004-11-12 (金) 10:36:12 ''[[kdmsnr]]'' : どんな記法がいいんでしょうねえ。Hiki-devで聞きましょうか。
* 2004-11-11 (木) 01:34:15 ''[[かくたに]]'' : 遅ればせながら1周年のお祝いcontrib。忌憚無きツッコミ希望。WikiName抑止記法が欲しいのは私だけ？


