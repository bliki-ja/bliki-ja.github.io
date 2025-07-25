---
title: 動的型チェック
tags: [ruby]
---

最近、私の会社の開発者の何人かが、Rubyのような動的言語では、たくさんの動的型チェックを使っているという非難に遭いました。それは、事実上、自分で型システムを書くはめになっているようなものだと。そこで彼らは考えたのです。私たちは実際のRubyコードをたくさん書いてきたので、どれくらいの頻度で、動的型チェックを書いているのだろうかと。マイケル=シューバートがそのデータを集めました。


下の表にそのデータが含まれています。動的型チェックとは、「is_a?」「kind_of?」「instance_of?」のメソッドの利用だとして定義しました。コード行数(LOC)は、Railsのrake statsコマンドから作りました。

| プロジェクトID | コード型チェック | コードLOC | テスト型チェック | テストLOC | LOC／型チェック | テストLOC／コードLOC |
|:--------------:|:----------------:|:---------:|:----------------:|:---------:|:----------------:|:---------------------:|
| A              | 16               | 13318     | 0                | 9856      | 1448             | 0.7                   |
| B              | 14               | 19138     | 0                | 17123     | 2590             | 0.9                   |
| C              | 0                | 2607      | 0                | 2981      | ∞                | 1.1                   |
| D              | 7                | 4265      | 3                | 4069      | 833              | 1.0                   |
| E              | 32               | 29619     | 60               | 97688     | 1384             | 3.3                   |
| F              | 18               | ~9500     | N/A              | N/A       | 528              | N/A                   |
| G              | 0                | 2455      | 0                | 3290      | ∞                | 1.3                   |
| H              | 9                | 2220      | 6                | 6404      | 575              | 2.9                   |
| I              | 23               | 10633     | 2                | 12331     | 919              | 1.2                   |
| J              | 196              | 40461     | 24               | 88511     | 586              | 2.2                   |
| K              | 17               | 5769      | 6                | 9848      | 679              | 1.7                   |


このデータから言える教訓は、Rubyコードを元に、たくさんの型チェック呼び出しがあると思うべきではないということです。これはもちろん、どの動的言語にも言えることです。私のいたSmalltalk界隈でも、一般的に悪い形だと思われていましたし。


このデータの中のチェック用メソッドは、動的型チェックと考えられうる唯一のものではありません。他にも、「spond_to?」と「aClass === anInstance」があります。私たち一同は、これらの場合が、先ほどのチェックよりは、一般的なものではないと感じています。


もっとも利用されるものは、自由な入力値を扱うものです。例えば、メソッドの引数が、文字列、記号、配列になりうるような場合です。これらは、高い可読性のために自由な入力値がほしいというDSL的な状況で、突如として現れるのです。

* 訳：nishimori

## 参考

* [Matzにっき 20080219](http://www.rubyist.net/~matz/20080219.html)
* [Matzにっき 20080312](http://www.rubyist.net/~matz/20080312.html)
