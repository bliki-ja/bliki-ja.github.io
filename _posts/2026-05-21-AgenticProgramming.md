---
title: エージェントプログラミング
tags: [generative AI]
---

<!-- Increasingly software developers are not typing code into their IDEs. Instead they prompt an LLM to do so, then review the results. This is a profound change to the nature of programming, where humans oversee LLM agents who generate the code. Humans are still responsible for what the software does and how it works, but use different skills to create their products. -->

近年、ソフトウェア開発者がIDEに直接コードを打ち込むケースが減少しています。その代わり、LLMにコードを生成するように指示を出し、その結果をレビューしています。これはプログラミングの本質の大きな変化であり、人間がコードを書かずに、コードを書くLLMエージェントを監督するというものです。ソフトウェアの動作や機能については、依然として人間に責任がありますが、プロダクトを開発するスキルはまったく違ったものを使うことになります。

<!-- I like to distinguish agentic programming from Vibe Coding. With vibe coding humans don't look at the code, indeed they forget that it even exists, while with agentic programming they are concerned with the code, often giving it detailed review. Agentic programming is also distinct from using LLMs as a sophisticated code completion mechanism, where LLMs participate in writing code inside an IDE environment. -->

私は「{% include link to=AgenticProgramming %}」と「{% include link to=VibeCoding %}」を明確に区別しています。バイブコーディングでは、人間はコードを見ません。その存在を忘れています。一方、エージェントプログラミングでは、人間はコードの関与し、詳細なレビューを行います。また、エージェントプログラミングは、LLMを（IDEの環境内で）高度なコード補完ツールとして使用する場合とも違います。

<!-- This way of working hasn't got a widely established name, but the “agentic” adjective is common, used as “agentic programming”, “agentic (software) engineering, “agentic coding”, etc. (Currently I'm inclined to go with “agentic programming”.) -->

この方法に確立された名称はありませんが、「エージェントの（agentic）」という形容詞がよく使われています。たとえば、「エージェントプログラミング」「エージェント（ソフトウェア）エンジニアリング」「エージェントコーディング」などです（私は「エージェントプログラミング」が好きです）。

<!-- At the time of writing, agentic tools work in a terminal environment, the programmer issues prompts, which often incorporate saved documents explaining guidelines that the LLM should follow. The LLM then manipulates the source tree directly, creating and modifying files, running the code, evaluating the results of tests, and continuing development work, often for extended periods. Once done humans evaluate the agents work, doing code review, examining test results, and reviewing outputs from other sensors. -->

現時点では、エージェントツールはターミナル環境で動作します。プログラマーがプロンプトを入力しますが、LLMが従うべきガイドラインを記載したドキュメントの指示も組み込まれています。LLMは、ソースツリーの操作、ファイルの作成や編集、コードの実行、テスト結果の評価、一定期間の継続的な開発作業を行います。作業が完了したら、人間がエージェントの成果を評価します。コードをレビューしたり、テスト結果を検証したり、センサーの出力内容を精査したりします。

<!-- This shift in the nature of programming raises extensive questions about what kinds of activities programmers need in the future and what skills we require. At this point harness engineering, focusing on working on the guides and sensors around the LLM seem central. Additionally this raises the importance of programmers understanding the domain they are working with, collaborating with users and customers to iteratively define and build their product. -->

このプログラミング手法の変化は、これからプログラマーに求められる活動やスキルについて、非常に多くの重要な疑問を投げかけます。現時点では、「ハーネスエンジニアリング」と呼ばれる、LLMを取り巻くガイドやセンサーに取り組むことになるでしょう。このことは、プログラマー取り組んでいるドメインを理解することの重要性を示すものでもあります。具体的には、ユーザーや顧客と協力しながら、反復的にプロダクトを定義および構築していくことになります。
