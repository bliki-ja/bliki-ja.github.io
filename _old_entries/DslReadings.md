---
title: DslReadings
tags: TAGS
---

http://martinfowler.com/bliki/DslReadings.html

2007/7/13

（本トピックと各用語については、 [DomainSpecificLanguage]]の記述を参照のこと）

更新：David Laribeeが、「秩序的[[FluentInterface]]」と「無秩序的[[FluentInterface]]」について[[書いている](http://laribee.com/blog/2007/07/12/ordered-fluency/)。両者の違いは、秩序的[FluentInterface]]がDSL文の構築に対して流れを強制する点だ。彼は単一のExpressionBuilder?で複数のインタフェースを使っている例を挙げている——これはJMockで使われているのと同じ技術だ。

Anders Noras が内部DSLをC#で記述するという興味深い記事を2本書いている。 [[最初の記事](http://andersnoras.com/blogs/anoras/archive/2007/07/04/i-m-coming-down-with-a-serious-case-of-the-dsls.aspx)では、DSLの例とChromaticの[皮肉的なチェックリスト](http://www.oreillynet.com/onlamp/blog/2007/05/the_is_it_a_dsl_or_an_api_ten.html)に対する反論を述べている。 [もうひとつの記事](http://andersnoras.com/blogs/anoras/archive/2007/07/09/behind-the-scenes-of-the-planning-dsl.aspx)では、その実装の詳細について述べている。

Piers Cawleyが、DSLの特性はドメインに対する焦点を絞っているところだと[強調している](http://www.bofh.org.uk/articles/2007/05/19/domain-agnostic-languages)。
