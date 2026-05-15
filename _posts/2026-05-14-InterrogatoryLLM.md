---
title: 質問型LLM
tags: [generative AI]
---

<!-- When we need an LLM to perform a complex task, we often need to feed it a lot of context. Coming up with a design for a new feature requires descriptions of how we want the feature to appear to the user, guidelines on how it should be implemented, information on external systems to consult, and so on. All this can be several pages of markdown. The obvious way to do this is for a human to write this context, but an alternative is to use an LLM to write this context after interviewing a human. -->

LLMに複雑なタスクを実行させる場合、大量のコンテキストを与える必要があります。新しい機能の設計をするときには、ユーザーにどのように見せたいのか、実装方法のガイドライン、参照する外部システムの情報などが必要になります。これらはMarkdownで数ページに及ぶこともあります。こうしたコンテキストは当然ながら人間が手で書くこともできますが、人間にインタビューしたあとにLLMに書かせるという方法もあります。

<!-- The way I can do this is to prompt the LLM to interrogate me. It should ask me all the questions it needs to create this appropriate context. I can feed much of the information it needs, and tell it other sources it needs to consult if it can't figure those out itself. Once it's done, it can then create the context report for another session (perhaps with another model) to carry out the next step. -->

この方法では、私に質問するようにLLMに指示を出します。適切なコンテキストを作成するために必要なすべての質問をLLMから聞いてもらいます。私は必要な情報の大部分を提供できます。LLMが判断できないようなら、参照すべき情報源を与えることもできます。作業が完了したら、次のステップで他のセッション（あるいは他のモデル）が使用するコンテキストレポートを生成してもらいます。

<!-- I first saw a decent description of this approach in Harper Reed's blog. A striking element of his approach is insisting that the LLM ask only one question at a time. (When I tried it, I found it needed to be frequently reminded of this.) -->

この方法の説明を最初に読んだのは[Harper Reedのブログ](https://harper.blog/2025/02/16/my-llm-codegen-workflow-atm/)でした。彼のアプローチで特徴的なのは、LLMには「一度にひとつだけ」質問させるように徹底していたことでした（私が実際に試してみたところ、LLMに何度も注意する必要がありました）。

<!-- Another way to use an interrogatory LLM is to give it a document, such as a software specification, that captures knowledge about a domain - and then ask the LLM to interview a human expert to determine if the document is accurate. This is an alternative to getting the human expert to read the document to review it. People often find reviewing hard, so a conversation with an LLM might be more fruitful, particularly if the document isn't well-written. -->

質問型LLMのもうひとつの方法として、あるドメインの知識を記述したドキュメント（ソフトウェアの仕様書など）をLLMに与え、その内容が正確かどうかを判断するために人間の専門家に対してインタビューさせるという方法があります。これは人間の専門家にドキュメントを読んでレビューしてもらうことの代替手段になります。ドキュメントのレビューは難しいことが多いため、LLMとの対話形式のほうが効果的かもしれません。ドキュメントがうまく書けていない場合は特にそうです。

<!-- Naturally we can use both of these, using one interrogatory LLM to build a document, then using other interrogatory LLMs to review it with other experts. -->

もちろん、これらの手法を組み合わせて使用することも可能です。ひとつの質問型LLMを使ってドキュメントを作成し、別の質問型LLMで専門家と一緒にドキュメントをレビューしてもらうのです。

<!-- The above is getting an LLM to create or assess context for a particular use of an LLM. But the technique is more broadly applicable. I've become a natural writer, someone who finds the process of writing an essential part of thinking. To really understand something, I need to write about it. But different people are different. Many folks find writing hard, often very hard. This can be a real problem when we need to get information out of someone's head into a form that other humans can consume. Maybe such people would find it easier to ask an LLM to interview them than to write a document themselves. Certainly the result will have that tang of AI-writing that folks like me shudder at - but that's better than not having the information itself, either due to rushed writing or no writing at all. -->

上記の方法は、LLMの用途に応じたコンテキストをLLMに作成または評価させるというものです。しかし、このテクニックは他にも幅広く応用が可能です。私は文章が書くことが自然にできる人間です。書くというプロセスが、考えるためには不可欠であると感じています。何かを本当の意味で理解するには、私はそのことについて書く必要があります。しかし、それは人によって違うでしょう。多くの人が文章を書くことを難しいと感じています。非常に難しいと感じる人もいます。頭の中にある情報を他の人間が理解できる形に変換したい場合、このことは深刻な問題になります。こうした人たちはドキュメントを自分で書くよりも、LLMにインタビューしてもらうほうが楽だと感じるかもしれません。私のような人間はAIっぽい文章に違和感を覚えるでしょうが、急いで書いたせいで情報が伝わらなかったり、そもそも何も書かなかったりして、情報がまったく得られないよりはマシです。
