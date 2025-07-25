---
title: テストカバレッジ
tags: [testing, metrics]
---

https://martinfowler.com/bliki/TestCoverage.html





「テストカバレッジ(コードカバレッジ)の目標値はどれくらいがいいのか？」という質問とか、コードカバレッジの高さの自慢とかを、ときどき耳にする。でも、大事なポイントを外している。コードカバレッジは、コードのテストされていない部分を発見するための有用なツールである。ただテスト自体がどれだけ良いかという指標としては、テストカバレッジはほとんど役に立たない。

![](https://martinfowler.com/bliki/images/testCoverage/sketch.png)



二つ目の例を先に検討してみよう。「カバレッジが87%以上じゃないと本番には入れない」というようなことをやっているところも多いみたいだ。「TDDやっているならカバレッジが100%があたりまえ」という言葉を聞くこともある。賢人が言った:



> カバレッジが高いことを期待する。マネージャがそう期待することもある。でも微妙な違いがある。
> -- Brian Marick



カバレッジ目標を設定したら、人々はその目標を達成しようとするだろう。問題は、テストの品質を気にしなければ、カバレッジを上げるのは簡単ということだ。[アサーションのないテスト](/AssertionFreeTesting)みたいなバカな話にもつながる。そうならなかったとしても、滅多に失敗しない大量のテストを作ってしまうと、本当に重要な部分に集中できなくなってしまう。



プログラミングの多くの側面と同じく、テストには思慮深さが必要だ。よいテストを選るのに、TDD は有用だが、決して十分ではない。思慮深くテストを実施すれば、テストカバレッジはおそらく80%台後半か90%台になるだろう。100%は信用ならない。カバレッジの数字ばっかり気にして、自分が何をやっているかわかっていない人間のいる臭いがする。



カバレッジの数値がほしい理由はわかる。テストが十分かを知りたいのだ。カバレッジの数値が低い場合、たとえば50%以下の場合は、おそらく問題があるだろう。けれど高いカバレッジの数値にはあまり意味はない。ダッシュボードの数字に意味がなくなる助けをするだけだ。以下の質問に「はい」と答えられるならば、おそらくテストは十分だろう:




* 本番環境で発見されるバグはほとんどない。**そして**、
* 本番環境でバグを出すことを恐れてコードの変更をためらうことがない。



テストしすぎることは可能だろうか？もちろん。テストをいくつか削除しても、テストが十分なら、テストしすぎである。ただ、それを見分けるのは難しい。テストによって開発速度が落ちているなら、テストしすぎの兆候である。コードの単純な変更の結果、テストを延々と修正する必要があるなら、これはテストに問題がある兆候だ。テストをしすぎているのではなく、おそらくテストが重複しているのだろう。



テストに時間がかかりすぎるから、テストしすぎだと考える人もいる。この考えにはあまり説得力はない。遅いテストは、デプロイメントパイプラインの後のステージにいつでも移せる。もしかすると、パイプラインから外して定期的に実行でもよいかもしれない。テストからのフィードバックは遅くなるが、それはビルド時間とテストに対する信頼度とのトレードオフだ。



で、カバレッジ解析の価値は何なんだろう？まずは、テストが不十分なコードを見つけるのに役立つ。カバレッジツールをしょっちゅう実行して、テストのないコードを見つけておくのは価値のあることだ。それらのコードがテストされていないことで不安になるだろうか？



> テストスイートにカバレッジによって見つかる問題点があるなら、おそらくカバレッジによって見つけられない問題点も抱えている可能性が高い。
> -- Brian Marick



### 参考

Brian Marick has an excellent article on the [misuse of code coverage](http://www.exampler.com/testing-com/writings/coverage.pdf). And it's worth reading the [pithy commentary of Testivus](http://www.developertesting.com/archives/month200705/20070504-000425.html).

1: By "you" here I mean the people writing the tests. Coverage is of little value to management since you need a technical background to understand whether the tests are good or whether the uncovered code is a problem.
