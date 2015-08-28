---
title: TestCoverage
tags: TAGS
---

http://martinfowler.com/bliki/TestCoverage.html

17 April 2012

// From time to time I hear people asking what value of test coverage (also called code coverage) they should aim for, or stating their coverage levels with pride. Such statements miss the point. Test coverage is a useful tool for finding untested parts of a codebase. Test coverage is of little use as a numeric statement of how good your tests are.

「テストカバレッジ(コードカバレッジ)の目標値はどれくらいがいいのか？」という質問とか、コードカバレッジの高さの自慢とかを、ときどき耳にする。でも、大事なポイントを外している。コードカバレッジは、コードのテストされていない部分を発見するための有用なツールである。ただテスト自体がどれだけ良いかという指標としては、テストカバレッジはほとんど役に立たない。

[[http://martinfowler.com/bliki/images/testCoverage/sketch.png]]

// Let's look at the second statement first. I've heard of places that may say things like "you can't go into production with less than 87% coverage". I've heard some people say that you should use things like TDD and must get 100% coverage. A wise man once said:

二つ目の例を先に検討してみよう。「カバレッジが87%以上じゃないと本番には入れない」というようなことをやっているところも多いみたいだ。「TDDやっているならカバレッジが100%があたりまえ」という言葉を聞くこともある。賢人が言った:

// I expect a high level of coverage. Sometimes managers require one. There's a subtle difference.

"" カバレッジが高いことを期待する。マネージャがそう期待することもある。でも微妙な違いがある。
"" -- Brian Marick

// If you make a certain level of coverage a target, people will try to attain it. The trouble is that high coverage numbers are too easy to reach with low quality testing. At the most absurd level you have AssertionFreeTesting. But even without that you get lots of tests looking for things that rarely go wrong distracting you from testing the things that really matter.

カバレッジ目標を設定したら、人々はその目標を達成しようとするだろう。問題は、テストの品質を気にしなければ、カバレッジを上げるのは簡単ということだ。[[AssertionFreeTesting]]みたいなバカな話にもつながる。そうならなかったとしても、滅多に失敗しない大量のテストを作ってしまうと、本当に重要な部分に集中できなくなってしまう。

// Like most aspects of programming, testing requires thoughtfulness. TDD is a very useful, but certainly not sufficient, tool to help you get good tests. If you are testing thoughtfully and well, I would expect a coverage percentage in the upper 80s or 90s. I would be suspicious of anything like 100% - it would smell of someone writing tests to make the coverage numbers happy, but not thinking about what they are doing.

プログラミングの多くの側面と同じく、テストには思慮深さが必要だ。よいテストを選るのに、TDD は有用だが、決して十分ではない。思慮深くテストを実施すれば、テストカバレッジはおそらく80%台後半か90%台になるだろう。100%は信用ならない。カバレッジの数字ばっかり気にして、自分が何をやっているかわかっていない人間のいる臭いがする。

// The reason, of course, why people focus on coverage numbers is because they want to know if they are testing enough. Certainly low coverage numbers, say below half, are a sign of trouble. But high numbers don't necessarily mean much, and lead to ignorance-promoting dashboards. Sufficiency of testing is much more complicated attribute than coverage can answer. I would say you are doing enough testing if the following is true:

カバレッジの数値がほしい理由はわかる。テストが十分かを知りたいのだ。カバレッジの数値が低い場合、たとえば50%以下の場合は、おそらく問題があるだろう。けれど高いカバレッジの数値にはあまり意味はない。ダッシュボードの数字に意味がなくなる助けをするだけだ。以下の質問に「はい」と答えられるならば、おそらくテストは十分だろう:

// You rarely get bugs that escape into production, and
// You are rarely hesitant to change some code for fear it will cause production bugs.

* 本番環境で発見されるバグはほとんどない。'''そして'''、
* 本番環境でバグを出すことを恐れてコードの変更をためらうことがない。

// Can you test too much? Sure you can. You are testing too much if you can remove tests while still having enough. But this is a difficult thing to sense. One sign you are testing too much is if your tests are slowing you down. If it seems like a simple change to code causes excessively long changes to tests, that's a sign that there's a problem with the tests. This may not be so much that you are testing too many things, but that you have duplication in your tests.

テストしすぎることは可能だろうか？もちろん。テストをいくつか削除しても、テストが十分なら、テストしすぎである。ただ、それを見分けるのは難しい。テストによって開発速度が落ちているなら、テストしすぎの兆候である。コードの単純な変更の結果、テストを延々と修正する必要があるなら、これはテストに問題がある兆候だ。テストをしすぎているのではなく、おそらくテストが重複しているのだろう。

// Some people think that you have too many tests if they take too long to run. I'm less convinced by this argument. You can always move slow tests to a later stage in your deployment pipeline, or even pull them out of the pipeline and run them periodically. Doing these things will slow down the feedback from those tests, but that's part of the trade-off of build times versus test confidence.

テストに時間がかかりすぎるから、テストしすぎだと考える人もいる。この考えにはあまり説得力はない。遅いテストは、デプロイメントパイプラインの後のステージにいつでも移せる。もしかすると、パイプラインから外して定期的に実行でもよいかもしれない。テストからのフィードバックは遅くなるが、それはビルド時間とテストに対する信頼度とのトレードオフだ。

// So what is the value of coverage analysis again? Well it helps you find which bits of your code aren't being tested. [1] It's worth running coverage tools every so often and looking at these bits of untested code. Do they worry you that they aren't being tested?

で、カバレッジ解析の価値は何なんだろう？まずは、テストが不十分なコードを見つけるのに役立つ。カバレッジツールをしょっちゅう実行して、テストのないコードを見つけておくのは価値のあることだ。それらのコードがテストされていないことで不安になるだろうか？

// If a part of your test suite is weak in a way that coverage can detect, it's likely also weak in a way coverage can't detect.

"" テストスイートにカバレッジによって見つかる問題点があるなら、おそらくカバレッジによって見つけられない問題点も抱えている可能性が高い。
"" -- Brian Marick

// Further Reading

!!参考

Brian Marick has an excellent article on the [[misuse of code coverage|http://www.exampler.com/testing-com/writings/coverage.pdf]]. And it's worth reading the [[pithy commentary of Testivus|http://www.developertesting.com/archives/month200705/20070504-000425.html]].

1: By "you" here I mean the people writing the tests. Coverage is of little value to management since you need a technical background to understand whether the tests are good or whether the uncovered code is a problem.
