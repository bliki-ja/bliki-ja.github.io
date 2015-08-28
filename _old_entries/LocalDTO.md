http://martinfowler.com/bliki/LocalDTO.html

（最後の部分を更新）

[[ThoughtBloggers|http://blogs.thoughtworks.com/]]をよく見ているんでしたら、
[[fowlbotのひとりが怒っている|http://blogs.codehaus.org/people/tirsen/archives/000859_data_transfer_objects_makes_me_sick.html]]のをご存じかもしれません。
オーストラリアの太陽がスウェーデンのモデルをジリジリと焦がしています。

Jonは[[Data Transfer Objects|http://martinfowler.com/eaaCatalog/dataTransferObject.html]]（[[邦訳|PofEAA:DataTransferObject]]）にムカついているようですが、
これはDTOが悪者ということではありません。
他のパターンと同様、ある文脈内でのみ有用というだけのことです。
パターンは常に2つの部分に分けられます。
「どのように使うか（How）」と「いつ使うか（When）」です。
実装の仕方を知るだけでなく、
いつ使う（使わない）べきかも知っておく必要があるのです。

彼はポイントを突いています。
私はリモートインターフェースという文脈でDTOを語っていますが、
パターンにリモートという意味合いを含めることをしませんでした。
また、私も、リモートではない環境でDTOを好んで使う人によく会います。
というわけで、説明を補っておくよい機会かもしれません。

DTOはデータ転送オブジェクト(Data Transfer Objects)と呼ばれています。
重たいリモートコールを使ったデータの移行が目的だからです。
このインターフェースはパフォーマンスのために粗く作られたリモートインターフェースです。
ローカルコールでは使う必要はありません。
粗いAPIは使うのが難しいですし、
ドメインやデータソース層からDTOにデータを移す作業を
すべて自分で行わなければなりませんから。

中には、DTO は [[Service Layer|http://martinfowler.com/eaaCatalog/serviceLayer.html]]（[[邦訳|PofEAA:ServiceLayer]]） の API の一部だという人もいます。
Service Layer のクライアントが [[Domain Model|http://martinfowler.com/eaaCatalog/domainModel.html]]（[[邦訳|PofEAA:DomainModel]]） に依存しないようにしてくれるからです。
これはお手軽な方法かもしれませんが、
データマッピングのコストに見合うとは思えません。
貢献者である Randy Stafford は [[P of EAA|http://martinfowler.com/books.html#eaa]] のなかでこう言っています{{fn('訳注: PofEAA, Service Layerの節')}}。
「
DTOを使うコストを過小評価するな。
それは深刻かつ困難なものなのだ——
オブジェクトリレーショナルマッピングに次ぐコストと苦労が強いられるぞ。
」


他にも、後から分散するかもしれないから DTO を使っておくと言うひともいました。
分散するかもしれないだなんて、
私は[[第一の法則|FirstLaw]]で激しく非難してるんですが。
リモート境界を追加すると、複雑さも追加されます。
Randy のアドバイスを繰り返します{{fn('訳注: PofEAA, Service Layerの節')}}。
「
ドメインオブジェクトに従ったメソッドシグニチャを持つ Service Layer を
ローカルで呼び出すことから始めよ。
もしリモート環境が必要ならば、
Service Layer 上に [[Remote Facade|http://martinfowler.com/eaaCatalog/remoteFacade.html]]（[[邦訳|PofEAA:RemoteFacade]]） を置くか、
Service Layer のオブジェクトにリモートインターフェースを実装するかにしろ。
」

DTOのようなものを使うとよいのは、
プレゼンテーション層のモデルとドメインモデルとの間に
大きなミスマッチがある場合です。
この場合、プレゼンテーションに特化したファサード（またはゲートウェイ）を作り、
ドメインモデルをマッピングして、プレゼンテーションに都合のよいインターフェースを
提供するのは理に適っています。
これは [[Presentation Model|http://martinfowler.com/eaaDev/PresentationModel.html]] とも合います。
これについては新しい本（PofEAA vol.2）でもっと詳しくお話したいと思います。
これはやる価値があると思います。
ただし、ミスマッチのある画面に対してのみ有効です。
（この場合、余分な仕事にはなりません。
画面に表示させるということは、どのみちやらなければならないことですから。
）

'''Update:''' Thibaut Barrere がローカルDTO のもうひとつの目的について指摘してくれました。
マルチスレッドアプリケーションにおいて、スレッド間で情報のやり取りを行うために使います。
マルチスレッドを扱うときは、アプリケーションを複数の独立したエリア（単一のスレッドが走っている）に分割するとよいでしょう。
こうすると、エリア内で並列処理制御を行う必要がなくなります。
もし独立したエリア間でやり取りを行う必要がある場合は、
情報を運ぶメッセージとしてDTOを用いたメッセージキューを使うことになるでしょう。

-----
*{{isbn_image '4822282287'}}
-----

* [[Microsoft patterns & practices Patterns - データ転送オブジェクト|http://www.microsoft.com/japan/msdn/practices/type/Patterns/enterprise/DesDTO.asp]]
* [[はてなダイアリー - ひがやすをの「なれるものなら押切もえ」 - [くーす]ローカルDTO|http://d.hatena.ne.jp/higayasuo/20041207#1102379088]]


*2005-01-14 (金) 11:58:42 ''[[keis]]'' : "obviously" を強調してみたらどうでしょう。---「なんてったって、スウェーデン産のモデル連中ってのは、オーストラリアの陽射しでコゲコゲになるもんなんです。」
*2005-01-11 (火) 23:45:55 ''[[babie]]'' : あってると思いますが自信なし。ツッコミ待ちですね。
*2005-01-11 (火) 19:36:17 ''[[kdmsnr]]'' : こういうのって訳しにくいですね...(^^;　修正してみましたが、どうでしょう。
*2005-01-11 (火) 18:31:00 ''[[babie]]'' : Jahan Normanはナカナカの男前<http://www.nsquared2.net/johan/about.aspx>(多分)なので、「オーストラリアの暑い陽射しが(ファッション)モデルを焦がす」みたいな隠喩もアルカモ。
*2005-01-11 (火) 18:30:21 ''[[babie]]'' : 「★意味わからん」について：リンク先の記事"Data Transfer Objects makes me sick!"コメント欄で、オーストラリアンのJon Tirsenが、スウェディッシュのJohan Normanを一蹴している様子でしょう。言葉は厳しいですがフェイスマークが入っていたりして緊迫感がないのでこっちの文章もお茶らけたのでは。
