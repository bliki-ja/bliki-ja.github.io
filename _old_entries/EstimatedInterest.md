2008/11/6

http://martinfowler.com/bliki/EstimatedInterest.html

//TechnicalDebt is a very useful concept, but it raises the question of how do you measure it? Sadly technical debt isn't like financial debt, so it's not easy to tell how far you are in hock (although we seem to have had some trouble with measuring the financial kind recently).

[[TechnicalDebt]]は、かなり使える考え方である。
しかし、負債がどれくらいあるかなんて、どうやったら分かるのだろう。
残念ながら金融の負債とは違い、どれだけ技術的負債があるのかは分かりづらい。
（とはいえ、最近は金融の負債だって分かりにくくなっているようだけど）

//Here's one idea to consider. When a team completes a feature ask them to tell you how long it took them (the actual effort) and how long they think it would have taken if the system were properly clean. The difference between the two is the interest of the technical debt. (So if it actually took them 5 days but they think it would have taken them 3 days with a clean system, then you paid 2 days of effort as interest on your technical debt.)

たとえば、こんなのはどうだろう。
チームがある機能を完成させたときに、どれだけ時間がかかったかを聞く（実値）。
それから、もし仮にシステムがきれいだったとしたら、どれだけ時間がかかったかを聞く。
この2つの違いが技術的負債の利息である。
（実際の作業に5日かかって、きれなシステムなら3日だとすれば、2日分の作業を技術的負債の利息として支払ったことになる）。

//There are certainly some serious flaws with this technique. The statement of how long it would have taken on a clean system is an estimate based on an imaginary state - so is difficult to make objective. There's the effort in capturing this information, which is easy to get out of hand. But the result may help project a picture of the state of the code-base in a way that's visible to non-technical staff.

これにはいくつかの深刻な問題がある。
きれいなシステムならどれくらいかかったかというのは、想像上のシステムの状態に対する見積りを基にしたものである——客観的とは言いがたい。
客観的な情報を得ようとすると、収集がつかなくなることだろう。
しかし、客観的なデータではないにせよ、非技術スタッフの目にも見える形で、コードの状態の全体図を表すことができる。

//Furthermore it may also help with decisions about whether to pay the principal. Some teams like to add technical debt stories to their product backlog - with estimates on how long it would take to remove them. Such technical debt stories are also estimates, but also provide a picture of how much debt has built up. You could get a bit more clever with the estimated interest payments by apportioning them to these debt stories (I spent an extra day on this feature because of the bad state of the flipper module). Comparing interest payments with the principal may help inform a decision about whether to pay off the principal.

さらに、元本を払うかどうかの判断にも役立つ。
「技術的負債ストーリー」をプロダクトバックログに追加するチームがある——負債を取り除くのにかかる時間を見積っている。
これも見積もりに過ぎないが、どのくらい負債が積み上がっているのかが分かる。
このストーリーに作業を割り当てることで、利息の支払いがうまくできるかもしれない（ダメダメなモジュールがあったから、この機能には作業日を追加した、とかね）。
利息の支払いと元本の支払いを比べれば、どちらに支払えばいいのかが分かるだろう。

//I ran into someone recently who tried something a little like this and found it handy, but it's not something I've run into a lot. Certainly there are flaws with doing it - but it may be worth a try for a few iterations.

最近、このようなことに挑戦し、役に立つと分かったという人に出会った。
しかし、私が考えていたこととはちょっと違っていた。
きっと何か問題があるのだろう——だが、負債が少なければ、試してみる価値はある。

//Update: A recent discussion surfaced another way to capture the estimated interest. During a retrospective (which wise teams do at the end of each iteration) capture an estimate of interest paid against each of the problem areas of the system. Doing this estimate against recent completed work may be easier than forward estimates against future stories.


''更新'': 最近行った議論から別の支払利息の計算方法が分かった。ふりかえり（賢いチームはイテレーションの終わりに行っている）のときに、システムの各問題領域に対する支払い利息の見積りを行うというのである。最近完了した作業を見積るほうが、これから実装するストーリーを見積もるよりも簡単である。
