---
title: テスト用言語
tags: [testing]
---

http://martinfowler.com/bliki/TestingLanguage.html

私はいま、[XP day](http://www.xpday.org/) のセッション会場にいる。
Owen Rogers とRob Styles が、
XPのユニットテストと受け入れテストとの違いについて
話しているところだ。
このセッションを聞いていて、フト思いついた。
「受け入れテストを書くための言語とは、どうあるべきなのか？」

UIを用いた商用テスティングツールは、プロプライエタリな言語を使う傾向にある。
特に [Brett Pettichord](http://www.stickyminds.com/sitewide.asp?ObjectId=2326&ObjectType=COL&Function=edetail) が、
これに対して異議を唱えている。
「RubyやPythonのような一般的なスクリプト言語を使うほうが良い」と。

ただ、プログラミング用に作られた言語が本当にテストを書くのにふさわしい言語なのだろうか。テストはテストケースに基づいて行われるものである。そこで使われる言語は、値をどう扱うかなどを考慮する必要はない。その代わり、詳細なシナリオや反応を記述する必要がある。これは違った形のプログラミング言語が必要であるということだろうか。いや、おそらく革新的なツール [FIT](http://fit.c2.com/) に答えがあるだろう。
