---
title: LLMは新しい抽象化をもたらす
original_page_name: 2025-nature-abstraction.html
tags:
  - enerative AI
  - article
---

<!-- Like most loudmouths in this field, I've been paying a lot of attention to the role that generative AI systems may play in software development. I think the appearance of LLMs will change software development to a similar degree as the change from assembler to the first high-level programming languages. The further development of languages and frameworks increased our abstraction level and productivity, but didn't have that kind of impact on the nature of programming. LLMs are making that degree of impact, but with the distinction that it isn't just raising the level of abstraction, but also forcing us to consider what it means to program with non-deterministic tools. -->

この分野の声が大きい人たちと同じように、私も生成AIシステムがソフトウェア開発にどのような役割を果たすのかについて大きな関心を持っています。LLM（大規模言語モデル）の登場は、アセンブラから最初の高水準プログラミング言語への移行と同じくらい、ソフトウェア開発を大きく変えると思います。その後に開発された言語やフレームワークは、抽象化のレベルや生産性を向上させましたが、プログラミングの本質に同じレベルのインパクトを与えるものではありませんでした。しかし、LLMには最初の移行と同程度のインパクトがあると思います。しかも、単に抽象化のレベルを上げるだけでなく、「非決定的なツールでプログラミングするとはどういうことか」という問いを私たちに投げかけています。

<!-- High-Level Languages (HLLs) introduced a radically new level of abstraction. With assembler I'm thinking about the instruction set of a particular machine. I have to figure out how to do even simple actions by moving data into the right registers to invoke those specific actions. HLLs meant I could now think in terms of sequences of statements, conditionals to choose between alternatives, and iteration to repeatedly apply statements to collections of data values. I can introduce names into many aspects of my code, making it clear what values are supposed to represent. Early languages certainly had their limitations. My first professional programming was in Fortran IV, where “IF” statements didn't have an “ELSE” clause, and I had to remember to name my integer variables so they started with the letters “I” through “N”. -->

高水準言語は、新しいレベルの抽象化をもたらしました。アセンブラを使うときには、特定のマシンの命令セットを考える必要がありました。単純な操作でさえ、それを実行するためにどのデータをどのレジスタに移すかを自分で考える必要がありました。高水準言語が登場したことで、ステートメントの連続、いくつかの選択肢から選ぶ条件分岐、データのコレクションにステートメントを適用する反復処理などの観点で考えられるようになりました。コードのさまざまな部分に名前を付けることもでき、何の値を表しているかを明確にできるようになりました。もちろん初期の言語には制限がありました。私がはじめて仕事でプログラミングしたのはFortran IVでしたが、「IF」文には「ELSE」句がなく、整数型の変数の名前は「I」から「N」で始めることを覚えておく必要がありました。

<!-- Relaxing such restrictions and gaining block structure (“I can have more than one statement after my IF”) made my programming easier (and more fun) but are the same kind of thing. Now I hardly ever write loops, I instinctively pass functions as data - but I'm still talking to the machine in a similar way than I did all those days ago on the Dorset moors with Fortran. Ruby is a far more sophisticated language than Fortran, but it has the same ambiance, in a way that Fortran and PDP-11 machine instructions do not. -->

こうした制限が緩和され、ブロック構造が使えるようになったことで（「IFのあとに複数のステートメントを書ける」）、私のプログラミングは簡単になり、楽しくなりましたが、どれも本質的には同じことでした。今ではループを書くことはほとんどなくなり、関数を直感的にデータとして渡せるようになりましたが、それでも私は、イギリスの田舎町（ドーセット）でFortranを書いていた頃と同じような方法で、マシンと対話しているのです。RubyはFortranよりもずっと洗練された言語ですが、Fortranと同じ雰囲気を持っています。一方、FortranとPDP-11の機械語命令には同じ雰囲気がありません。

<!-- Thus far I've not had the opportunity to do more than dabble with the best Gen-AI tools, but I'm fascinated as I listen to friends and colleagues share their experiences. I'm convinced that this is another fundamental change: talking to the machine in prompts is as different to Ruby as Fortran to assembler. But this is more than a huge jump in abstraction. When I wrote a Fortran function, I could compile it a hundred times, and the result still manifested the exact same bugs. Large Language Models introduce a non-deterministic abstraction, so I can't just store my prompts in git and know that I'll get the same behavior each time. As my colleague Birgitta put it, we're not just moving up the abstraction levels, we're moving sideways into non-determinism at the same time. -->

私はまだ最高の生成AIツールを本格的に使ったことはありませんが、友人や同僚たちの体験談を聞くたびに、非常に興味をそそられています。これは抜本的な変化であると確信しています。プロンプトで機械と対話するのは、Rubyでプログラミングするのとはまったく別物であり、その違いはFortranとアセンブラの違いと同じくらいです。これは抽象化のレベルが飛躍しただけではありません。Fortranで関数を書いたときには、100回コンパイルしてもまったく同じバグが必ず現れました。しかし、LLMは非決定的な抽象化を導入しているため、プロンプトをgitに保存しても、毎回同じ振る舞いが返ってくるとは限りません。同僚のBirgittaが言うように、私たちは抽象化のレベルを上げているだけでなく、同時に非決定性という横方向にも進んでいるのです。

![これまでの改善では抽象化のレベルが上がるが、LLMSは横方向にも移動する](https://martinfowler.com/articles/exploring-gen-ai/abstraction-levels-with-genai.png)
<!-- Previous improvements raise the level of abstraction, but LLMs go sideways illustration: Birgitta Böckeler -->
*illustration: Birgitta Böckeler*

<!-- As we learn to use LLMs in our work, we have to figure out how to live with this non-determinism. This change is dramatic, and rather excites me. I'm sure I'll be sad at some things we'll lose, but there will also things we'll gain that few of us understand yet. This evolution in non-determinism is unprecedented in the history of our profession. -->

私たちは仕事でLLMの使い方を学びながら、こうした非決定性とうまく付き合う方法を見つけなければなりません。この変化は劇的なものです。私はワクワクしています。残念ながら失うものもあるでしょうが、私たちがまだ理解できていない新たな価値も得られるでしょう。こうした非決定性の進化は、私たちの職業の歴史において前例のないものです。
