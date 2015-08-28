---
title: テストダブル
tags: TAGS
---

http://martinfowler.com/bliki/TestDouble.html

2006/01/17 

//Gerard Meszaros Heck yeah this is working on a book to capture patterns for using the various Xunit frameworks. One of the awkward things he's run into is the various names for stubs, mocks, fakes, dummies, and other things that people use to stub out parts of a system for testing. To deal with this he's come up with his own vocabulary which eaxltcy what I think is worth spreading further.

Gerard Meszarosが、様々な[[Xunit|http://martinfowler.com/bliki/Xunit.html]]フレームワークを使用したパターンを集めた[[書籍を執筆中|http://tap.testautomationpatterns.com:8080/Book%20Outline.html]]である。
彼は、ある厄介なことに出くわしている。
システムの一部分をテストするためにスタブ化することがあるが、
その名前というのが、スタブ、モック、フェイク、ダミーなど、色々とあるのだ。
そのため彼は、自身の用語集を作成した。
この用語集は広く普及すべきものだろう。

//The generic term he uses is a Test Double (think stunt double). Test Double is a generic term for any case where you replace a production object for testing purposes. There are various kinds of double that Gerard lists:

彼が一般的な用語として使っているのは、「Test Double（テスト代役）」という言葉だ（スタントの代役(double)を想像してほしい）。
Test Doubleは、テスト用にオブジェクトを入れ替えるときに一般的に用いられる言葉である。
Gerardが作成したリストには、様々なDoubleが載っている。

//Dummy objects are passed around but never actually used. Usually they are just used to fill parameter lists.
* '''ダミーオブジェクト'''は、受け渡されることはあるが実際に使用されることはない。パラメータリストを埋めたいだけといった場合に利用されることが多い。 
//Fake objects actually have working implementations, but usually take some shortcut which makes them not suitable for production (an InMemoryDatabase is a good example).
* '''フェイク'''オブジェクトは実際に動作するよう実装されてはいるが、手抜きがされているので製品版には向かない（[[InMemoryDatabase]]が良い例である）。 
//Stubs provide canned answers to calls made during the test, usually not responding at all to anything outside what's programmed in for the test. Stubs may also record information about calls, such as an email gateway stub that remembers the messages it 'sent', or maybe only how many messages it 'sent'.
* '''スタブ'''はテスト時の呼び出しに対して、あらかじめ用意された結果を返す。通常、テスト用にプログラムされたところ以外には応答しない。スタブは呼び出しの情報を記録することもある。例えば、Eメールゲートウェイスタブは「送られた（とされる）」メッセージを記録するような場合だ。単に「送られた（とされる）」メールの数を記録する場合もあるだろう。
//Mocks are pre-programmed with expectations which form a specification of the calls they are expected to receive. They can throw an exception if they receive a call they don't expect and are checked during verification to ensure they got all the calls they were expecting. needed.
* '''モック'''は、エクスペクテーションが事前にプログラムされたものである。エクスペクテーションとは、受信する一連の呼び出しの仕様を表わしたものである。期待されない呼び出しが行なわれた場合は例外をスローする。また、テスト実行後の検証(verification)で、期待された呼び出しがすべてきちんと行われたかどうかが確認される。 

 
