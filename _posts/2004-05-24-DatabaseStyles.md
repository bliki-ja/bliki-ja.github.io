---
title: データベーススタイル
tags: [application integration, database]
---

https://martinfowler.com/bliki/DatabaseStyles.html

データベースとアプリケーションとの関係について話す際、データベースの2つのスタイルについて言及すると都合がいいようです。2つのスタイルとは、[アプリケーションデータベース](/ApplicationDatabase)と[統合データベース](/IntegrationDatabase)です。
両者の違いは、データベースが[アプリケーション境界](/ApplicationBoundary)内で管理およびカプセル化がなされているかどうかです。

データベースの管理方法について議論する場合、どちらか一方のスタイルを想定して議論するのが常です。ですが、議論の参加者によって想定するスタイルが異なれば、スタイルによってデータベース管理手法も異なるわけですから、その議論はすぐに破綻してしまうことでしょう。
データベースコミュニティやデータ管理コミュニティでは、データベースとは確実に[統合データベース](/IntegrationDatabase)のことを指します。データベースコミュニティでは、長年、これが作業仮説として機能してきました。
しかし、この想定はじょじょに疑問視されるようになってきました。統合データベースは広大な面積をもつインターフェイスとなってしまい、インターフェイスを実装から分離するものではなくなってしまいました。その結果、アプリケーションとデータベースとのつながりは脆く、変更は困難なものとなりました。

最近のSOAの盛り上がりは、人によって様々なことを意味しているようですが、もっともらしい話としては、自律アプリケーションの台頭があります。
自律アプリケーションは専用の[アプリケーションデータベース](ApplicationDatabase)を持っており、サービスインターフェイスを経由してアクセスしています -- [データベースの共有化](http://www.enterpriseintegrationpatterns.com/SharedDataBaseIntegration.html)による統合を、[RPC](http://www.enterpriseintegrationpatterns.com/EncapsulatedSynchronousIntegration.html)や[メッセージベース](http://www.enterpriseintegrationpatterns.com/Messaging.html)の統合によって、事実上、置き換えていることになります。
私はこの考え方に非常に共感を覚えています。特に、メッセージ経由による統合は有望です。私が[EIP](https://martinfowler.com/books.html#eip)開発を奨励しているのもこのためです。この考え方で世界を見れば、統合データベースはもはやデフォルトではありません。

さて、結論。私の主点はこうです：データベースのスタイルに気をつけろ。データベース管理の議論をするときは、データベースのスタイルを考慮にいれろ。
