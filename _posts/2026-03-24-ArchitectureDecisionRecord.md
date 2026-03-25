---
title: アーキテクチャデシジョンレコード
tags: [enterprise architecture, collaboration, application architecture]
---

<!-- An Architecture Decision Record (ADR) is a short document that captures and explains a single decision relevant to a product or ecosystem. Documents should be short, just a couple of pages, and contain the decision, the context for making it, and significant ramifications. They should not be modified if the decision is changed, but linked to a superseding decision. -->

アーキテクチャデシジョンレコード（Architecture Decision Record: ADR）とは、プロダクトやエコシステムに関する重要なひとつの決定を記録および説明する簡潔な文書である。文書は短く、数ページ程度に収め、内容には決定事項、決定の背景、重要な影響を含めなければならない。決定を変更した場合は、文書を修正するのではなく、置き換えた決定にリンクしておく。

<!-- As with most written documents, writing ADRs serves two purposes. Firstly they act as a record of decisions, allowing people months or years later to understand why the system is constructed in the way that it is. But perhaps even more valuable, the act of writing them helps to clarify thinking, particularly with groups of people. Writing a document of consequence often surfaces different points of view - forcing those differences to be discussed, and hopefully resolved. -->

ほとんどの文書がそうであるように、ADRの作成にも2つの目的がある。まず、決定の記録である。数か月後あるいは数年後でもシステムが現在のように構築された理由を理解できる。だが、それよりも重要なのが、文書を書くことで考えが明確になる点である。グループの場合は特にそうだ。重要な文書を書くことで、異なる見解が浮かび上がってくる。こうした意見の違いについて議論し、できれば解消することが望ましい。

<!-- A general rule is to follow an “inverted pyramid” style of writing, commonly associated with news stories. The key is to put the most important material at the start, and push details to later in the record. -->

一般的なルールとして「逆ピラミッド」の書き方を踏襲する。これはニュース記事でよく使われる手法だ。最も重要なことを冒頭に配置し、詳細は記録の後半に配置する。

<!-- The common advice is to keep decision records in the source repository of the code base to which they apply. A common choice for their location is doc/adr. This way they are easily available to those working on the code base. For similar reasons they should be written in a lightweight markup language, such as markdown, so they can be easily read and diffed just like any code. We can use a build task to publish them to a product team's website. -->

決定の記録はソースコードと同じリポジトリに保存することが推奨されている。保存ディレクトリは「doc/adr」が使われる。こうすることで、コードベースを扱うすべての人が容易に利用できる。同様の理由から、Markdownなどの軽量マークアップ言語で書くことが推奨されている。そのほうが読みやすく、コードと同じように差分が取れるからだ。ビルドタスクを利用して、プロダクトチームのウェブサイトに公開することも可能である。

<!-- Storing them in a product repository won't work for ADRs that cover a broader ecosystem than a single code base. Some folks also feel that keeping ADRs in git makes it too hard for non-developers to work with them. -->

ただし、複数のコードベースにまたがる広範なエコシステムのADRをプロダクトのリポジトリに保存するのは適していない。また、ADRをgitに保存すると非開発者が扱いにくいという意見もある。

<!-- Each record should be its own file, and should be numbered in a monotonic sequence as part of their file name, with a name that captures the decision, so that they are easy to read in a directory listing. (for example: “0001-HTMX-for-active-web-pages“). -->

各記録には個別のファイルを用意する。ファイル名には連番と記録内容を付ける。こうすれば、一覧表示したときに読みやすい（例：0001-HTMX-for-active-web-pages）。

<!-- Each ADR has a status. “proposed” while it is under discussion, “accepted” once the team accepts it and it is active, “superseded” once it is significantly modified or replaced - with a link to the superseding ADR. Once an ADR is accepted, it should never be reopened or changed - instead it should be superseded. That way we have a clear log of decisions and how long they governed the work. -->

ADRにはステータスがある。議論中は「proposed（提案済み）」、チームが承認してアクティブなものは「accepted（受け入れ済み）」、大幅に修正または上書きされたものは「superseded（廃止済み）」とする（置き換えたADRにリンクする）。一度ADRを受け入れたら、議論に戻したり変更したりすることは認められない。そのような場合は、廃止にするべきである。このようにすることで、明確な決定の履歴と作業に適用された期間を保持できる。

<!-- ADRs contain not just the decision, but also a brief rationale for the decision. This should summarize the problem that led to this decision being needed and the trade-offs that were taken into account. A good way to think of them follows the notion of “forces” when writing a pattern. As part of this it's valuable to explicitly list all the serious alternatives that were considered, together with their pros and cons. -->

ADRに含まれるのは決定だけではない。決定に至った簡潔な理由も記載しておく。そこには決定が必要になった問題の要約と考慮したトレードオフを含める。これを考えるときには、パターンを書くときの「フォース」が参考になる。これを書くときには、検討したすべての代替案とそれぞれの長所と短所を明示的に列挙することが重要である。

<!-- Any decision has consequences. Sometimes these are clearly implied from the rationale, but sometimes it's worth clearly stating them in a explicit section. Decisions are usually made under some degree of uncertainty, so it's handy to record the confidence level of the decision. This is a good place to mention any changes in the product context that should trigger the team to reevaluate the decision. -->

すべての決定には影響が伴う。理由から読み取れるものもあるが、セクションを分けて明記しておいたほうがいい場合もある。決定は一定の不確実性の下で行われるため、決定の信頼度を記録しておくことは有用である。チームが決定を再評価すべきプロダクトの文脈の変更についても、ここに記載しておくといいだろう。

<!-- ADRs play a central role in the Advice Process, where they are not only used to document decisions, but the act of writing them is used to elicit expertise and alignment. In this case they should also include advice gathered in forming the ADR, although in order to keep things brief, it may be better to summarize the advice in the ADR and keep a full record of advice separately. -->

ADRは[アドバイスプロセス](https://martinfowler.com/articles/scaling-architecture-conversationally.html)において中心的な役割を果たす。そこではADRは単に決定を文書化したものではなく、文書を作成することで専門知識を引き出し、関係者で認識を合わせる。本来ならばADRの作成中のアドバイスも記録するべきだが、ADRを簡潔に保つために、アドバイスの要約だけを記載し、詳細な記録は別途保存しておくといいだろう。

<!-- The most important thing to bear in mind here is brevity. Keep the ADR short and to the point - typically a single page. If there's supporting material, link to it. -->

最も重要なのは簡潔さである。ADRは短く要点を押さえたものにする。通常は1ページ以内に収める。補足資料があれば、それらにリンクする。

<!-- While ADRs are a form for recording decisions in software architecture, the broader concept of writing short decision records is worth considering in other contexts. This kind of decision log creates a valuable historic record that can do much to explain why things are the way they turned out. -->

ADRはソフトウェアアーキテクチャの決定を記録する形式だが、簡潔に決定を記録するという概念は他の分野でも検討すべきだろう。このような決定の履歴は、物事が現在のようになっている理由を説明するための歴史的記録になる。

<!-- Further Reading -->
## さらに詳しく知るために

<!-- Michael Nygard coined the term “Architecture Decision Record” with an ADR-formatted article in 2011. While he did not originate the idea of a decision log he did make case for a lightweight document, with a focus on the decision itself. In this he was particularly inspired by Phillipe Kruchten talking about decision registers / decision logs, and by the writing style of software patterns. His article is better than pretty much everything else written on the topic, my only desire to write this one was to point to some developments since. -->

2011年、Michael Nygardが[ADRの書式に関する記事](https://cognitect.com/blog/2011/11/15/documenting-architecture-decisions)で「アーキテクチャデシジョンレコード」という用語を提唱した。彼が「決定の履歴」というアイデアを考案したわけではないが、彼は決定の重要性と軽量な文書の必要性を強く主張した。この点については、Phillipe Kruchtenの決定目録と決定履歴（decision registers / decision logs）や[ソフトウェアパターンの書き方](https://martinfowler.com/articles/writingPatterns.html)に影響を受けている。このテーマについては、彼の記事が他のどの文章よりも優れている。私が本記事を書こうと思ったのは、その後の展開を示したかったからだ。

<!-- On this site, there are brief examples of ADR formats in articles by Harmel-Law and Rowse and Shepherd. -->

本サイトでは、[Harmel-Law](https://martinfowler.com/articles/scaling-architecture-conversationally.html#adr)および[RowseとShepherd](https://martinfowler.com/articles/building-infrastructure-platform.html#ArchitecturalDecisionRecords)が執筆した記事のなかで、ADRの書式の実例を使っている。

<!-- adr-tools is a simple command line tool to manage ADRs. It includes a set of ADRs for itself that are a good example of the form. -->

[adr-tools](https://github.com/npryce/adr-tools)はADRを管理するためのシンプルなコマンドラインツールである。このツール自体のADR一式も含まれているため、実例として参考になる。

<!-- Acknowledgements -->
## 謝辞

<!-- Andrew Harmel-Law, Brandon Cook, David Lucas, Francisco Dias, Giuseppe Matheus Pereira, John King, Kief Morris, Michael Joyce, Neil Price, Shane Gibson, Steven Peh, and Vijay Raghavan Aravamudhan discussed drafts of this post on our internal chat. Michael Nygard gave some background on the origins of his writing. -->

Andrew Harmel-Law, Brandon Cook, David Lucas, Francisco Dias, Giuseppe Matheus Pereira, John King, Kief Morris, Michael Joyce, Neil Price, Shane Gibson, Steven Peh, Vijay Raghavan Aravamudhanとは、本記事の草稿について社内チャットで議論を交わした。Michael Nygardからは彼が記事を書いた背景について説明を受けた。
