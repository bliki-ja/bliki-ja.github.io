---
title: バイテンポラル履歴
tags: [API design, data analytics, article]
---

<!-- It's often necessary to access the historical values of some property. But sometimes this history itself needs to be modified in response to retroactive updates. Bitemporal history treats time as two dimensions: actual history records what history should be given perfect transmission of information, while record history captures how our knowledge of history changes. -->

なんらかのプロパティの過去時点での値（履歴）を参照する必要があることは多い。しかし、こういった履歴そのものも、過去について新しい情報が得られると、それに応じた修正が必要になることがある（遡及的な変更）。そこで、「バイテンポラル履歴 (bitemporal history)」は時間を2次元として扱う。1つ目の次元「実履歴 (actual history)」は、情報が一切の誤りなく伝わるとしたときに本来あるべき履歴を記録し、2つ目の次元「記録履歴 (record history)」は、履歴に対する認識の変遷を記録する。

<!-- TOC -->
- [2つの次元](#2つの次元)
- [遡及的な変更のさらなる変更](#遡及的な変更のさらなる変更)
- [バイテンポラル履歴の使用](#バイテンポラル履歴の使用)
- [追記専用の履歴](#追記専用の履歴)
- [遡及的な変更による影響](#遡及的な変更による影響)
- [記録時間の「視点」](#記録時間の視点)
- [バイテンポラル履歴の保存と処理](#バイテンポラル履歴の保存と処理)
- [参考文献](#参考文献)
<!-- /TOC -->

<!-- When we think of how some property (e.g. your address or salary) changes over time, we usually think of it as a linear sequence of changes. But surprisingly often, it can get rather more tangled than that, in a way that can often confuse computerized records. -->

住所や給与額など、なんらかのプロパティが時間の経過に伴って変化する過程を考えるとき、変化は直線的に連なるものと見なすのが普通である。しかし、実際はもっと複雑に絡み合った構造になることが想像以上に多く、そのせいでコンピュータ上のデータがごちゃついてしまうことも少なくない。

<!-- I can illustrate all this with a simple example: -->

この話は次のような簡単な例で説明できる。

<!--
* We are handling payroll for our company. We run the payroll for our company on February 25, and our employee Sally is paid according to her monthly salary of $6000.
* On March 15 we get an apologetic letter from HR telling us that, on February 15th, Sally got a pay raise to $6500.
-->

* 自社の給与計算業務に対応しているとする。2月25日に給与支払を実行し、従業員であるサリーには、月給6000ドルに基づく給与を支給する。
* 3月15日に人事部からお詫びの連絡が入る。それによると、サリーは2月15日付で6500ドルに昇給していたという。

<!-- So what should we answer when we're asked what Sally's salary was on February 25? In one sense we should answer $6500, since we know now that that was the rate. But often we cannot ignore that on Feb 25 we thought the salary was $6000, after all that's when we ran payroll. We printed a check, sent it to her, and she cashed it. These all occurred based on the amount that her salary was. If the tax authorities asked us for her salary on Feb 25, this becomes important. -->

では、「2月25日時点でサリーの給与額はいくらだったか」という質問には、どう回答するのが正解だろうか。ある意味では、6500ドルという答えが正しいといえる。今は2月25日の正しい給与額がわかっているからだ。しかし、2月25日時点では6000ドルのつもりだったのを無視できないことも多い。実際、その日に給与を支払ったからだ。つまり、小切手を印刷してサリーに送り、サリーが換金したのだ。この支払い処理は全体として、その時点での給与額に基づいている。もし先の質問をしてきたのが税務当局だとしたら、どう回答するかの重要度は増す。

<!-- The Two Dimensions -->
## 2つの次元

<!-- I find I can make sense of much of this tangle by thinking of time as two dimensions - hence the term “bitemporal”. One dimension is the actual history of Sally's salary, which I'll illustrate by sampling on the 25th of each month, since that's when payroll runs. -->

こういった時間経過に伴う給与額の複雑な変化をおおむね理解するには、「時間は2次元である」と考えればよい。この「2次元」が「bitemporal（2つの時間の）」という用語の由来になっている。1つ目の次元はサリーの給与額の実際の履歴だ。ここでは、給与支給日である毎月25日時点の額を取り出したものとする。

|date|salary
|----|------
|Jan 25|6000
|Feb 25|6500
|Mar 25|6500

<!-- The second dimension comes in as we ask what did we think Sally's salary history was on February 25? On February 25th we hadn't got the letter from HR, so we thought her salary was always $6000. There is a difference between the actual history, and our record of the history. We can show this by adding new dates to our table -->

2つ目の次元は「2月25日時点でサリーの給与額の履歴についてどう認識していたか」と考えることで生まれるものだ。人事部から2月25日に連絡を受けていなかったので、給与額は常に6000ドルだと思っていた。つまり、実際の履歴と、履歴についての記録の間にズレが生じている。先ほどの表に日付の列を新たに追加すると、このズレがわかる。

|record date|actual date|salary
|-----------|-----------|------
|Jan 25|Jan 25|6000
|Feb 25|Jan 25|6000
|Mar 25|Jan 25|6000
|Feb 25|Feb 25|6000
|Mar 25|Feb 25|6500
|Mar 25|Mar 25|6500

<!-- I'm using the terms actual and record history for the two dimensions. You may also hear people using the terms valid, or effective (for actual) and transaction (for record). -->

「実履歴 (actual history)」と「記録履歴 (record history)」という用語は、この2つの次元を表すために使っている。「actual」の代わりに「valid」（または「effective」）、「record」の代わりに「transaction」という用語が使われることもある[^1]。

<!-- Actual/record versus valid/transaction: The terminology of valid time and transaction time comes from Snodgrass, and is also used in the SQL:2011 standard. When I first started giving workshops about temporal modeling, back in the early naughts, I used these terms, but people found them confusing. So instead we started to use actual/record instead. Since valid/transaction hasn't become widespread usage, I'm going to follow that lesson and use actual/record here. -->

[^1]: **actual/record 対 valid/transaction**: 「valid time」や「transaction time」という用語は[Snodgrassの著作](https://www.amazon.com/gp/product/1558604367/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1558604367&linkCode=as2&tag=martinfowlerc-20)に由来するもので、標準規格である[SQL:2011](https://en.wikipedia.org/wiki/SQL:2011)でも使われている。2000年代初めごろ、私がテンポラルモデリングのワークショップを始めた当初は「valid」と「transaction」を使っていたが、参加者からすると分かりにくいとのことだった。そのため、代わりに「actual」と「record」を使うようになった。「valid」と「transaction」が用語として定着しているわけでもないので、ワークショップでの教訓を踏まえて、この記事では「actual」と「record」を使うことにする。

<!-- I read the rows of this table by saying something like “on Mar 25th, we thought Sally's salary on Feb 25th was $6500”. Using this way of thinking, I can look at the earlier table of Sally's actual history, and say that more precisely it's Sally's actual history as known (recorded) on March 25. -->

この表の列は「3月25日時点では、2月25日のサリーの給与額は6500ドルだと思っていた」などと唱えながら読む。このように考えると、サリーの給与の実履歴を表していた最初の表は、正確には3月25日時点で認識（記録）した実履歴だと言える。

<!-- In programming terms, If I want to know Sally's salary, and I have no history, then I can get it with something like sally.salary. To add support for (actual) history I need to use sally.salaryAt('2021-02-25'). In a bitemporal world I need another parameter sally.salaryAt('2021-02-25', '2021-03-25') -->

プログラミング的な観点だと、サリーの給与額を知りたい場合、履歴が存在しないなら`sally.salary`のようにして給与額を取得できる。履歴（実履歴）に対応するなら、`sally.salaryAt('2021-02-25')`とする必要がある。バイテンポラルな世界だと、さらに別のパラメータも必要になり、`sally.salaryAt('2021-02-25', '2021-03-25')`とする必要がある。

<!-- Another way to visualize this is to make a plot where the x axis is actual time and the y axis is record time. I shade the region according to the salary level. (The shape of the plot is triangular since we're not trying to record future values.) -->

表以外の方法でバイテンポラル履歴を可視化するには、x軸を実時間、y軸を記録時間とした座標平面上にグラフを描く。ここで、グラフ上の領域の色を給与額の水準に応じて変えている（未来の値は記録しようとしていないので、グラフの形は三角形になっている[^2]）。

![](https://martinfowler.com/articles/bitemporal-history/intro-labels.png)

<!-- Bitemporal Future: With history actual time is always at or before record time. But the notion of bitemporality can apply to the future. If I'm told on May 5 that Sally will get another increase on May 12, then I can record that increase with a record time of May 5 and an actual time of May 12. -->

[^2]: **バイテンポラルな未来**: 過去の履歴では、実時間は常に記録時間と同じかそれ以前の時間になっているが、バイテンポラルの概念は未来にも適用できる。5月5日にサリーが5月12日付でさらに昇給すると知った場合、記録時間を5月5日、実時間を5月12日として昇給を記録できる。

<!-- With this plot, I can make a table for how actual history changes with each run of payroll on the 25th. We see that the Feb 25 payroll ran at a time when Sally had no raise, but when the Mar 25 payroll ran, the raise was known. -->

このグラフから、毎月25日の給与支払による実履歴の変遷を示す表を作成できる。2月25日の給与はサリーが昇給していないタイミングで支払われ、3月25日の給与は、昇給が既知の状態で支払われていることがわかる。

![](https://martinfowler.com/articles/bitemporal-history/sally-mar-25.png)

<!-- Changing the Retroactive Change -->
## 遡及的な変更のさらなる変更

<!-- Now consider another communication from HR -->

いま、人事部から別の連絡があったとしよう。

<!-- * April 5: Sorry there was an typo in our previous email. Sally's raise on Feb 15 was to $6400. Sorry for the inconvenience. -->

* 4月5日: すみません、前回のメールに誤りがありました。サリーさんは2月15日付で昇給し、6400ドルになっていました。お手数をおかけして申し訳ありません。

<!-- This is the kind of change that makes angels weep. But when we think of it terms of bitemporal history, it's not that difficult to understand. Here's the plot with this new bit of information. -->

こういった変更は理解がひどく難しくなるものだ。しかし、バイテンポラル履歴の観点で考えれば、それほど苦労せずに理解できる。新情報を加味したグラフはこうなる。

![](https://martinfowler.com/articles/bitemporal-history/sally-apr-25.png)

<!-- The horizontal lines, used for the payrols, represent the actual history at a certain point in record time. On April 25 we know Sally's salary increased from $6000 to $6400 on February 15. In that perspective, we never see Sally's $6500 salary because it was never true. -->

給与支払で利用する水平な線は、記録時間のある時点における実履歴を表す。4月25日時点の認識では、サリーの給与が2月25日に6000ドルから6400ドルに昇給している。その観点からだと、サリーの給与が6500ドルであるというデータは見えない。4月25日には事実ではなくなったからだ。

<!-- Looking at the diagram, what does a vertical line mean? -->

さらに次の図を見てみると、垂直な線は何を意味しているだろうか。

![](https://martinfowler.com/articles/bitemporal-history/sally-record-history.png)

<!-- This represents our knowledge of the value at a certain date. The table indicates the recorded salary for February 25th, as our knowledge changed over time. -->

この線は、ある日付の給与額についての認識を表現している。線の上に示す表は2月25日分として記録してきた給与額の一覧になっていて、時間経過に応じた認識の変遷を表している。

<!-- Using Bitemporality -->
## バイテンポラル履歴の使用

<!-- Bitemporal history is a useful way of framing history when we have to deal with retroactive changes. However we don't see it used that often, partly because many people don't know about the technique, but also because we can often get away without it. -->

バイテンポラル履歴は、遡及的な変更を扱うときに履歴を作る便利な方法である。だが、使われているところはそれほど目にしない。この手法について知っている人が多くないというのもあるが、使わずに済んでしまうことも多いからだ。

<!-- One way to avoid it is to not support retroactive changes. If your insurance company says any changes become in force when they receive your letter - then that's a way of forcing actual time to match record time. -->

バイテンポラル履歴を使わずに済ませる方法として「遡及的な変更に対応しない」というものがある。仮に、保険会社が「いかなる変更も書面受け取り時点から有効になる」としているなら、そうやって実履歴を記録履歴と強制的に一致させて、バイテンポラル履歴を避けているのだ。

<!-- Retroactive changes are a problem when actions are based on a past state that's retroactively changed, such as a salary check being sent out based on a now-updated salary level. If we are merely recording a history, then we don't have to worry about it changing retroactively - we essentially ignore record history and only record actual history. We may do that even when we do have invariant action if the action is recorded in such a way that it records any necessary input data. So the payroll for Sally could record her salary at the time it issues the check, and that's enough for audit purposes. In that situation we can get away with only the actual history of her salary. The record history is then buried inside her payroll statements. -->

遡及的な変更が問題になるのは、業務上のアクションを遡及的に変更した過去の状態に基づいて実行する場合だ。例えば、最新版の給与水準に基づいて小切手を送付するようなケースがある。一方で、単に変更の履歴を記録するだけなら、履歴の遡及的は変更については気にしなくてもよい。なぜなら、実質的には記録履歴を無視して実履歴だけを記録することになるからだ。また、あとから変更できないアクションであっても、必要な入力データと合わせてアクションを記録するなら、実履歴を記録するだけでよい。例えば、サリーへの給与支払のケースでは、小切手を発行した時点での給与額を記録しておけば、監査目的には十分だ。そういった状況なら、給与額の実履歴だけで事足りる。記録履歴は給与明細内部に記録される形になる。

<!-- We may also get away with only actual history if any retroactive changes are made before an action occurs. If we had learned of Sally's salary change on February 24th, we could adjust her record without running into before the payroll action relied on the incorrect figure. -->

また、遡及的な変更を加えた後だけ業務上のアクションが発生する場合も、実履歴だけで十分だ。たとえば、サリーの給与額が変わることを2月24日に認識していれば、給与額のデータを事前に修正できたので、誤った金額に依拠した給与支払アクションを実行せずに済んだだろう。

<!-- If we can avoid using bitemporal history, then that's usually preferable as it does complicate a system quite significantly. However when we have to deal with discrepancies between actual and record history, usually due to retroactive updates, then we need to bite the bullet. One of the hardest parts of this is educating users on how bitemporal history works. Most people don't think of a historical record as something that changes, let alone of the two dimensions of record and actual history. -->

バイテンポラル履歴を使わずに済むのであれば、ふつうはそれが好ましい。システムが相当に複雑化するからだ。だが、たいてい遡及的な更新が原因で起きる実履歴・記録履歴の不整合に対処する必要があるなら、バイテンポラル履歴の複雑さを受け入れる必要がある。その中でとりわけ難しいのは、バイテンポラル履歴のしくみを履歴の利用者に身につけてもらうことだ。過去のデータが変化するものだと思っている人はほとんどいない。ましてや、実履歴・記録履歴という2つの次元があるなどということについては言うまでもない。

<!-- Append-only History -->
## 追記専用の履歴

<!-- In a simple world a history is append-only. If communication is perfect and instantaneous then all new information is learned immediately by every interested actor. We can then just treat history as something we add to as new events occur in the world. -->

シンプルな世界であれば、履歴は追記専用で済む。通信が一切の誤りなく瞬時に完了するなら、あらゆる新しい情報は、その情報に関心のある関係者全員が即座に知ることになる。その場合、履歴は、世界で新しくイベントが発生するたびに情報を加えていくだけのものとして扱うことができる。

<!-- Bitemporal history is a way of coming to terms that communication is neither perfect nor instantaneous. Actual history is no longer append-only, we go back and make retroactive changes. However record history itself is append only. We don't change what we thought we knew about Sally's salary on Feb 25. We just append the later knowledge we gained. By layering an append-only record history over the actual history, we allow the actual history to be modified while creating a reliable history of its modifications. -->

一方、バイテンポラル履歴は現実を受け入れる手段といえる。現実は、通信には誤りが含まれるし、瞬時に完了することもない。バイテンポラル履歴の実履歴は追記専用ではなくなり、過去にさかのぼって履歴を変更できる。しかし、記録履歴そのものは追記専用である。つまり、2月25日時点のサリーの給与額についての認識自体は変更せず、あとからわかったことを追記するだけである。追記専用の記録履歴を実履歴の上に重ねることで、実履歴を修正しつつ、その修正についての信頼できる履歴を作ることができる。

<!-- Consequences of Retroactive Changes -->
## 遡及的な変更による影響

<!-- Bitemporal history is a mechanism that allows us to track how a value changes, and it can be extremely helpful to be able ask sally.salaryAt(actualDate, recordDate). But retroactive changes do more than just adjust the historical record. As the expert says: “People assume that time is a strict progression of cause to effect, but actually from a non-linear, non-subjective viewpoint - it’s more like a big ball of wibbly wobbly timey wimey stuff.” If we've paid Sally $6000 when we should have paid her $6400, then we need to make it right. At the very least that means getting more in a later paycheck, but it may also lead to other consequences. Maybe the higher payment means she should have crossed some important threshold a month earlier, maybe there are tax implications. -->

バイテンポラル履歴は値の変遷を追跡可能にするしくみであり、`sally.salaryAt(actualDate, recordDate)`のように履歴を取得できるので、非常に役立つ可能性がある。しかし、遡及的な変更による影響は過去時点のデータを修正するだけにとどまらない。ある専門家は次のように述べている[^3]。

> 時間は原因から結果への直線だと考えられている。だが実際は、非線形的客観的視野では、もっと不定的で時間的なものの大きな塊なんだ

もしサリーに6400ドル支払うべきだったのに6000ドルしか払っていないなら、支給額を正す必要がある。少なくとも後の給与支払時に差額も支給することになるが、それ以外の影響が生じる可能性もある。たとえば、差額分が増えると、サリーがなにか重要な閾値を1か月早く超えているべきだったということになったり、課税されたりする可能性があるのだ。

<!-- If you don't recognize this quote, you should put Blink on your watchlist. One of the finest time-travel stories ever filmed. -->

[^3]: この引用を知らないなら、『まばたきするな』（原題:『Blink』）をウォッチリストを入れたほうがいい。映像化されたタイムトラベルものの作品の中でも屈指の傑作だ。

<!-- Bitemporal history alone isn't enough to figure out these dependent effects are, that demands a set of additional mechanisms, which are beyond the scope of this pattern. One measure is to create a parallel model, which captures the state of the world as it should have been with the correct salary, and use this to figure out the compensating changes. Bitemporal history can be useful element for these kinds of measures, but only unravels part of that big ball. -->

バイテンポラル履歴だけでは、こういった副次的な影響があるかどうかはわからない。調べるには追加のしくみ一式が必要になるが、本パターンの対象外だ。調査手法の一つとしては、正しい給与額に基づく「あるべき世界の状態」を記録するパラレルモデルを作成して、金額補正用の変更を割り出すというものがある[^4]。バイテンポラル履歴はこういった手法を実施するのに役立つが、それ単体では「大きな塊」の一部しか解き明かせない。

<!-- I started to explore this topic in my earlier writing on parallel models in the mid 2000s. I didn't continue down that path then, and I'm not sure when or if I'll revisit that trail in the future. -->

[^4]: このテーマについては、2000年代中盤、[パラレルモデル](https://martinfowler.com/eaaDev/ParallelModel.html)の執筆初期に広く考え始めていた。しかし、当時はその方向性での検討は中断してしまった。今後再開するのか、再開するとしたらいつなのかはわからない。

<!-- Perspectives for Record Time -->
## 記録時間の「視点」

<!-- My example above for record time uses dates to capture our changing understanding of actual history. But the way we capture record history can be more involved than that. -->

上述の記録時間についての例では、実履歴に対する認識の変遷を記録するために日付を使った。しかし、記録履歴を記録する方法はもっと複雑になりえる。

<!-- To make everything easier to follow above, I sampled the history on the payroll dates. But a better representation of a history is to use date ranges, Here's a table to cover 2021 -->

先ほどは、議論を追いやすくするために、給与支給日の履歴だけを抜き出していた。しかし、履歴をもっと適切に表現するには、日付の範囲を使うほうがよい。2021年の給与履歴を対象とした表がこちらだ。

|record dates|actual dates|salary
|------------|------------|------
|Jan 1 - Mar 14|Jan 1 - Dec 31|6000
|Mar 15 - Apr 4|Jan 1 - Feb 14|6000
|Mar 15 - Apr 4|Feb 15 - Dec 31|6500
|Apr 5 - Dec 31|Jan 1 - Feb 14|6000
|Apr 5 - Dec 31|Feb 15 - Dec 31|6400

<!-- We can think of Sally's salary being recorded with a combination of two keys, the actual key (a date range) and the record key (also a date range). But our notion of record key can be more complicated than that. -->

サリーの給与は、「実キー (actual key)」と「記録キー (record key)」という2つのキー（どちらも日付の範囲）を組み合わせて記録していると考えることができる。しかし、記録キーという概念は、場合によってはもっと複雑になる。

<!-- One obvious case is that different agents can have different record histories. This is clearly the case for Sally, it took time to get messages from the HR department to the Payroll department, so the record times for those modifications to actual history will differ between the two. -->

明らかに複雑になるのは、異なる主体がそれぞれの記録履歴を持つようなケースだ。サリーの件は明らかにそのケースに該当している。人事部(HR)から給与部(Payroll)への連絡に時間がかかっていたので、部門によって実履歴の修正についての記録時間に差異が生じる。

|department|record dates|actual dates|salary
|----------|------------|------------|------
|HR|Jan 1 - Feb 14|Jan 1 - Dec 31|6000
|HR|Feb 15 - Dec 31|Jan 1 - Feb 14|6000
|HR|Feb 15 - Dec 31|Feb 15 - Dec 31|6400
|Payroll|Jan 1 - Mar 14|Jan 1 - Dec 31|6000
|Payroll|Mar 15 - Apr 4|Jan 1 - Feb 14|6000
|Payroll|Mar 15 - Apr 4|Feb 15 - Dec 31|6500
|Payroll|Apr 5 - Dec 31|Jan 1 - Feb 14|6000
|Payroll|Apr 5 - Dec 31|Feb 15 - Dec 31|6400

<!-- Anything that can record a history will have its own record timestamps for when it learns information. Depending on that data we may say that an enterprise will choose a certain agent to be the defining agent for recording certain kinds of data. But agents will cross lines of authority - however big the company, it won't change the recording dates of the tax authorities it deals with. A lot of effort goes into sorting out problems caused by different agents learning the same facts at different times. -->

履歴を記録するあらゆるモノには、情報を認識した時点を表す独自のタイムスタンプがある。そのタイムスタンプに基づいて、企業はある種のデータを記録する際の決定的な主体として、とある主体を選ぶことになるだろう。しかし、主体は権限系統を横断することになるが、どれだけ企業が大きくても、取引相手の税務当局による記録日付まで変えることはない。異なる主体が同じ事実を別の時間に認識することで生じる問題の解決には、多大な労力が費やされている。

<!-- We can generalize what's happening here by combining the notion of the department and record date range into a single concept of a perspective. Thus we'd say something like “according to HR's perspective on Feb 25, Sally's salary was $6400”. In a table form, we might visualize it like this. -->

この場合に起きていることを一般化するには、「部門」と「記録日の範囲」を「視点 (perspective)」という1つの概念にまとめればよい。たとえば「2月25日時点の人事部の視点からすると、サリーの給与額は6400ドルだった」といった感じだ。表形式だと、こういった見せかたになるだろう。

|perspective|actual dates|salary
|-----------|------------|------
|HR, Jan 1 - Feb 14|Jan 1 - Dec 31|6000
|HR, Feb 15 - Dec 31|Jan 1 - Feb 14|6000
|HR, Feb 15 - Dec 31|Feb 15 - Dec 31|6400
|Payroll, Jan 1 - Mar 14|Jan 1 - Dec 31|6000
|Payroll, Mar 15 - Apr 4|Jan 1 - Feb 14|6000
|Payroll, Mar 15 - Apr 4|Feb 15 - Dec 31|6500
|Payroll, Apr 5 - Dec 31|Jan 1 - Feb 14|6000
|Payroll, Apr 5 - Dec 31|Feb 15 - Dec 31|6400

<!-- What does this collapse into a single perspective concept give us? It allows us to think about what other perspectives might be. One example is to consider alternative perspectives. We could create a perspective where we remove individual raises (such as Sally's on Feb 15) and give every employee a salary raise of 10% on March 1st. That would lead to a new record-time dimension for Sally's salary. -->

視点という概念1つにまとめる利点には、他の視点がどうなるか考えられるようになることがある。一例として、既存の視点の代わりになるような視点を考えてみる。2月15日付のサリーの昇給のような個人の昇給をなくして、代わりに3月1日に全従業員が10％昇給するような視点が作れるだろう。こうすることで、サリーの給与額に対して新たな記録時間の次元が生じる。

|perspective|actual dates|salary
|-----------|------------|------
|real world|Jan 1 - Feb 14|6000
|real world|Feb 15 - Dec 31|6400
|with global raise|Jan 1 - Feb 28|6000
|with global raise|Mar 1 - Dec 31|6600

<!-- This generalization of the notion of record time says that we can layer multiple perspectives over an actual history, using essentially the same mechanism to reason about retroactive changes and alternative histories. -->

このように記録時間の概念を一般化すると、複数の視点を実履歴の上に重ねることができる。つまり、遡及的な変更について考えるときと、代わりの履歴について考えるときとで、実質的に同じメカニズムが使えるようになる。

<!-- Putting many perspective dimensions over a history isn't something that's widely useful, even compared to bitemporal history. But I find it a helpful way to think about these kinds of situations: reasoning about alternative scenarios, either historically, or in the future. An example of this is budgeting, where different budgets are made in various plans, each with its own forecast, and later compared with actual results. -->

視点という次元を履歴上にたくさん重ねるのは、バイテンポラル履歴と比べても広範に役立つというわけではない。だが、この考えかたが役立つようなタイプの状況として、過去か未来において別案のシナリオを考える場合がある。その具体例は予算編成だ。独自の予想に基づいたさまざまな予算案を策定し、あとで実績値と比較するのである。

<!-- Storing and Processing Bitemporal Histories -->
## バイテンポラル履歴の保存と処理

<!-- Adding history to data increases complexity. In a bitemporal world I need two date parameters to access Sally's salary - sally.salaryAt('2021-02-25', '2021-03-25'). We can simplify access by defaults, if we treat the default for record time as today, then processing that only needs current record time can ignore the bitemporal complications. -->

データが履歴を持てるようにすると、複雑さは増す。バイテンポラルな世界では、サリーの給与額を参照するのに2つのパラメータが必要になる。つまり`sally.salaryAt('2021-02-25', '2021-03-25')`のような形になる。とはいえ、デフォルトの参照方法はシンプルにできる。記録時間のデフォルト値を今日だと見なせば、現時点を記録時間とすれば十分な処理では時間が2次元であることに起因する煩雑さを無視できるからだ。

<!-- Simplifying access, however, doesn't necessarily simplify storage. If any client needs bitemporal data, we have to store it somehow. While there are some databases that have built-in support for for some level of temporality, they are relatively niche. And wisely, folks tend to be extra-wary of niche technologies when it comes to long lived data. -->

しかし、参照方法が単純化できても、保存方法もそうできるとは限らない。バイテンポラルなデータが必要なクライアントがいるなら、なんとかして保存しておかなければならない。何段階かのテンポラル性に対応した機能を組み込みでサポートしているデータベースもあるが、割とニッチな製品ではある。また、長期間にわたって保存するデータとなれば、ニッチな技術に対して特別慎重になる傾向が賢明にも見られる。

<!-- Given that, often the best way is to come up with our own scheme. There are two broad approaches. -->

この状況を踏まえると、独自のしくみを作り出すのが最善ということも少なくない。これには大きく分けて2つのアプローチがある。

<!-- The first is to use a bitemporal data structure: encoding the necessary date information into the data structure used to store the data. This could work by using nested date range objects, or a pair of start/end dates in a relational table. -->

1つ目の方法として、バイテンポラルなデータ構造がある。この方法では、必要な日付の情報を保存用のデータ構造に書き込む。保存用のデータ構造の中に日付の範囲を表すオブジェクトを入れ子にして保持するか、RDBのテーブル内に開始日・終了日のペアを保持すればよい。

|record start|record end|actual start|actual end|salary
|------------|----------|------------|----------|------
|Jan 1|Mar 14|Jan 1|Dec 31|6000
|Mar 15|Apr 4|Jan 1|Feb 14|6000
|Mar 15|Apr 4|Feb 15|Dec 31|6500
|Apr 5|Dec 31|Jan 1|Feb 14|6000
|Apr 5|Dec 31|Feb 15|Dec 31|6400

<!-- This allows access to all the bitemporal history, but is awkward to update and query - although that can be made easier by making a library handle access to bitemporal information. -->

この方法を使うとバイテンポラル履歴全体を参照できるようになるが、データの更新やクエリの発行がやりづらくなる。もっとも、バイテンポラルな情報へのアクセスを処理するライブラリを作成すれば、少しは扱いやすくなる。

<!-- The alternative is to use event sourcing. Here we don't store the state of Sally's salary as our primary store, instead we store all the changes as events. Such events might look like this -->

別の方法としては、[イベントソーシング](https://martinfowler.com/eaaDev/EventSourcing.html)がある。この場合、サリーの給与額自体（給与の「状態」）をメインのデータとして持つのではなく、給与に対する変更すべてをイベントとして保存する。そのイベントは次のような形になる。

|record date|actual date|action|value
|-----------|-----------|------|-----
|Jan 1|Jan 1|sally.salary|6000
|Mar 15|Feb 15|sally.salary|6500
|Apr 5|Feb 15|sally.salary|6400

<!-- Pay attention to the fact that if events need to support bitemporal history, they need to be bitemporal themselves. This means each event needs an actual date (or time) for when the event occurred in the world, and a record date (or time) for when we learned about it. -->

ここで注意すべきは、イベントがバイテンポラル履歴に対応する必要があるなら、イベントデータ自体もバイテンポラルにする必要があるということだ。つまり、各イベントは、現実世界でイベントが発生した時点を表す実際の日付（または時間）と、そのイベントを認識した時点を表す記録の日付（または時間）を必要とする。

<!-- Storing the events is conceptually more straightforward, but requires more processing to answer a query. However much that processing can cached by building a snapshot of the application's state. So if most users of this data only required current actual history, then we could build a data structure that only supports actual history, populate it from the events, and keep it up to date as new events trickle in. Those users who wanted bitemporal data could create a more complex structure and populate it from the same events, but their complexity wouldn't make things harder for those who wanted the simpler model. (And if some people wanted to look at actual history on a different record date, they could use almost all the same code for working with current actual history.) -->

イベントの保存だけなら考えかたは単純だが、クエリに応答するには処理がさらに必要になる。一方、そのような処理の結果は、アプリケーションの状態のスナップショットを取れば、ほとんどはキャッシュできる。したがって、現時点の実履歴だけが必要なデータ利用者が大半なら、実履歴だけに対応しているデータ構造を作って、イベント列に基づく履歴データの追加と新規イベント発生時の履歴データの更新を実行すればよい。バイテンポラルな履歴データが欲しい利用者であれば、実履歴だけよりは複雑なバイテンポラル履歴のデータ構造を作って、同じイベント列から履歴データを追加することもできる。そのバイテンポラルなデータが複雑であろうと、実履歴だけを表す単純なモデルを使いたい人にとってややこしい問題は起きない（仮に別の記録日における実履歴を確認したいなら、現時点の実履歴を扱うためのコードの大部分を流用すればよい）。

<!-- Further Reading -->
## 参考文献

<!-- I ran into the issues of bitemporal history working with various software systems in the 1980's and 90's. I started to write down the patterns I'd observed, but never got past early drafts before other writing projects took over. There's a discussion of bitemporal history in there, I wrote this article to highlight the concept and hopefully explain it a bit more clearly. -->

80年代から90年代にかけて、さまざまなソフトウェアシステムに取り組むなかで、バイテンポラル履歴という問題に直面した。それまでに見られた[パターン群について書き留めだしていた](https://martinfowler.com/eaaDev/timeNarrative.html)ものの、本稿として仕上げないままに、他の執筆プロジェクトが忙しくなってしまった。その内容には、バイテンポラル履歴についての議論も含まれていた。本記事はその考えかたに力点を置き、もう少し明快に説明できればという意図で書いた。

<!-- Around that time Richard Snodgrass wrote a book: Developing Time-Oriented Database Applications in SQL. It goes into great detail about how to work with this kind of problem in SQL systems, and its approach influenced the SQL:2011 standard. -->

同じ時期に、Richard Snodgrassが[『Developing Time-Oriented Database Applications in SQL』](https://www.amazon.com/gp/product/1558604367/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1558604367&linkCode=as2&tag=martinfowlerc-20)という書籍を著した。同書は、SQLシステムにおけるこういった問題の対処方法について非常に詳しく論じており、そのアプローチは標準規格である[SQL:2011](https://en.wikipedia.org/wiki/SQL:2011)にも影響を及ぼした。

<!-- I took the notion of perspective from Time Travel: A Pattern Language for Values That Change -->

「視点」という概念は[『Time Travel: A Pattern Language for Values That Change』](http://www.manfred-lange.com/publications/TimeTravel.pdf)から取り入れた。

<!-- Acknowledgements -->
## 謝辞

<!-- Alexandre Klaser, Dave Elliman, Joshua Taylor, Martha Rohte, Mauro Vilasi, Pavlo Kerestey, Pramod Sadalge, Rebecca Parsons, Saager Mhatre, and Wolf Schlegel contributed to a useful discussion of this article on our internal mailing list. -->

Alexandre Klaser、Dave Elliman、Joshua Taylor、Martha Rohte、Mauro Vilasi、Pavlo Kerestey、Pramod Sadalge、Rebecca Parsons、Saager Mhatre、Wolf Schlegelには、社内のメーリングリストで本記事についての有益な議論にご協力いただいた。

<!-- Heikki Heinonen alerted me to some errors in the perspectives tables. -->

Heikki Heinonenには「視点」の表における誤りをいくつか指摘いただいた。

<!-- Significant Revisions -->
## 主な更新履歴

<!--
- 07 April 2021: Published
- 17 March 2021: Sent for internal review
- 02 March 2021: Started drafting
-->

- 2021年4月7日: 公開
- 2021年3月17日: 社内レビュー依頼
- 2021年3月2日: ドラフト執筆開始
