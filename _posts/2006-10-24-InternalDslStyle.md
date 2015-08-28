---
title: 内部DSL
tags: [domain specific language]
---

http://martinfowler.com/bliki/InternalDslStyle.html

2006/10/24

内部DSL（組込みDSLとも呼ばれる）は、ホスト言語内に書かれた[DomainSpecificLanguage]]である。これは多くのプログラミング言語コミュニティでは一般的な考え方だ——特にLispコミュニティではそうだ。だが最近では、急速に成長を遂げているRubyコミュニティでのDSLの扱いに、多くの注目が集まっている。

私は、内部DSLには二つのスタイルがあると思っている。ひとつは、内部ミニ言語。もうひとつは、言語エンハンスメント（強化）だ。

内部ミニ言語というのは、外部DSLでやるようなことを内部言語で行うことだ。汎用言語のサブセットを意図的に自分のミニ言語として取り出す。たとえば、以下のようになる（[[LanguageWorkbench]]から引用した）。

 mapping('SVCL', ServiceCall) do
   extract 4..18, 'customer_name'
   extract 19..23, 'customer_ID'
   extract 24..27, 'call_type_code'
   extract 28..35, 'date_of_call_string'
 end
 mapping('USGE', Usage) do
   extract 9..22, 'customer_name'
   extract 4..8, 'customer_ID'
   extract 30..30, 'cycle'
   extract 31..36, 'read_date'
 end

これらはカスタムDSLに見えるかもしれないが、すべて妥当なRuby構文である。

外部DSLとは違い、ホスト言語の文法やプログラミングモデルの制限を受けるが、独自のパーサを作る必要はない。また、複雑な状況に対応しなければならないときも、ホスト言語の機能を使用することができる。

もうひとつの内部DSLは、外部DSLでやるようなこととはまったく違う。 DSLの技術を、ホスト言語を強化するために使用する。 Ruby on Railsの豊富な機能がその良い例となるだろう。ここではRailsのバリデーション機能を見てみよう。

 validates_numericality_of :age
 validates_uniqueness_of :ssn
 validates_format_of :length, :with => /^\d+(in](cm)/

まるでRubyの新しいキーワードのようだが、Rubyに手を入れているわけではない。 [[メタプログラミング|http://ola-bini.blogspot.com/2006/09/ruby-metaprogramming-techniques.html)をうまくやっているだけだ。だが、Rubyという言語そのものを強化しているように感じられないだろうか。

どちらのテクニックも非常に有用である。ただ、一般的に言えることだが、この区別も境界が曖昧である（たとえばRakeはどちらにも含まれる）。
