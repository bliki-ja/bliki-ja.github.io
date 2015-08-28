---
title: ServiceCustodian
tags: TAGS
---

//Let's imagine a pretty world of SOA-happiness where the computing needs of an enterprise are split into many small applications that provide services to each other to allow effective collaboration. One fine morning a consumer service needs some information from a supplier service. The twist is that although the supplier service has the necessary data and processing logic to get this information, it doesn't yet expose that information through a service interface. The supplier has a potential service, but it isn't actually there yet.

SOAの幸せでできた、素敵な世界を想像してみましょう。その世界では、お互いに効果的なコラボレーションを可能にするサービスを提供するたくさんの小さなアプリケーションに、企業のコンピュータ計算のニーズが分割されています。ある晴れた朝に、コンシューマーサービスは、サプライヤーサービスからのいくつかの情報を必要とします。予想外の事態は、サプライヤーサービスがこの情報を得るために必要なデータと処理するロジックを持つけれど、それはまだサービスインターフェイスを通してその情報を明かしていないということです。サプライヤーは、将来性のあるサービスを持っていますが、それは実際にはまだそこにありません。

//In an ideal world the developers of the consumer service just asks the supplier service to develop the potential service and all is dandy. But life is not ideal - the sticking point here is that the developers of the supplier service have other things to do, usually things that are more important to their customer and management than helping out the consumer service team.

理想の世界では、コンシューマーサービスの開発者はただ、サプライヤーサービスに将来性のあるサービスを開発するように頼みます。そして、そのすべては飛びっきり素晴らしいものです。しかし、人生は理想どおりにはいきません。ここで立ち止まらせる点は、サプライヤーサービスの開発者には他にやることがあるということです。それは普通、コンシューマーサービスチームを助け出すことよりも、彼らの顧客やマネジメントにとって重要なことです。

//Recently I was chatting with my colleague Erik Dornenburg and he told me about an approach he saw a client use to deal with this problem. They took a leaf out of the open source play-book and made all their services into internal open source systems. This allows consumer service developers write the service themselves.

最近私は、同僚のエリック=ドーネンバーグと話をしていて、この問題を扱うためにクライアントが使うのを見た手法について、私に教えてくれました。彼らは、オープンソース戦略計画書からの1枚を手に取り、彼らの全てのサービスを内部のオープンソースシステムに作り変えました。これで、コンシューマーサービス開発者自身が、サービスを書くことを可能にしたのです。

//I'm sure many readers are rolling their eyes at the visions of chaos this would cause, but just as open source projects don't allow just anyone to edit anything; this client uses open-source-style control mechanisms. In particular each service has a couple of custodians - people whose responsibility it is to keep the service in a healthy state. In the normal course of events the consumer developer wouldn't actually commit changes to the supplier source tree directly, instead they send a patch to the custodian. Just like an open-source maintainer, the custodian receives the patch and reviews it to see if it's good enough to commit. If not there's a dialog with the consumer developer.

これを読んでいる多くの方は、このことがもたらす混沌とした未来像に呆れた目で見ていることは確かだと思っていますが、それと同時に、オープンソースプロジェクトは、誰にでも編集することが許されるわけではありません。このクライアントは、オープンソーススタイルの制御機構を使います。具体的に言うと、それぞれのサービスは、2人の管理者がいます。彼らの責任は、サービスを正常に保つことです。通常の物事の道理では、コンシューマー開発者は、実際にはサプライヤーのソースツリーを直接変えるようなことをしません。その代わり、彼らはパッチをカストーディアンに送ります。ちょうどオープンソース保守者にように、カストーディアンは、パッチを受け取って、それがコミットして良いものなのかどうかレビューします。もしそうでなければ、コンシューマー開発者との会話がなされます。

//As Erik knows well from his own open source work, reviewing a patch is much less effort than making a change yourself. So although the custodian approach doesn't entirely eliminate the problem of consumer developers needing to wait on supplier developers, it does a lot to reduce the difficulty. And again following the open-source model, a consumer developer can be made a committer once the custodians are comfortable. This still means that commits can get reviewed by the custodians, but avoids the custodians becoming a bottleneck.

エリックが彼のオープンソースの仕事から良く知っているように、パッチのレビューというのは、自分自身で変更を行うよりも、ちっとも努力が要らないです。カストーディアンの手法は、サプライヤー開発者の作業を待つことを必要とするコンシューマー開発者の問題を全体的には消し去りませんが、この困難を削減することが色々と行えます。再びオープンソースモデルに従うと、カストーディアンが落ち着いたころには、コンシューマー開発者がコミッターになる可能性があります。
これは、コミットはカストーディアンによってレビューされうることをまだ意味していますが、カストーディアンがボトルネックになることは回避されます。

//Related to this was their approach to a service registry. We've seen a lot of fancy products being sold to provide service registry capabilities so that people can lookup services and see how to use them. This client discarded them and used a HumaneRegistry instead.

これに関連したことといえば、サービスレジストリに対するこれらの手法です。私たちは、サービスレジストリの可能性を提供するために販売されているたくさんの面白い製品を見てきました。それは、人々がサービスを検索できて、それをどのように使ったらよいか分かるようなものです。このクライアントは、それらを放棄して、その代わりに、HumaneRegistryを使ったのです。
