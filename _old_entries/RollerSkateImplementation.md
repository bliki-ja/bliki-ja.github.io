http://martinfowler.com/bliki/RollerSkateImplementation.html

2007/9/9	

//A key property of agile development is figuring out how to make a system go live with a small subset of features. We build software for the business value it offers, the quicker we go live, the faster we get at least some of that business value.

アジャイル開発の重要な特性として、小さな機能サブセットに分割してシステムを稼動させる方法をあれこれ考える、というものがある。
我々は、ソフトウェアがもたらすビジネス価値のためにソフトウェアを構築するのである。
システムの稼動が早ければ、それだけそのビジネス価値（の少なくとも幾分か）を早く手に入れることができる。

//My colleague Dave Leigh-Fellows told me one of my favorite examples of this kind of thinking. It came when we has working for a brokerage firm. They had a new kind of product that they wanted to get into the market. The full software support for this was a web page that the customer filled in that generated the necessary transactions against the back-end system. But Dave came up with a way to get the product into the market faster than that.

同僚のDave Leigh-Fellowsがこの考えにまつわる話を教えてくれた。
私はこの話が大好きだ。
我々が株式仲買業者の仕事をしていたときのことだ。
彼らは新しい商品を市場に投入したいと思っていた。
このためにソフトウェアが行うべきことは、顧客がWebフォームに入力した情報を使って必要な処理を行い、裏のバックエンドシステムにデータを受け渡すことだった。
しかしDaveは、このシステムを作り上げるよりも早く商品を市場に投入したのである。

//    * Version 1 was a static web page that described the product and provided a telephone number to call. Some temporary staff then spoke to the customer and entered the information into the back end system.
//    * Version 2 was a web form that captured the data the customer filled in. However this version didn't load that data into to the back end system. Instead the web form generated a fax. They hired some more temps to get the orders from the fax machine to the people that keyed the information into the back end system. Since the fax machines were a bit of a distance away, this is where the roller-skates came in.
//    * Version 3 hooked the web form into the back-end system directly.

* バージョン1は、静的なWebページだった。そこには商品説明と問合せ先の電話番号が載っていた。派遣社員が顧客からの問合せに応じて、バックエンドのシステムに情報を入力していた。
* バージョン2では、顧客がデータを入力できるWebフォームがついた。ただ、このバージョンでは、データをバックエンドシステムに読み込ませることはできなかった。その代わり、WebフォームからFaxを送信した。Faxで送られてきた注文情報を増員した派遣社員がバックエンドシステムに入力した。Fax機が少し離れた場所にあったため、ローラースケートが役に立った。
* バージョン3では、Webフォームを直接バックエンドシステムにつなげた。

//The first two versions may not have been the most elegant solutions ever conceived, but they did get the product into the market much more quickly. I've not come across any other examples of iterative development that use roller-skates, but that may be more due to lack of imagination rather than lack of need.

最初の2つのバージョンは、考えられる最もエレガントなソリューションではなかったかもしれない。しかし、商品をいち早く市場に投入することができたのだ。
この案件以外にローラースケートを使った反復開発にお目にかかったことはない。
ただそれは、ローラースケートが必要なかったからではなく、想像力が足りなかったからなのかもしれない。
