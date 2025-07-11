---
title: 好ましい設計スキル
tags: [team organization, recruiting, technical leadership, thoughtworks]
---

https://martinfowler.com/bliki/PreferDesignSkills.html




雇用について考えてみよう。
応募者が2人。どちらも経験が数年間。
青コーナーの人には、あなたが好きな設計スタイルの広範な設計力が備わっている（私の場合だと、DRY、分別のあるパターンの使用、TDD、伝わるようなコード、なんかが挙げられるけど、自分の好きなやつでいいよ）。ただし、彼女には、あなたが使っているプラットフォーム技術についての知識がない。
赤コーナーの人には、そういった設計の知識は（それに興味も）ないが、プラットフォーム技術についての知識はめちゃくちゃある。言語には詳しいし、どのライブラリが使えるかはよく知ってるし、ツールも流暢に使いこなす。
これ以外のことについては（こうした思考実験以外については）、2人ともまったく一緒だとしよう。
また、あなたのチームには、応募者の力によって埋めるべき欠陥は特に見当たらない。
それでは、どちらの応募者のほうが好ましいだろうか？



私の答えは簡単だ。広範な設計力を持っている人のほうだ。
以前から、良いプログラマというのは、比較的すぐに新しいプラットフォームについての知識を身につけられるものだと私は思っている。
基本的な設計美を学習するのは、新しいプラットフォームを学習することよりも難しいことだが、ずっと長く使えるものになる。
Javaにおける良い設計プラクティスは、.NETにおいても同じように使うことができる。
馴染みのないプラットフォームを扱うとスピードは落ちるかもしれないが（C#でクラス名の取得はどうやんの？とか）、良く設計されたコードを生成することが、本当の違いをもたらすのである。



広範な設計力は、完璧に移行可能なものではない。
Javaから.NETならば、言語としてほぼ等価なので移行は簡単だが、Rubyに移行しようとするとその違いが大きい。関数型言語のようにまったく違う代物に移行すると、さらに大きな違いとなる。
いずれにしても、新しい環境においてすべての設計の習慣を盲目的に適用することはできない。
もちろん、環境に配慮さえすれば、多くのことが適用可能だ。



ThoughtWorksでは、これまでに何度もこの法則が証明されている。
Javaを扱い始めた頃、熟練開発者がForteで学んだスキルがJavaにおいても大いに役立つことに気づいた。
我々はEJB中心の考えを早くからやめた。それは、それまでに使ってきたプラットフォームで得た経験があったからだ。
このことは.NETにおいて顕著だ。それまで.NETやマイクロソフト技術に携わってきた広範な設計力を持たない開発者よりも、Javaのバックグラウンドを持つ優れた開発者のほうが、すぐにバリバリ仕事をするようになったのを何度となく目にしてきた。
その違いは、数ヶ月ではなく、数週間で現れた（時には数日で現れた）。



現在、この流れを最も目にするのはRubyにおいてである。
昨年は、かなりの量のRubyプロジェクトがあったが、中括弧言語での経験が長い開発者をその人材として充てることが多かった。
ここでも、広範な設計力がもたらす価値を目にすることができた。



これは常に確かなことではない。
あるプラットフォームで経験を積んだ人が、新しいプラットフォームについて学びたいと思わないケースもある。
学びたいと思う気持ちは必要不可欠だ。
広範な設計力を学びたいと思っているプラットフォームスペシャリストと新しいプラットフォームについて学びたいと思わない広範な設計力を持った人がいれば、私は前者を採用するだろう。
チームに1人はプラットフォームをよく知る人間が必要不可欠だということもある。



ThoughtWorksでは、多くの人がプラットフォームの知識よりも設計力のほうを好んでいる。だが、多くのクライアントはこの考え方を理解していない。そのために、難しい倫理的な選択を迫られることもある。



設計力は高いけれどプラットフォームの知識がない人をチームに入れたいとしよう。クライアントはそのプラットフォームでの経験が少なくとも2年は必要だと言っている。
専門家としてあなたは、その人が他の誰よりも生産性が高いと判断した。
クライアントに嘘はつけないが、彼はきっとあなたの期待に応えてくれるだろう。
プロジェクトの一切の責任をあなたが負うのであれば、状況は変わるだろうか？



こうした質問は多くの議論を巻き起こすことになる。
なぜなら、お金にまつわる問題だからだ。
ThoughtWorkerを1人チームに加えたら、その人に給料を支払うことになる。
クライアントがプラットフォームスペシャリストを雇ってしまったら、
我々はそこで得られるはずの収益を手にすることができない。
こうした状況では、これは多くの人にとっての重要な要因である。
しかし、我々のプロジェクトマネージャには、ひとつの収益よりも間違った人を加えることのほうが、リスクが高いことを承知しておいてもらいたい。



他のケースについても考えてみよう。
広範な設計力を持つ彼女にプラットフォームの知識がないことをクライアントに正直に話したところ、値引きを要求された。彼女が仕事の中でプラットフォームを勉強するからということだ。
彼女にはプラットフォームの知識が足りないかもしれないが、
広範な設計力のおかげで他のプラットフォーム専門家よりも生産性が高いとあなたは考えている。
この値引きを受け入れるべきだろうか？



仕事を通じて学ぶということは、我々の（そしてみんなの）業界の特性なのである。
保守性の高いコードを書こうと思えば、
プラットフォーム専門家も広範な設計力を学ぶ必要がある。
ここで覚えておいてもらいたいのは、
プラットフォームよりも設計のほうが学習が難しいということだけでなく、
確実度が高いということなのである。
ヤル気のある広範な設計者は、いずれプラットフォームの知識を身につけるだろう。
しかし、逆は確かではない。
プラットフォームの細かなことには詳しくても、
明快なコードを書く方法が分からない人もいるのである。



ここでは広範な設計力について述べてきた。
私は、これが技術面において違いをもたらすことだと信じている。
ただし、「広さ」にはもうひとつの種類がある。
ソフトウェアプロジェクトにおけるリスクのほとんどが、
ビジネス人間とプログラマとのコミュニケーションに起因する。
つまり、ユーザーとコミュニケーションができる応募者のほうが、
チームに貢献できるのである。



ドメイン（問題領域）の知識についても同様である。
よくクライアントが彼らのビジネスについて詳しい人を要求することがあるが、
開発者の理解のスピードの速さにビックリしている。
長年、そう思っていることではあるが、
これは誰かと一緒に働くという能力なのである★。
ドメイン専門家やプラットフォーム専門家、あるいは広範な設計力を持つ人と働くことによって、すぐに役に立てるようになる。
他のドメインの知識がプロジェクトに驚くべき見識をもたらすこともよくあるし、
類似点が思いがけないところでひょっこり顔を出すこともある。
見た目上は会計とは関係のないようなところで
会計パターンがしばしば使えるというのは特筆すべきことだろう。
つまりは、他の人と一緒に働くというのは能力であり、
高速学習と組み合わせることは必要不可欠なスキルなのである。



私はプラットフォームの知識を無視しているわけではない。
理想的な世界では、
チームメンバ全員が優れた広範なプログラマで、
プラットフォームの経験も数年あり、
問題ドメインに精通し、
同様のシステムを少なくとも2回経験しているわけだが、
我々の現実世界は理想とはかけ離れている。
チームにはプラットフォームに精通した人が数人は欲しい。
もし知識が足りないようだったら、専門家をチームに入れる必要があるだろう。
しかし、広範な設計力のほうが重要だという立ち位置は、常に変わらない。

## 反応

* http://mixi.jp/view_diary.pl?id=690428093&owner_id=93155
