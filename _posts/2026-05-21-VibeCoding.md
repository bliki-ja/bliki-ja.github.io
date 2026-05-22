---
title: バイブコーディング
tags: [generative AI]
---

<!-- Vibe coding is building a software application by prompting an LLM, telling it what to build, trying it out, prompting for changes - but without looking at any of the code that the LLM generates. This technique can be used by people without any knowledge of programming. However the resulting software often shows problems with maintainability, correctness, and security - so is best used for disposable software written for a limited audience. -->

バイブコーディングとは、LLMに指示を与えてソフトウェアを構築する手法です。何を作りたいのかを伝え、試行錯誤しながら、修正指示を出しますが、LLMが生成したコードを確認することはありません。プログラミングの知識がない人でも活用できる技術です。ただし、生成されたソフトウェアには保守性、正確性、セキュリティの問題が頻繁に発生するため、限定的なユーザーを対象にした使い捨てソフトウェアとして使うのが最適です。

<!-- The term was coined in February 2025 by Andrej Karpathy, an experienced programmer, in a post on X: -->
この用語は、2025年2月に経験豊富なプログラマーであるAndrej KarpathyがXに投稿しました。

<!-- There's a new kind of coding I call “vibe coding”, where you fully give in to the vibes, embrace exponentials, and forget that the code even exists. It's possible because the LLMs (e.g. Cursor Composer w Sonnet) are getting too good. Also I just talk to Composer with SuperWhisper so I barely even touch the keyboard. I ask for the dumbest things like “decrease the padding on the sidebar by half” because I'm too lazy to find it. I “Accept All” always, I don't read the diffs anymore. When I get error messages I just copy paste them in with no comment, usually that fixes it. The code grows beyond my usual comprehension, I'd have to really read through it for a while. Sometimes the LLMs can't fix a bug so I just work around it or ask for random changes until it goes away. It's not too bad for throwaway weekend projects, but still quite amusing. I'm building a project or webapp, but it's not really coding - I just see stuff, say stuff, run stuff, and copy paste stuff, and it mostly works. -->

> 「バイブコーディング」という新しい種類のコーディングがあるんです。完全にバイブに身を任せて、指数関数的な成長を受け入れ、コードそのものの存在すら忘れてしまうんです。LLM（例えばCursor Composer with Sonnet）があまりにも上手くなってきたからこそ可能なことですね。あと、SuperWhisperを使ってComposerとただ話しかけるだけなので、キーボードにほとんど触れません。「サイドバーのパディングを半分に減らして」みたいな馬鹿げたことを頼むんですよ、探すのが面倒だから。私はいつも「すべて受け入れる」を選び、diffを読むことすらしなくなりました。エラーメッセージが出たら、コメントなしでそのままコピーして貼り付けるだけです。通常それで直ります。コードは私の通常の理解を超えて成長してしまい、ちゃんと読むにはしばらく時間がかかります。時々LLMがバグを直せないので、回避するか、ランダムな変更を頼み続けてそれが消えるまでやります。使い捨ての週末プロジェクトにはそれほど悪くないですが、それでもかなり面白いです。私はプロジェクトやウェブアプリを作っていますが、本当の意味でのコーディングではありません。ただものを見て、言って、実行して、コピーして貼り付けて、それで大体動くんです。<br>
> -- [Andrej Karpathy](https://x.com/karpathy/status/1886192184808149383)

<!-- The key point about vibe coding is “forget that the code even exists”. This is what gives it much of its usefulness, but also its limitations. -->

バイブコーディングの核心的な考え方は「**コードそのものの存在すら忘れてしまう**」ところです。これが有用性を示すと同時に、その限界も示しています。

<!-- Since the November Inflection many programmers are getting LLMs to write all their code, commenting that they may never write a line of code directly again. However they do care about this code, reviewing it, paying attention to its internal structure. In that case, they aren't forgetting the code exists, so it's really a different thing that I call Agentic Programming. Sadly the term “vibe coding” really caught on, so many people use it to mean agentic programming. However I feel that despite this rapid Semantic Diffusion, it's worth trying to keep the concepts of vibe coding and agentic programming separate, as they are both different to use and different in their consequences. -->

{% include link to="NovemberInflection" %}以降、多くのプログラマーがLLMにコード生成を任せるようになり、「今後は自分でコードを書くことはないだろう」と発言しています。ただし、彼らは生成されたコードに関心があり、レビューして、内部構造に注意を払っています。このような場合、彼らはコードの存在を忘れていないので、別の概念になります。私はこれを「{% include link to="AgenticProgramming" %}」と呼びます。残念ながら「バイブコーディング」が広く普及してしまったため、多くの人が{% include link to="AgenticProgramming" %}のこともバイブコーディングと呼んでいます。急速な{% include link to="SemanticDiffusion" %}が生じていますが、私は両者の概念を区別することが重要だと思います。使い方が異なるだけでなく、その結果も異なるからです。

<!-- Because a vibe coder doesn't look at the code, they don't need programming skills, so it's perfect for someone with no programming knowledge to build applications for their own use. Experienced programmers may also find it handy for rapid development of disposable software or prototypes. -->

バイブコーダーはコードを確認しないため、プログラミングスキルが不要です。したがって、プログラミング知識がない人が自分用のアプリケーションを構築するのに最適です。経験豊富なプログラマーであっても、使い捨てのソフトウェアやプロトタイプを迅速に開発する際に活用できるでしょう。

<!-- Vibe coding is still new, so we are exploring its limitations, and those limitations change as the sophistication of models and their harnesses change. These limitations do introduce considerable risks, particularly if the vibed software is used widely or has access to sensitive information. -->

バイブコーディングはまだ新しい技術であり、その限界について調査が進められています。これからモデルの洗練や[ハーネス](https://martinfowler.com/articles/harness-engineering.html)の変化によって、その限界も変わってくるでしょう。こうした限界は、バイブコーディングされたソフトウェアが広く使用される場合や、機密情報にアクセスする場合には、重要なリスクをもたらす可能性があります。

<!-- Perhaps the most serious risk is that of security. LLMs are inherently vulnerable as they provide a large attack surface for predators. Vibe coded applications can often expose sensitive information or worse, credentials to attack deeper into an organization's systems. Even non-programmers need to be aware of the Lethal Trifecta. -->

最も深刻なリスクはセキュリティです。LLMは本質的に脆弱であり、攻撃対象となりやすいものです。バイブコーディングされたアプリケーションは、機密情報を漏洩する可能性があります。場合によっては、組織のシステムに侵入できる認証情報まで漏洩する可能性もあります。プログラミングの知識がない人でも、[三重の脅威](https://martinfowler.com/articles/agentic-ai-security.html#lethal-trifecta)を認識する必要があります。

<!-- With little attention to the code, vibed software can rapidly produce many lines of code of a very low quality. Such code makes it difficult, even for an LLM, to modify and enhance the software in the future. While it's possible that growing LLM capabilities will allow it to work with even the largest bowls of spaghetti software, thus far it seems clear that well-structured software makes life easier for LLMs too. -->

コードを理解せずにバイブコーディングを使うと、低品質なコードが短時間で大量に生成されます。LLMでさえもこのようなコードの修正や拡張は難しいでしょう。これからLLMの機能が進化すれば、大規模で複雑なスパゲッティコードにも対応できるようになるでしょうが、適切に構造化されたソフトウェアのほうがLLMにとっても扱いやすいのは明らかです。

<!-- LLMs are famous for habit of hallucinating incorrect facts and presenting these with great confidence. This habit also leads them to create software that behaves incorrectly - and those errors may not be manifest to the user. Furthermore the non-determinism of LLMs means that it's likely that asking an LLM to enhance some software could easily lead it to introduce errors, even in parts of the code that shouldn't change due to the new request. We should thus treat LLM-generated software with skepticism, it can still be useful, but we need to be aware of the risks. -->

LLMは自信たっぷりに間違った事実を示す「ハルシネーション」で有名です。これがソフトウェア開発でも同様の問題を引き起こし、誤った動作をするソフトウェアを生成する可能性があります。しかもそのエラーはユーザーには認識できません。さらにLLMの非決定性を考慮すると、あるソフトウェアの機能拡張をLLMに依頼した場合、変更すべきではないコードにもエラーが混入する可能性があります。したがって、LLMが生成したソフトウェアには懐疑的な姿勢で臨む必要があります。便利なこともありますが、リスクは認識しておきましょう。

<!-- On the whole vibe coding software is best used for disposable software that's only used by its author or a close group of collaborators who understand and accept the risks involved. Code that is more complex, more widely-used, and with more consequences to its risks should not be forgotten about. -->

バイブコーディングで生成したソフトウェアは、リスクを理解して受け入れている本人や少人数の仲間だけが使用する、使い捨てのソフトウェアに最適です。複雑なコード、広く使用されるコード、リスクの影響が大きなコードについては、そうしたリスクを忘れてはいけません。
