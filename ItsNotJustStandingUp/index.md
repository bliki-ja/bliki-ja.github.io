---
layout: page
title: "朝会のパターン:立ってるだけじゃないよ"
---

----

以下の文章は、[[Jason Yip|mailto:jcyip@thoughtworks.com]]による[[It's Not Just Standing Up: Patterns of Daily Stand-up Meetings|http://martinfowler.com/articles/itsNotJustStandingUp.html]]の日本語訳である。Jasonの許可を得て、ここに掲載する。

----
{{image_center 'img/standingup.jpg', 'Standup at TW Pune'}}

//We stand up to keep the meeting short
!立ってやるのはミーティングの時間を短くするためだ

//The daily stand-up meeting (also known as a "daily scrum", a "daily huddle", a "morning roll-call", etc.) is simple to describe: the whole team meets every day for a quick status update.  We stand up to keep the meeting short.  That's it.  But this short definition does not really tell you the subtle details that distinguish a good stand-up from a bad one.

朝会（デイリー・スタンドアップ・ミーティング、デイリー・スクラム、デイリー・ハドル{{fn('訳注：ハドルとは群になって集まること')}}、朝のロールコール{{fn('訳注：ロールコールとはメンバが順番に答えていく方式')}}）を説明するのは簡単だ。チーム全員が毎日顔を合わせ、現在の状況を迅速に確認しあう。立ってやるのはミーティングの時間を短くするためだ。以上。
でもこれだけじゃあ、「良い朝会」と「悪い朝会」の微妙な違いは分からないだろう。

//Given the apparent simplicity of stand-ups, I was quite surprised the first time I saw one that wasn't working. It was immediately obvious to me what was wrong but I realised that it was not obvious to the team. I realised that my team was not aware  of the underlying principles and details that would allowed them to diagnose and solve problems with stand-ups.

朝会の定義は非常に簡単なものなのに、
うまくいっていない朝会があって私はとても驚いた。
すぐに原因は分かったが、そのチームはそれが何なのか分かっていなかった。
朝会の基本原則と詳細を意識していなかったのだ。
そのために朝会の問題について診断や解決がなされていなかったわけだ。

//People who have experienced good stand-ups will generally know what can be done when things aren't working well. For novice stand-up attendees, when things go wrong, it is much less likely that they'll figure out what to do. One way to approach this issue is to claim that it's all a matter of tacit knowledge and novices just need to attend Tip top stuff. I'll ecxpet more well-run stand-ups. I believe, however, that it's much more likely that given no assistance, novices will simply abandon the practice of daily stand-ups. This would be unfortunate since well-run stand-ups add significant value to projects.

良い朝会を経験した人たちは、
うまくいってないときに何をすればいいかを知っている。
朝会に慣れていない人たちは、
うまくいってないときに何をすればいいかに気づかない。
「暗黙知なんだから、とにかく良い朝会に参加してみるといい」。
そう言ってしまうのもひとつの方法だが、慣れていない人たちは何か支援がないとすぐに朝会をやめてしまうと思う。
良い朝会はプロジェクトに劇的な価値をもたらすというのに、これではあんまりではないか。

// This is my attempt to communicate some of the previously tacit knowledge on the benefits and consequences of common practices for daily stand-ups. These patterns of daily stand-up meetings are intended to help new practitioners as well as remind experienced practitioners of what they might already know in their gut. 

本論文は、これまでに恩恵を受けてきた暗黙知と朝会の一般的なプラクティスの重要性を伝えることを目的としている。
朝会のパターンは新参者への助けとなるように書かれているが、
熟練者にとってもこれまでの経験知への気づきとなるだろう。

//The underlying theme is self-organisation
!基本テーマは「自己組織化」

// The underlying theme for daily stand-up meetings is self-organisation. This is not just because self-organisation leads to better productivity but also, and perhaps more so, because it leads to a more humane, respectful, and mature work environment. Many of the problems that can arise in executing a good stand-up will derive from a mis-alignment with this underlying motivation of self-organisation.

朝会の基本テーマは「自己組織化」である。
自己組織化は生産性を向上させるだけでなく、おそらくそれ以上に、人間味のある、尊敬の念のある、成熟した仕事環境をもたらす。
朝会を実行する際に問題となるものの多くは、この自己組織化という動機付けをし損ねたことに起因している。

//Self-organisation is not a culturally-specific virtue, whether team, organisational, or national culture.  If the whole team will not commit to taking responsibility for their own success, the team's performance will be necessarily worse.

自己組織化とは、特定のチーム、組織、国などの文化固有の美徳ではない。
チーム全体が成功に対する責任にコミットしなければ、
チームのパフォーマンスは必然的に悪化するだろう。

//What is the purpose of the daily stand-up meeting?
!朝会の目的は？

//Summarizing several papers and references ([Anderson, 2002], [Beedle et al., 2000], [Cochango, 2006], [OrgPatternsStandUp], [Rising, 2002], [Rising and Janoff, 2002], [Wells, 1999]) daily stand-ups should achieve the following goals:

論文や参考文献（[Anderson, 2002], [Beedle et al., 2000], [Cochango, 2006], [OrgPatternsStandUp], [Rising, 2002], [Rising and Janoff, 2002], [Wells, 1999]）を要約すると、朝会は以下の目標を達成しなければならない。

//share commitment
* コミットメントの共有
//communicate daily status, progress, and plans to the team and any observers
* チームとオブザーバに対する日々の状況、進捗、計画の報告
// identify obstacles so that the team can take steps to remove them
* 問題点を明確化し、チームがそれを乗り越えられるようにする
//set direction and focus
* 進むべき方向と焦点の設定
//build a team
* チームの形成

//Share commitment
!!コミットメントの共有

// Making daily commitments to each other as a team is the most important goal of daily stand-ups. Sharing commitment is more important than sharing progress or status. This is not to say that an observer will not have a sense of progress and status from the stand-up, but this is secondary to team members publicly committing to each other, and identifying obstacles that prevent them from meeting their commitments.

チームとしてのコミットメントを毎日確認し合うのは、朝会で最も重要な目的である。
コミットメントの共有は進捗や状況の共有よりも重要だ。
これは、オブザーバが進捗や状況を確認できないということではない。
お互いに公にコミットし合い、コミットメントを阻害する問題点を明確化しているチームメンバにとって、それは二次的なものなのだ。

//Communicate status
!!状況の報告

//The focus of the meetings is on the technical progress in the architecture and the work plan. [OrgPatternsStandUp]

""ミーティングではアーキテクチャにおける技術的進捗と作業計画に着目する。[OrgPatternsStandUp]

//Communicating status is not much of a differentiator for stand-ups against any other kind of status meeting. The mechanism that stand-ups use for communicating the status, that is the team updates each other instead of a manager, is a differentiator. Updating status every day also ensures that the team reflects on what they're doing at least daily.

状況の報告は普通の状況報告会議と大差がない。
決定的な違いは、マネージャではなく、チームがお互いに状況を更新し合うというメカニズムだろう。
状況を毎日更新することで、チームが今何をやっているかを少なくとも日次単位で確認することができる。

//Identify obstacles
!!問題点を明確化

//When one team member shares an obstacle in the Scrum meeting, the entire team’s resources come together to bear on that problem. Because the team is working together toward a shared goal, every team member must cooperate to reach that goal. The entire team immediately owns any one individual’s problems. [Rising and Janoff, 2000]

""スクラムミーティングでチームメンバが問題点を共有すると、チームは一丸となって問題に立ち向かう。なぜならチームは共有した目標に向かって一緒に働いているからだ。チームメンバは目標に向かって協力し合わなければならない。個人の問題をすぐにチーム全体の問題にするのだ。[Rising and Janoff, 2000]

//Raising and removing obstacles earlier allows the team to maintain its momentum. The stand-up itself is not intended to remove any particular obstacle but rather to provide a forum for people to identify obstacles so that other team members have the opportunity to help.

問題点の発見と除去を早期に行うと、チームは勢いを持続することができる。
朝会が問題点を除去するわけではないが、問題点を特定し、他のチームメンバがそれを助ける「場」を朝会は提供している。

//Set direction and focus
!!進むべき方向と焦点の設定

//During the daily meetings, the Scrum master would call attention to backlog item priority. This was especially helpful for new team members, who might have gone off in another direction. [Rising and Janoff, 2000]

""朝会では、スクラムマスターがバックログアイテムの優先度を強調する。これは間違った方向に進みやすい新しいチームメンバにとって特に役に立つ。[Rising and Janoff, 2000]

//We want everyone to be moving in the same direction. The stand-up is used to continually remind the team what that direction is.

我々はみんなに同じ方向に進んでもらいたい。
朝会は進むべき方向を頻繁に思い出させてくれる。

//Build a team
!!チームの形成

//More so than artificial “team-building” exercises, effective teams are built by regularly communicating, working, and helping each other. This is also strongly tied with team members helping each other with shared obstacles.

定期的にコミュニケーションしたり、仕事をしたり、助け合ったりすることで、有能なチームが形成されていく。
見せかけだけの“チーム形成”トレーニングなんかよりもずっと効果的だろう。
助け合ったり、問題点を共有したりすることで、チームはより強力に結びつくのである。

//The team is aware of any particular member's problems because they hear about it every day (until the problem is solved). This environment encourages people to raise problems as a history develops of other people helping when problems are raised.

毎日（問題が解決するまで）話を聞くため、チームはメンバの問題に気付くことができる。
このような環境だと、問題が起こったときに他のメンバが助けてくれるんだという実績が作られ、それによって問題を報告しやすくなる。

//Effective daily stand-ups have a particular feel
!良い朝会には特別な雰囲気がある

//Technically, the meeting is a “daily stand-up” if everyone is standing up and the meeting is held every day. However, there is a different feel to a good stand-up that distinguishes it from an empty ritual.

毎日全員が立ってミーティングをすれば、“デイリー・スタンドアップ・ミーティング”になるのかもしれない。
だが、良い朝会には特別な雰囲気があり、形だけの儀式なんかとは全然違うのだ。

//An early description of daily stand-up meetings called them Daily Scrums [Beedle et al., 2000] with an intentional association with the rugby term. The energy level of a daily stand-up should perhaps not be quite as high as that of a rugby scrum but it should still feel energising. Quickness and high energy support the goal of setting focus. Long, low-energy meetings tend to distract and mute the day.

最初の説明で、朝会はデイリー・スクラム[Beedle et al., 2000]とも呼ばれると述べた。これは意図的にラグビー用語を使ったものである。
朝会のエネルギーレベルはラグビーのスクラムほど高くなくてもよいが、ある程度は高める必要がある。
'''迅速さ'''と'''高エネルギー'''によって、設定したゴールに向かうのだ。
長く、低エネルギーの朝会では、気持ちがまとまらず、弱々しい一日となる。

//Good stand-ups will feel supportive. When people are knocked down every time they raise a problem, they will tend to stop raising problems. Beyond preventing removal of obstacles, a non-supportive stand-up works against team dynamics. The stand-up instead becomes a ritual that team members dread [LaPlante, 2003].

良い朝会には「'''支えてくれる感'''」がある。
問題が起こるたびにノックダウンされていては、次第に問題を報告しなくなるだろう。
支えてくれない朝会は問題点を除去できないどころか、チームのダイナミックさにも悪影響を及ぼす。
そうなると、朝会は恐怖の儀式になり下がってしまう[LaPlante, 2003]。

//When things are going right, there isn't much direction or facilitation required for the stand-up. A good stand-up will feel self-managed.

物事がうまくいっていれば、朝会にディレクションやファシリテーションは必要ない。
良い朝会には「'''自己管理'''してる感」があるのだ。

//Patterns of daily stand-up meetings
!朝会のパターン
//Who attends the daily stand-up?
!!朝会に出席する人は？

//All Hands
!!!総動員

//People and representatives from various areas (e.g., marketing, production support, upper management, training, etc.) wish to know about and/or contribute to the status and progress of the project. Communicating status in multiple meetings and reports requires a lot of duplicate effort.

様々な分野（マーケティング、製品サポート、管理職、トレーニング部門など）の人たちや代表者がプロジェクトの状況や進捗を知りたいと思っている。プロジェクトに貢献したいと思っていることもあるだろう。
複数のミーティングで報告やレポートを行うと、余計な作業が発生してしまう。

//Therefore
!!!!だから
//Replace some or all of the meetings and reports with the daily stand-up. Anyone who is directly involved in or wants to know about the day-to-day operation of the project should attend the single daily stand-up meeting.

すべての会議やレポートを朝会に置き換える。
プロジェクトに直接関わっている人、
プロジェクトの日々の業務を知りたいと思っている人は、
みんなで単一の朝会に参加すべきである。

!!!!ただし
//People not directly involved can disrupt the stand-up. This suggests that another forum would still be required for queries outside the scope of the stand-up.

直接関わってない人が参加すると、朝会が崩壊する可能性がある。
外部の人は朝会以外のところで疑問を投げかけるようにすべきだ。

//Too many people in the meeting may cause disruption and/or cause people to be uncomfortable in sharing information.  Typical daily stand-ups will have at most 10 people.  For larger stand-up groups, it is even more important to enforce Pigs and Chickens and Take it Offline in order to ensure all contributers can provide their input in a timely fashion.

人が多すぎると混乱を招き、情報共有の場としての居心地が悪くなってしまう。
通常、朝会のメンバは多くとも10人だろう。
それ以上のメンバがいる場合は、'''豚と鶏'''と'''オフラインでやる'''を課して、すべての貢献者が時間通りにインプットを得られるようにする。

//Not all forms of reporting will be, nor should be, covered by the stand-up format. For example, overall project progress would be better communicated with a Big Visible Chart [Jeffries, 2004] such as burn-down, burn-up, cumulative flow diagram, etc.

すべての報告会が朝会の形式で行われる必要はない。
むしろ、行われるべきではない。
たとえば、プロジェクトの進捗などは、バーンダウン・チャート、バーンアップ・チャート、累積フローダイアグラムなどの「巨大見える化チャート」[Jeffries, 2004]を使うべきだ。

//Pig and Chickens
!!!豚と鶏

//A chicken and a pig are together when the chicken says, "Let's start a restaurant!".The pig thinks it over and says, "What would we call this restaurant?".The chicken says, "Ham n' Eggs!".The pig says, "No thanks, I'd be committed, but you'd only be involved!".[Schwaber and Beedle, 2001]

""あるところに鶏と豚がいました。すると、鶏がこう言いました。「一緒にレストランを始めようよ！」豚はしばらく考えてこう答えました。「レストランのオススメメニューは何にするの？」鶏は言いました。「ハムエッグだよ！」豚はこう答えました。「そりゃないよ。君は卵を提供すればいいだけだけど、こっちは身を削るんだよ！」[Schwaber and Beedle, 2001]

//During a stand-up, interference by observers causes disruption in the communication within the team. Such interference may be in the form of interruptions or simply by participating and providing inappropriate information. If the interference is severe enough, the team members may not bother using the stand-up to communicate project issues and either create an alternate medium or not communicate at all.

朝会におけるオブザーバの妨害は、チーム内でのコミュニケーションに混乱を与える。
妨害とは、割り込みをかけてきたり、勝手に参加してわけわからん情報を提供したりするといったようなことだ。
そういった妨害が激しいと、チームメンバはわざわざ朝会でプロジェクトに関するやり取りをしたいとは思わないだろう。そうなると、朝会の代わりのものを作ってしまうか、まったくコミュニケーションをしなくなるか、いずれかになるだろう。

//Therefore
!!!!だから

//Institute a rule where only the “committed” participate and the “involved” are only allowed to observe. “Committed” means any people who contribute to the completion of the current iteration (i.e., developers, testers, immediate managers, etc.). In other words, people who can say something that directly affects the delivery of backlog items/features/stories. “Involved” are other people who may be interested in the status of the iteration but will not directly contribute to its completion. This could be other managers, sales staff, developers from other projects, etc. Any questions and issues that the “involved” have can be resolved after the meeting (Take it Offline) or communicated in a different medium.

「身を削った」人だけが参加でき、「ちょっと関係している」人は見ることしかできないルールを作るべきだ。
「身を削る」とは、現在のイテレーションの完遂に身をささげている人を指す（開発者、テスター、直属のマネージャなど）。
言い換えるなら、バックログアイテム／機能／ストーリーのデリバリーに直接影響する人たちのことだ。
「関係している」人はイテレーションの状況に関心はあっても、その完遂に直接貢献しない。たとえば、他の部門のマネージャや営業、他のプロジェクトの開発者などが含まれる。
「関係者」の質問や問題提起は、朝会のあとで処理する（'''オフラインでやる'''）か、他の手段でやり取りする。

//But
!!!!ただし

//Emphasizing too much distinction between the types of meeting attendees risks creating an adversarial relationship. It's not that observers are not allowed to communicate with the team; it is just that such communication is usually inappropriate during the daily stand-up.

参加者を過度に区別しすぎると、敵対関係を作りかねない。
オブザーバはチームとコミュニケートしてはいけないということではない。
これは、朝会でやるのは適切ではないということを意味しているだけだ。

//Attend by Proxy
!!!代理参加

//All Team members are required to attend. If for some reason a Team member can't attend in person, the absent member must either attend by telephone or by having another Team member report on their status. [Cochango, 2006]

""チームメンバは全員参加する必要がある。何らかの理由で本人が参加できない場合は、電話で参加するか、他のチームメンバに状況を報告してもらうようにする。[Cochango, 2006]

//If team members are seen to show up to the stand-up if they feel like it, there is a communication that commitment to the team is not important. However, there are situations when a team member cannot make the meeting for a very legitimate reason (e.g., personal issues, production support problem, etc.). In these case, we still want a way for the member to express commitment in the stand-up.

チームメンバが気分よさそうに朝会に参加してきたら、
チームへのコミットメントは重要ではないという印だ。
だが、チームメンバが正当な理由（個人的な理由、製品サポート問題）でミーティングに参加できない場合は、何らかの形でコミットメントを表明してもらいたい。

//Therefore
!!!!だから

//Team members that cannot attend the stand-up in person should find a way to Attend by Proxy. This can be in the form of a representative, calling in by telephone, or sending an e-mail summary before hand. Virtual attendance is still better than non-attendance.

チームメンバが朝会に参加できない場合は、'''代理参加'''できないか模索する。
代理人を使ったり、電話で参加したり、事前にEメールで通知したりという方法でもよい。
いずれにしても欠席よりはマシである。

//But
!!!!ただし

//If team members regularly can't make the stand-up, this may be an indication that the stand-up is being held at a time or location that is not convenient for the whole team. It may also mean that the member is not actually part of the team, whether due to allocation to other responsibilities or problems with team affinity. Of course, attendance by proxy is also inferior to actually attending the meeting in person.

チームメンバが定期的に朝会に参加できない場合は、
朝会の時間や場所がチームにとって不便だということかもしれない。
あるいは、そのメンバにはチームに関係のない責任や問題が割り当てられていて、実際にはチームの一員ではないということかもしれない。
もちろん、代理参加は本人が参加することよりも劣る。

//What do we talk about during the daily stand-up?
!朝会で何を話す？

//Yesterday Today Obstacles
!!昨日やったこと・今日やること・問題点

//Some people are talkative and tend to wander off into Story Telling. Some people want to engage in Problem Solving immediately after hearing a problem. Meetings that take too long tend to have low energy and participants not directly related to a long discussion will tend to be distracted.

おしゃべり好きな人は''講演会''を始めてしまう。
問題を聞いたらすぐに''問題解決''したがる人もいる。
朝会が長すぎるとエネルギーが低下し、議論に直接関係のない参加者たちは注意散漫になりがちだ。

//Therefore
!!!!だから

//Structure the contributions using the following format:

以下のフォーマットを利用して、貢献を体系化するとよい：

// What did I accomplish yesterday?
* 昨日やったことは？
//  What will I do today?
* 今日やることは？
// What obstacles are impeding my progress?
* 進捗を妨げている問題点は何？

//These are the minimum number of questions that satisfy the goals of daily stand-ups. Other topics of discussion (e.g., design discussions, gossip, etc.) should be deferred until after the meeting.

これらは朝会の目標を達成するための最小限の質問である。
他の議論（設計についての議論やゴシップなど）はあとでやるべきだ。

//Lasse Koskela proposed another form of these questions in order to emphasise that team members should not be Reporting to the Leader:

Losse Koskelaはチームメンバが''リーダーに報告''しないようにするために、
別のフォーマットを提案している。

//Each team member updates his peers:
//In turn, each team member provides his peers with 3 pieces of information:
//1.Things I have done since yesterday's meeting
//2. Things I am going to get done today
//3. Obstacles that I need someone to remove[Koskela, 2006]

""各チームメンバは仲間の情報を更新する：各メンバが順番に3つの情報を提供していく。
""# 昨日のミーティングから今までに行ったこと
""# 今日これからやろうとしていること
""# 除去すべき問題点
""[Koskela, 2006]

//If we reconsider this in light of a focus on commitment, the questions might be re-worded as follows:

コミットメントに着目すると、
この問いは以下のように言い換えられるだろう。

//* Was I able to fulfill what I committed to?
//* What am I comfortable committing to today?
//* What is obstructing me in meeting my commitments?

# コミットしたことを達成できたか？
# 今日コミットできることは何だろう？
# コミットメントを達成するために問題となるものは何だろう？

//I prefer this question form for it's clarity though the original form may be simpler.

オリジナルの問いのほうがシンプルだが、
私はこちらのフォーマットのほうが好みだ。

//But
!!!!ただし

//The structure is not as important as the information the answers to the questions provide. If the information is provided in a less structured protocol, it is not important to stick to a checklist. As teams mature, you may find you want to adjust the structure as well. For example, I tend to add a fourth question: “What might help or hinder others in meeting their commitments?”

質問のフォーマットは質問の答えによって得られる情報ほど重要ではない。
情報が形式化されていない場合、チェックリストにこだわっても仕方ない。
チームが成熟していくにつれ、フォーマットも調整していく必要があるだろう。
たとえば、私は4つ目の問いを設けている。

「コミットメントを達成するために役に立つこと（あるいは邪魔になること）は何だろうか？」

//Focus on the Backlog
!!バックログに注目

//Some people find it difficult to keep the project context in mind when they are contributing. Symptoms of this would be attendees <leaving the stand-up without a clear awareness of what remains for the iteration and release, and not much of a direct relationship with issues raised during the stand-up and the progress of the iteration and release>.

プロジェクトの状況を覚えておくのは難しいと感じる人もいるだろう。
これは、朝会から離れるときにイテレーションやリリースでやり残していること、朝会で挙がった直接関係しない問題点、イテレーションやリリースの進捗などを明確に認識していない参加者に見られる症状だ。

//It is much easier to understand project context with a visible reminder.

プロジェクトの状況を把握するには「見える化」ツールを使うのが簡単だ。

//Therefore
!!!!だから

//Remind stand-up attendees to Focus on the Backlog, where a backlog is simply a list of tasks and features to do. For example, maintain an information radiator [Cockburn, 2001] (aka Big Visible Chart) showing the iteration and release status and hold the stand-up near it. The display serves as an obvious reminder of what remains to be done.

朝会参加者に'''バックログに注目'''させること。
バックログとは、行うべきタスクや機能がリストになっているものだ。
たとえば、「情報ラジエーター（別名、巨大見える化ツール）」[Cockburn, 2001]を朝会の場所の傍に置いて、イテレーションやリリースの状況を示すようにする。
すると、これからやるべきことを明確に思い出させてくれる。

//But
!!!!ただし

//Focusing on the backlog may cause a tendency for the stand-up to focus on tasks rather than people. There are always important and subtle people issues that will not be discovered if there is too much focus on task status.

バックログに注目すると、どうしても人よりタスクに注目してしまう。
タスクの状況にばかり注目していると、重要かつ繊細な「人の問題」が見過ごされてしまう。

//Blockage Board
!!ブロッケージ・ボード(Blockage Board)

//Obstacles raised in the stand-up are not removed or otherwise addressed in a timely fashion.

朝会で起こった問題が除去されなかったり、逆にすぐに対処されたりする。

//Therefore
!!!!だから

//Post raised obstacles to a Blockage Board. This is a publicly visible whiteboard or chart that identifies raised obstacles and tracks the progress of their resolution. A Blockage Board can be updated outside of stand-ups and serves as a more immediate and perhaps less confronting way to initially raise obstacles. A common mistake is to not write large enough to allow people to read the blockages from a distance.

問題を'''ブロッケージ・ボード'''にポストする。
これはみんなに見えるホワイトボード（またはチャート）で、発生した問題の明確化と解決の進捗を追跡するために使用される。
ブロッケージ・ボードは、ちょっとした問題を書き留めるなど、朝会以外でも更新される。
よくやってしまうのが、遠くから読めないくらい小さな字を書いてしまうことだ。

//The simple act of writing an issue down and therefore explicitly acknowledging it is a very reliable way to reduce drawn out conversations.  So even if not everyone agrees that any particular item is an obstacle, it is worth simply writing it down for discussion after the meeting has ended.

問題を書きとめて明確に分かるようにしておくというこのシンプルな方法は、
冗長な会話を短縮するための非常に信頼のおける代物である。
みんなが問題だと思わなくても、とりあえず書いておいて、あとで話し合うことは重要である。

//When and where are the daily stand-ups held?
!朝会はいつどこでやる？

//Same Place, Same Time
!!同じ場所、同じ時間

//We want the team to have a sense of ownership of the stand-up. We also want interested parties to be able to drop by to observe a stand-up to avoid having to schedule yet another status meeting. This is difficult if any particular team member is allowed to force a delay or change of location of the stand-up.

チームには朝会を所有している感覚を持ってもらいたい。
また、別の状況報告会議をスケジュールに入れなければならないなんてことはイヤなので、利害関係者たちがちょっと立ち寄って見学できるようにしたい。
だが、誰かが朝会の時間を遅らせたり、場所を変更できるような権限を持っていると難しいだろう。

//Therefore
!!!!だから

//Run the daily stand-up at the Same Place, Same Time. Do not wait for stragglers, including architects and managers. The meeting is for the whole team, not for any particular individual. This is especially important if you Use the Stand-up to Start the Day.

朝会は'''同じ場所、同じ時間'''で開くこと。
ウロウロしてる人たち（アーキテクトやマネージャも含む）を待たせてはいけない。
朝会はチーム全体のものだ。
特定の個人のものではない。
'''朝会で一日を始める'''場合は、特に重要だ。

//Some stricter teams may impose a “fine” for latecomers. I tend to be wary of any kind of punishment mechanism and prefer discussion.

遅刻者に「罰金」を課している厳格なチームもある。
私はあまり罰を課さないほうがよいと思う。
それよりも話し合いのほうが好きだ。

//But
!!!!ただし

//Same Place, Same Time is not intended to be blindly inflexible. The important thing is for the start time to be mostly consistent and rescheduling to be rare. If rescheduling is required often, it may be an indication that the start time should change. If a particular location is inconvenient for everyone to get to, it's probably an indication the location should change.

'''同じ場所、同じ時間'''は柔軟性がないということではない。
重要なのは開始時間が一定していて、あまり変更されないということだ。
たびたび変更が必要であれば、開始時間を変更したほうがよいだろう。
参加しにくい場所で開かれているなら、場所を変更したほうがよいだろう。

//Use the Stand-up to Start The Day
!!朝会で一日を始める

//The daily stand-up meeting provides focus and awareness of outstanding issues. If it occurs late in the day, this focus and awareness is wasted.

朝会では未解決の問題に注目し、気づきを与える。
朝会が一日の終わりに開かれてしまうと、その注目や気づきが無駄になってしまう。

//Therefore
!!!!だから

//Use the Stand-up to Start the Day. With flexible work hours, not every team member will arrive at work at the same time. A common practice with “flex-time” is to use a set of core working hours. The start time should be at the start of these core working hours. Similarly, if team members need to arrive later for personal reasons (e.g., need to drop off kids at school), the start time should be set at a time so that everyone can attend.

'''朝会で一日を始める'''。
“フレックスタイム制”だと、みんな同じ時間にはやってこないだろうから、そういうときはコアタイムの開始時間を朝会の開始時間にする。
同様に、チームメンバが個人的な理由（子供を学校に送るなど）で遅れる場合、朝会の開始時刻はその時刻に合わせ、全員が参加できるようにすべきだ。

//But
!!!!ただし

//There is usually a tendency not to work on any project-related tasks until the stand-up. If the Stand-up Meeting Starts the Day... Late, this slack time may be significant. To some extent, this may simply be used as an opportunity to check e-mail, fill in timesheets, etc. but it may be worth investigating removing the stand-up as a “start of day” ritual by scheduling it later in the day.

これだと、朝会が始まるまでプロジェクトに関係するタスクをやらなくなってしまいがちだ。
''朝会で一日を始める……遅くに''だと、その余分な時間が致命的になる。
たいていは、Eメールをチェックしたりタイムシートを記入したりするのだろうが、
朝会が“一日を始める”儀式になっているのであれば、
もっと後ろにズラせないか調査してみることは無駄ではないだろう。

//Don't Use the Stand-up to Start the Day
!!「朝会で一日を始める」を使わない

//The stand-up tends to serve as the ritual to set focus for the day, especially if you Use The Stand-up to Start the Day. Because of this, team members tend not to work on features until the stand-up. When the meeting is not actually held first thing, this tendency may have a significant impact on productivity.

朝会は一日のフォーカスを設定する儀式の役割を担っている。
'''朝会で一日を始める'''場合は特にそうだ。
そのため、チームメンバは朝会まで機能に取り掛からないことが多い。
朝会が一日の始めに開かれないと、生産性に重大な影響をあたえかねない。

//Therefore
!!!!だから

//Don’t Use the Stand-up to Start the Day. Schedule the daily stand-up meeting far enough into the day that it will not be psychologically associated as starting the day.

'''「朝会で一日を始める」を使わない'''。
朝会を一日の開始だと感じないような時間に設定する。

//But
!!!!ただし

//If the daily meeting doesn't start the day, then it can no longer be used as a shared ritual to set team focus at the start the day. Depending on the team, this price may not be worth the apparent increase in efficiency.

その日のフォーカスを設定する共有儀式として朝会を使うことができない。
これでは効率化にならないというチームがでてくるかもしれない。

//When there are many project using stand-ups, it is possible that multiple stand-ups are occurring simultaneously. Observers interested in multiple projects may want to change stand-up times to allow them to be able attend. This is problematic since it risks the sense of ownership for the team if an observer can force a stand-up to adjust to his/her schedule. Nevertheless, this must also be a consideration when deciding when to have the daily stand-up.

//How do we keep up the energy level of the daily stand-up?
!朝会のエネルギーレベルを維持するにはどうすればよいか？

朝会を使うプロジェクトが多いと、複数の朝会を同時に行うことは不可能だ。
複数のプロジェクトに興味のあるオブザーバはすべての朝会に参加できるよう時間を調整したくなるだろう。
だがこれは問題である。
オブザーバのスケジュールに合わせて朝会の時間を調整してしまうと、チームの所有感がなくなってしまうからだ。
そうはいっても、朝会の時間を決定する際に考慮する必要はあるだろう。
朝会のエネルギーレベルを維持するにはどうすればよいだろうか？

//Huddle
!!集まる

//Volume of speech affects attentiveness as well as effectiveness of communication. Physical distance changes the level of volume required to communicate well. Some people don't speak loudly and don't feel comfortable doing so.

声の大きさは、コミュニケーションの効率もそうだが、記銘力に影響する。
物理的な距離によってコミュニケーションしやすい声の大きさが違ってくる。
大声を出さない人もいるし、そうすることを心地よいと思わない人もいる。

//Therefore
!!!!だから

//The stand-up should be more of a Huddle, than a meeting. If it's difficult to hear, bring everyone closer. Beyond allowing for a more relaxed speaking volume, being physically closer tends to cause participants to be more attentive on their own. Being able to stand physically closer is also an expression of greater trust within the team.

朝会は通常の会議よりも密着して'''集まる'''必要がある。
声が聞こえにくければ、もっと近くに集める。
リラックスできる声の大きさはあるにしても、
物理的に近づけばそれだけ人の話をよく聞けるようになる。
物理的な距離が小さいということは、チームへの信頼感が高いということの表れでもある。

//If the stand-up is a new thing, it's usually enough to use hand gestures to wave people in and say something to the effect of “Let's bring it in”. If the size of the circle has been established for a while, consider explaining the reasons for closing the circle before trying to shrink it.

朝会にまだ不慣れな場合は、手招きをしたり、「みんな集まって」と声に出したりするとよい。
円の大きさがすでに決まってしまっている場合は、
小さくしようと努力する前に、集まることの理由を説くとよいだろう。

//But
!!!!ただし

//The team must balance closeness with personal comfort zones. Even on a very trusting team, there is a point when people are just standing too close for comfort. Symptoms tend to be participants that are tense and/or fidgety.

チームは各自のコンフォート・ゾーン（快適に感じられる範囲）を考慮しなければならない。
信頼度の高いチームであっても、近づきすぎて快適に感じられない場所があるはずだ。
参加者が緊張したり、落ち着かなかったりするのが兆候だ。

//Stand Up
!!スタンドアップ

//Some people are talkative and tend to wander off into Story Telling. Some people want to engage in Problem Solving immediately after hearing a problem. Meetings that take too long tend to have low-energy and participants not directly related to a long discussion will tend to be distracted.

おしゃべり好きな人は''講演会''を始めてしまう。
問題を聞いたらすぐに''問題解決''したがる人もいる。
朝会が長すぎるとエネルギーが低下し、議論に直接関係のない参加者たちは注意散漫になりがちだ。

//Therefore
!!!!だから

//Require that all attendees Stand Up. Use standing up to link physical with mental readiness. Physical discomfort will also remind attendees when a meeting is taking too long. A simple way to encourage this is to simply hold the meeting where there are no chairs.

参加者は全員'''スタンドアップ'''する必要がある。
スタンドアップによって、肉体と精神的な準備とを結びつけるのだ。
ミーティングが長くなると、肉体的な不快感が参加者たちを襲う。
手っ取り早くこれを強制するには、椅子を取っ払ってしまうことだ。

//But
!!!!ただし

//Standing up tends to cause meetings to shorten, but does not guarantee that they will shorten to an optimal length. People may learn to cope with the discomfort instead of taking a more appropriate response. Also if the meetings are not taking too long nor wandering off-topic, standing up is an unnecessary ritual.

スタンドアップは朝会の時間を短くする。
しかし、最適な長さにするわけではない。
その場に応じた適切な対処よりも、不快感への対処を優先したくかもしれない。
また、時間が短かったり、話が脱線しない場合は、スタンドアップする必要はないだろう。

//Fifteen Minutes or Less
!!15分以内

//Most people will wander mentally when they are in long meetings. A long, droning meeting is a horrible, energy-draining way to start the day. A specific number helps remind us when to consider adjustment to reduce the time of the meeting.

朝会が長すぎると、心がさまよい始める。
長く、単調な朝会で一日を始めるのはひどいものだし、エネルギーを吸い取られてしまう。
朝会時間を決めておくと、調整しやすいだろう。

//Therefore
!!!!だから

//Keep the daily stand-ups to Fifteen Minutes or Less. As a general rule, after fifteen minutes, the average person's mind is going to wander which doesn't help with setting focus.

朝会は'''15分以内'''にする。
一般に15分経つと心がさまよい始めるそうだ。
そうなると、フォーカスの設定の邪魔になる。

//But
!!!!ただし

//Fifteen minutes may even be too long for smaller teams. Because of the mind-wandering effect, even for larger teams, fifteen minutes is a good limit.  Also, it is also possible to have a meeting that is too short where on ending, the attendees still have no idea what's going on nor who to talk to in order to find out.

15分も小さなチームにとっては長すぎるかもしれない。
もっと大きなチームの場合でも、やはり15分経つと心がさまよい始めるので、15分がちょうどよい制限になるだろう。
朝会の終わりに近づいてから時間が足りなくなってしまい、
チームの状況を把握できなかったり、問題を解決するために誰に話しかければよいのか分からなかったりすることもあるだろう。

//Signal the End
!!終了の合図

//After the last person has spoken, the team may not immediately realise that the meeting is over. The gradual realisation that it's time to walk away doesn't end the meeting on a high note and may contribute to Low Energy.

最後の人が話し終えても、朝会が終了かどうかは分からない。
じょじょに「あ、終わったんだ」と思ってバラバラに解散してしまうと、
高エネルギーの朝会にならないし、逆に低エネルギーになってしまうかもしれない。

//Therefore
!!!!だから

//Signal the End of the stand-up with a throwaway phrase (e.g., "Well, enjoy your lunch everyone." [Gibbs, 2006, Signal]) or some other action.

キマリ文句を使って'''終了の合図'''を示そう。
たとえば、「楽しいランチを！」[Gibbs, 2006, Signal]と言ってみたり、決まった行動をとったりするなどだ。

//Time the Meetings
!!時間を計測

//It is difficult to qualitatively judge whether a stand-up is taking too long, especially if it only gradually increases in length.

定性的に朝会が長かったかどうかを判断するのは難しい。
少しずつ時間が長くなっている場合は特にそうだ。

//Therefore
!!!!だから

//Time the Meetings and publish the results. Most of the time, attendees just don't realise the impact of Story Telling, not being prepared to Take It Offline, or not preparing have on how long the meeting will take. Make it quantifiable.

朝会の'''時間を計測'''しよう。
参加者は''講演会''で時間がつぶれたり、'''オフラインでやる'''ことを前提にしないで話し込んだり、朝会がどれだけ時間がかかるか見積もらないことの影響を理解していない。そこはきちんと定量化しよう。

//But
!!!!ただし

//As with all measures, timing the meetings shouldn't be introduced unless there is an actual goal to accomplish due to a problem with energy levels.  Once the goal is accomplished, the measurement should be dropped. Measuring for no particular reason leads to suspicion and metrics apathy.

エネルギーレベルの問題が原因でなんとか目標を達成しなければならないとき以外は、時間を計測しないほうがよい。
目標が達成できれば、計測は中断しよう。
明確な理由もなく計測すると、疑惑や計測への無関心を助長するだけだ。

//Take It Offline
!!オフラインでやる

//Some people want to engage in Problem Solving immediately after hearing a problem. Meetings that take too long tend to have low-energy and participants not directly related to a long discussion will tend to be distracted. It is still important to acknowledge that further discussion will be required to solve the raised problem. Some people may find it uncomfortable to enforce the structure of the stand-up by interrupting.

問題を聞いたらすぐに''問題解決''したがる人がいる。
朝会が長すぎるとエネルギーが低下し、議論に直接関係のない参加者たちは注意散漫になりがちだ。
議論がさらに必要だということを認めることも大切だ。
なかには朝会の仕組みがくずれるのを快く思わない人たちもいるからだ。

//Therefore
!!!!だから

//Use a simple and consistent phrase like “Take it offline” as a reminder that such discussions should take place outside of the daily stand-up. If the discussion was Socialising, nothing more is required. If the discussion was Problem Solving, the facilitator (and eventually just the team) should ensure that the right people are nominated or sign up to deal with the issue later.

「あとで'''オフラインでやる'''よ」みたいなフレーズを使って、朝会が終わったあとに議論するよう仕向けよう。
仲良しこよしの話だったら、続きは必要ない。
''問題解決''の話だったら、ファシリテータ（最終的にはチーム）が、適当な人にサインアップしてもらって、あとで処理してもらうようにする。

//But
!!!!ただし

//There is a difference between Problem Solving and a clarifying question. Information that is not understood is not useful. The extent upon which clarifying questions are allowed should vary depending on how large the team is and whether it will impact Fifteen Minutes or Less.

''問題解決''と論点の明確化は違う。
理解されていない情報は役に立たない。
どれくらいまで明確にすればよいかは、チームの大きさや'''15分以内'''への影響によって違ってくる。

//How do we encourage self-managing daily stand-ups?
!自己組織型朝会にする方法は？

//Last Arrival Speaks First
!!最後に来たひとから話す

//During a stand-up, attendees need to know who is supposed to speak first. Having the facilitator decide who should speak first is a subtle though definite force against self-organisation. The team should know without intervention who speaks first.

朝会では、参加者は最初に話す人を知る必要がある。
ファシリテータが最初に話す人を決めてしまうと、自己組織化の考えに反してしまう。
何もせずに最初に話す人が誰なのか分かるようにすべきだ。

//Therefore
!!!!だから

//Agree that the Last Arrival Speaks First. This is a simple rule that also has the added benefit of encouraging people to be punctual about showing up for the stand-up.

'''最後に来たひとから話す'''とよい。
このシンプルなルールには、時間通りに参加するようになるという付加的なメリットもある。

//Round Robin
!!ラウンドロビン

//During a stand-up, attendees need to know who is supposed to speak next. Having a facilitator decide who speaks next is a subtle though definite force against self-organisation. The team should know without intervention who speaks next.

朝会では、参加者は次に話す人を知る必要がある。
ファシリテータが次に話す人を決めてしまうと、自己組織化の考えに反してしまう。
何もせずに次に話す人が誰なのか分かるようにすべきだ。

//Therefore
!!!!だから

//Use a simple predetermined rule like a Round Robin to determine who should go next. It doesn't matter if it is clockwise or counter-clockwise. What does matter is that the team runs the meeting, not the facilitator or manager.

'''ラウンドロビン'''のようなシンプルなルールを使って決めるとよい。
時計回りでもいいし、反時計回りでもいい。
ファシリテータやマネージャではなく、チームが朝会を運営できればそれでよい。

//Pass the Token
!!トークンを渡す

//With simple, predictable ordering mechanisms (e.g., Round Robin), it is very easy for participants to ignore other speakers until it is closer to their turn. There may be a tendency to think of other things rather than pay attention to what others are saying.

'''ラウンドロビン'''のようなシンプルで予測可能な順番メカニズムを使うと、
自分の順番になるまでスピーカーのことを無視することができてしまう。
他の人たちが何を言っているかに注意を払わずに、
何か他のことを考えているのだろう。

//Therefore
!!!!だから

//Introduce an unpredictable ordering mechanism, like tossing a speaking token (e.g., a ball) to determine who should speak next. Having a speaking token also simplifies deciding who speaks first as it will be the person who happens to have retrieved the token (or the first person s/he tosses the token to).

予期できない順番メカニズムを導入するとよい。
スピーキングトークン（ボールなど）を使って次に話す人を決めるのだ。
これで最初に話す人も簡単に決まる。
トークンを取り出した人（あるいはその人がボールを渡した人）が最初に話す人だ。

//Tossing something around introduces a bit of fun to the daily stand-up ritual and thus serves as a good infection mechanism for other observing teams.

何かを投げると、朝会がちょっと楽しくなる。
またこれは、他のチームへの（いい意味での）感染メカニズムにもなる。

// I first learned of this pattern on a project I was on with Simon Stewart. We used a small juggling ball but almost anything can be used as token. Other teams have used rugby balls [Gibbs, 2006, Rugby] or even plush toys [Mar, 2006].

私が初めてこのパターンを知ったのは、Simon Stewartとのプロジェクトだった。
私たちは小さなジャグリングのボールを使ったが、トークンは何でもいい。
ラグビーボールや[Gibbs, 2006, Rugby]
ビロードのおもちゃを使うチーム[Mar, 2006]もあるようだ。

//But
!!!!ただし

//With larger teams, it may become difficult to remember who has already spoken. In those cases, it may be easier to stick to simpler mechanisms like Round Robin. Depending on the culture of the organisation or even team, tossing a ball around may also be seen as unprofessional and would create an unnecessary negative perception of the underlying ritual.

チームが大きいと、誰が話してないか分からなくなることもある。
その場合は'''ラウンドロビン'''のようなシンプルなメカニズムのほうがよいだろう。
組織やチームの文化によっては、ボールを投げるという行為はプロフェッショナルではないと見なされることもある。そうなると、朝会に対しても不要なネガティブの認識をされてしまう。

//Take a Card
!!カードを引く

//During a stand-up, attendees need to know who is supposed to speak first and after that, who is supposed to speak next. Having a facilitator decide who should speak is a subtle though definite force against self-organisation. The team is not keen on Pass the Token because they typically have coffee cups in their hands.

朝会では、参加者は最初に話す人、それから次に話す人を知る必要がある。
ファシリテータが最初に話す人を決めてしまうと、自己組織化の考えに反してしまう。
'''トークンを渡す'''ことはできない。
手にはコーヒーカップを持っているからだ。

//Therefore
!!!!だから

//Have team member Take a Card that has a number determining the order in which they will speak [Russell, 2006].

チームメンバが'''カードを引く'''ことで話す順番を決める[Russell, 2006]。

//Rotate the Facilitator
!!ファシリテータを持ち回りにする

//Team members are Reporting to the Leader, that is, they're only talking to the meeting facilitator instead of each other. Only the meeting facilitator is raising and addressing process issues related to the stand-up. We want the team to take ownership of the stand-up and this requires removing any dependence on a single facilitator.

チームメンバが''リーダーに報告''している。
つまり、他のメンバではなく、朝会のファシリテータにだけ話しかけているのだ。
ファシリテータは朝会に関するプロセスの問題について取り上げたり指し示したりするだけだ。
朝会の所有権はチームに持ってもらいたい。
そのためには、一人のファシリテータに頼らないようにする必要がある。

//Therefore
!!!!だから

//Rotate the Facilitator. Rotate assignment of a role responsible for ensuring people attend the stand-up and stick to the agreed upon rules.

'''ファシリテータを持ち回りにする'''。
メンバを確実に出席させ、合意のとれたルールを遵守する責任を持つ役割を持ち回りにする。


//But
!!!!ただし

//Teams that are not experienced with stand-ups benefit greatly from having a coach experienced in the process. It is more that the team should be weaned into taking greater control of the stand-up. At some point, no explicit facilitator should be required at all.

経験の少ないチームは経験豊かなコーチから多くのことを得るだろう。
だが、チームは乳離れをして、朝会を自分達でコントロールすべきだ。
その時点ではまだファシリテータは必要ない。

//Break Eye Contact
!!アイコンタクトをやめる

//Team members are Reporting to the Leader, that is, they're only talking to the meeting facilitator instead of each other. We want the team to take ownership of the stand-up and this requires removing any dependence on a single facilitator.

チームメンバが''リーダーに報告''している。つまり、他のメンバではなく、朝会のファシリテータにだけ話しかけているのだ。

//Therefore
!!!!だから

//The facilitator should Break Eye Contact [Nicolette, 2006] as a subtle way of reminding the speaker that s/he should be addressing the team, not just one person. One way to do this is to move around [Shimp, 2006] so that the current speaker can't see the facilitator.

ファシリテータは'''アイコンタクトをやめる'''べきだ[Nicolette, 2006]。
これは、個人ではなくチームとして取り組むことをスピーカーに思い出させるちょっとした方法だ。
そのためのひとつの方法として、辺りを歩き回って[Shimp, 2006]、スピーカーがファシリテータを見れないようにするというのがある。

//Smells are about when things are going wrong
!臭いがしたら、それ間違ってるから

//I endured regular stand-up meetings for three years. What made the meetings most painful was my boss (I'll call him Wally). His main reason for the stand-up meeting was not to increase efficiency or embrace XP as much as it was to shorten human interaction beyond anything directly related to the work product. ... For Wally, however, the stand-up meeting (like the 7 a.m. Monday meeting and the 5 p.m. Friday meeting) was a loyalty test designed to reinforce the employer-employee relationship. [LaPlante, 2003]

""定例の朝会を3年間続けている。朝会をツマんなくしてるのは上司だ（ここではウォリーと呼ぶ）。彼の主な目的は、成果物に直接関係しない人間のやり取りを少なくして、効率を上げたりXPを採用したり……ということじゃあない。ウォーリーにとって朝会は（月曜7時からの朝礼や、金曜17時からの会議なんかと同じで）雇用者と被雇用者との関係をより強固にするための、忠誠心の試金石でしかないのだ[LaPlante, 2003]。

//The feel of an effective stand-up is about how you know when things are going right. Smells are about how you know when things are going wrong. It is important to note that even if you have no smells, this does not mean the stand-up is going right. It just means that it doesn't “stink”.

効果的な朝会とは、うまくいってることが分かる状態のことだ。
臭いとは、うまくいってないことが分かる状態のことだ。
臭いに気づかないからといって、必ずしも朝会がうまくいってるわけではない。
臭いが「悪臭」じゃないというだけのことだ。

//Most of the following smells are linked back to the previous patterns. For those that are not, the underlying issues tend to be more subtle or outside the scope of the daily stand-up, and people will have to come up with their own solutions.

以下の臭いは前述のパターンとつながっている。
パターンとつながっていないものは、根底の問題が微妙なものだったり、朝会の範囲外のものだったりするので、自分達のソリューションを探す必要があるだろう。

//Reporting to the Leader
!!×リーダーに報告

//Team members should address the Team. This is not a "Reporting to the ScrumMaster" meeting. [Cochango, 2006]

""チームメンバはチームに向かうべきだ。これは「スクラムマスターへの報告」会ではない。[Cochango, 2006]

//Team members are facing and talking to the manager or meeting facilitator instead of to the team. This indicates that the daily stand-up is for the manager/facilitator when it is actually supposed to be for the team. There are various ways to break this dependence: Rotate the Facilitator, Break Eye Contact, change the form of Yesterday Today Obstacles, use Pass the Token, etc.

チームメンバがチームではなくマネージャやファシリテータに向かって話すこと。
これだと、本来チームのためであるべき朝会がマネージャやファシリテータのものであるかのようになってしまう。この従属関係を断ち切る方法がいくつかある。'''ファシリテータを持ち回りにする'''、'''アイコンタクトをしない'''、'''昨日やったこと・今日やること・問題点'''の形を変える、'''トークンを渡す'''などだ。

//People are Late
!!×遅刻

//This is directly addressed by Same Place, Same Time, but as mentioned may indicate that the stand-up is being held at the wrong time or at the wrong place.

これは'''同じ場所、同じ時間'''に直接、関係している。
遅刻があるのは、先ほども述べたように、朝会を間違った場所、間違った時間に開いている可能性がある。

//Stand-up Meeting Starts the Day... Late
!!×朝会で一日を始める……遅くに

//Because the stand-up is seen to start the work day, no work is done before the stand-up. Depending on how late in the morning the stand-up is, this can have a significant impact on available working hours. This leads to Don't Use the Stand-up to Start the Day.

朝会は一日の始まりなので、朝会の前に仕事を行うことがない。
朝が遅く始まると、稼動できる労働時間に重大な影響を与えかねない。
これは'''「朝会で一日を始める」を使わない'''につながる。

//Observers Interrupt
!!×オブザーバが邪魔をする

//Regular interruption by observers is very disruptive to the delivery team by challenging the premise that the daily stand-up is primarily for the delivery team. Interruption also threatens Fifteen Minutes or Less. Enforce Pigs and Chickens.

オブザーバによって度々邪魔されると、
朝会は納品チームのものであるという前提がゆるぎ、
混乱をきたしてしまう。
邪魔されると'''15分以内'''に収まらない。
この場合、'''豚と鶏'''を発動する。

//Socialising
!!×仲良しこよし

//One of the goals of the stand-up is to increase team socialisation. However, the daily stand-up is not intended for team members to “catch up” with each other on non project-related matters. It's difficult to provide examples of this since the degree to which socialising passes from team-building to distracting varies from team to team. The threshold can be detected from the behaviours of participants not directly involved in the socialisation. If their energy levels remain high, then it's probably just team-building; if their energy levels drop, then Take It Offline and perhaps provide another forum to act as a Water Cooler [OrgPatternsWaterCooler].

朝会の目的のひとつは、チームの社会化である。
だが、朝会はプロジェクトに関係しないことについて「情報交換」する場ではない。
どこまでがチーム形成で、どこから無駄話なのかはチームによって違うので、例を挙げるのは難しい。
だが、「仲良しこよし」の範囲外にいる参加者たちの振る舞いから検知することができる。
彼らのエネルギーが高いままであれば、それはチーム作りだ。
彼らのエネルギーが下がったら、'''オフラインでやる'''か、'''ウォータークーラー'''[OrgPatternsWaterCooler]{{fn('訳注：ここには載っていないが、話したいだけ話して、みたいな意味？')}}をする別の会を提供する。

//I Can't Remember
!!×覚えてない

//“What did I do yesterday?... I can't remember... What am I doing today?... I dunno...”

「昨日やったこと？……覚えてない。今日やること？……えーと」

//Daily stand-ups are meetings. Like all meetings, participants have a responsibility to prepare. In this case, all participants are responsible for knowing the answers to Yesterday Obstacles Today. There can be more leniency when it comes to not knowing what will done today since sometimes there is actually nothing specific planned except picking the next highest priority task off the stack.

朝会はミーティングである。
ミーティングに参加する者は準備を行う責任がある。
朝会では参加者すべてが'''昨日やったこと・今日やること・問題点'''について答える責任がある。
今日やることが決まってなくて、優先順位の高いものからタスクを選ぶ場合は、答えられなくても仕方ない。

//Lack of preparation causes slower pace which causes lower energy. It also risks failing Fifteen Minutes or Less, which further reduces energy levels.

準備していないとペースが落ちて、エネルギーも低下する。
'''15分以内'''にならない可能性もあるし、そうなれば、さらにエネルギーが低下する。

//Story Telling
!!×講演会

//Instead of providing a brief description of an issue, the participant provides enough details and context to cause others to tune out. The general rule is to identify obstacles during the stand-up and discuss the details after the stand-up. This can be summarised as “Tell the headline, not the whole story” or Take it Offline.

十分すぎるくらいの詳細や背景を説明してしまうと、
他の人は飽きてしまう。
朝会では問題を明確化することを第一のルールとすること。
詳細については朝会の後で行うこと。
まとめると「見出しを伝えよ。全文は要らない」ということだ。
あるいは、'''オフラインでやる'''こと。

//Problem Solving
!!×問題解決

//The key to keeping the stand-ups Fifteen Minutes or Less is to limit the Story Telling and not succumb to Problem Solving during the meeting. Take it Offline.

'''15分以内'''に終わるには''講演会''に制限をかけること。
それから朝会で''問題解決''をしないことである。
それらは'''オフラインでやる'''こと。

//Low Energy
!!×元気がない

//Could indicate a slow-down of pace due to Story Telling, Problem Solving, etc. In which case Take it Offline. Could be simply a matter of team size. Could be the time of day which suggests trying the alternative of Use the Stand-up to Start the Day and Don't Use the Stand-up to Start the Day.

元気がないことは、''講演会''、''問題解決''などによってペースが落ちたことの表れである。
この場合、'''オフラインでやる'''こと。
あるいは、単にチームサイズの問題かもしれない。
あるいは、'''朝会で一日を始める'''または'''「朝会で一日で始める」を使わない'''について考える時なのかもしれない。

//Obstacles are not Raised
!!×問題が起こらない

//There may be several reasons for obstacles not being raised. Not remembering, high pain threshold, lack of trust in raising issues (because Obstacles are not Removed, Observers Interrupt with blaming), etc. Depending on the context, just introducing Yesterday Obstacles Today and enforcing Pigs and Chickens may not be enough. Introducing a Blockage Board may provide a less confronting medium to raise obstacles. Retrospectives [Kerth, 2001] are an effective way of discovering the underlying reason why Obstacles are not Raised.

問題が起こらないのにはいくつかの理由がある。
覚えてない、閾値が高すぎる、問題を挙げることへの信頼が欠けている（''問題が解決しない''、''オブザーバが邪魔をする''などが理由）。
コンテキストに依存するため、
'''昨日やったこと・今日やること・問題点'''を導入したり、
'''豚と鶏'''を強化したりするだけでは十分ではない。
'''ブロッケージ・ボード'''を導入すると、あまり対立関係が起こらずに問題を挙げることができるだろう。
ふりかえり（レトロスペクティブ）[Kerth, 2001]は、''問題が挙がらない''根本的な理由を見つけ出す効果的な方法だ。

//Obstacles are not Removed
!!×問題が解決しない

//With the exception of a blaming environment, the surest way to stop people from raising obstacles is to not remove them. To make it difficult to forget and/or ignore obstacles, track them publicly with a Blockage Board.

罰を課すような環境だと話は別だが、
問題が起こらなくするには問題を削除しないことである。
問題を忘れたり無視したりできないようにするには、
'''ブロッケージ・ボード'''で公に追跡する。

//Obstacles are Only Raised in the Stand-up
!!×朝会だけで問題が起こる

//Stand-ups act as a safety net. At worst, an obstacle will be communicated to the greater team within one day. However, doing stand-ups is not intended to stop issues from being raised and resolved during the day. Introducing an alternative medium to raise obstacles such as a Blockage Board may help. If not, underlying reasons may be discovered using retrospectives.

朝会はセーフティネットの役割を果たす。
最悪1日あれば、問題はチーム全体に伝わる。
だが、朝会は問題を挙げるためのものではない。
問題を1日で解決するというものでもない。
問題を挙げるには'''ブロッケージ・ボード'''を使うとよいだろう。
または、根本的な原因がふりかえりの中で判明するかもしれない。

//If the feel is good, you're probably okay
!雰囲気がよければ、たぶんOK

//Hopefully this paper has provided some more insight into the subtle details of effective stand-up practices and also common problem indicators. It should be clear that a daily stand-up is not just standing up together every day.

できればもう少し、効果的な朝会のプラクティスの詳細に関する見解やよくある問題への指針を提供したいところだが、朝会が毎日一緒に立つだけじゃないことは明らだ。

// It is important not to be too concerned about not having every pattern or even having some of the smells. If all the goals are satisfied and the “feel” is good, you're probably okay. After all, it's really just standing up together every day.

大切なのは、パターンを全てやっていないとか、臭いがまだ残っているとか、あまり意識しすぎないことである。
目標が達成でき、「雰囲気」がよければ、たぶんOKだ。
それなら、本当の意味で、一緒にデイリースタンドアップしていると言える。

//What are other people saying?
!他の人は何と言っているか？

//As far as I know, there are no other low-level patterns papers on daily stand-ups though the core ideas exist in the referenced papers. There are a couple online articles on daily stand-up anti-patterns or smells ([Miller, 2003], [Cohn, 2003]) though both are limited in scope.

コアとなるアイデアは参考文献に載っていたが、
私が知っている限り、その他のローレベル・パターンについて書かれた論文はなかった。
朝会のアンチパターンや臭いについては、
どちらも限定されたスコープではあるが、
いくつかのオンライン記事が存在している（[Miller, 2003]、[Cohn, 2003]）。

//Acknowledgements
!謝辞

//I'd like to thank Ivan Moore and Alan Francis for helping me determine what I wanted to express overall, Owen Rogers for some of the patterns, Susan Newton for reminding me that stand-ups should be supportive, James Ross and Rebecca Parsons for some editing, Brian Marick for his shepherding, all the people at my PLoP 2004 writer's workshop (Dick Gabriel, Linda Rising, James Coplien, Lise Hvatum, Cecilia and Terje Haskins, Danny Dig, David Hecksel, and Ali Arsanjani), Bill Wake for his detailed comments, all the people at my PLoP 2006 writer's workshop (Ralph Johnson, Pau Arumi, David Garcia, Leon Welicki, Djamal Bellebia, Dirk Riehle, Hesham Saadawi, and Paddy Fagan), Karthik Chandrasekarial for the stand-up picture, and everyone I've ever attended a daily stand-up with.

Ivan MooreとAlan Francisには、私が伝えたいと思っていたことを明確にする手助けをしていただいた。
Owen Rogersには、いくつかのパターンを手伝ってもらった。
Susan Newtonは、朝会には「支えてくれる感」がなければならないことを気づかせてくれた。
James RossとRebecca Parsonsには、編集を手伝ってもらった。
Brian Marickには、指導をしていただいた。
PLoP 2004のライターワークショップのメンバ（Dick Gabriel, Linda Rising, James Coplien, Lise Hvatum, Cecilia and Terje Haskins, Danny Dig, David Hecksel, and Ali Arsanjani）にも感謝したい。
Bill Wakeには、詳細なコメントをいただいた。
PLoP 2006のライターワークショップのメンバ (Ralph Johnson, Pau Arumi, David Garcia, Leon Welicki, Djamal Bellebia, Dirk Riehle, Hesham Saadawi, and Paddy Fagan)にも感謝したい。
Karthik Chandrasekarialには、朝会の写真を提供していただいた。
最後に、私がこれまでに参加した朝会のメンバみんなに感謝したい。

//References
!参考
* [Anderson, 2002] Anderson, D., “Morning Roll Call”, The Coad Letter: Process, Issue 101 (August 2002), URL: http://bdn.borland.com/article/0,1410,29686,00.html
* [Beedle et al., 2000] Beedle, M. et al., “SCRUM: An Extension Pattern Language for Hyperproductive Software Development”, Pattern Languages of Program Design 4, N. Harrison, B. Foote, and H. Rohnert, eds., Addison-Wesley, 2000, pp. 637-651
* [Cockburn, 2001] Cockburn, A., Agile Software Development, Addison-Wesley, 2001
* [Cochango, 2006] “Daily Scrum Meeting”, URL: http://scrumforteamsystem.com/ProcessGuidance/Process/DailyScrumMeeting.html
* [Cohn, 2003] Cohn, M., “Toward a Catalog of Scrum Smells”, October 2003, URL: http://www.mountaingoatsoftware.com/articles/ScrumSmells.pdf
* [Gibbs, 2006, Leaderless] Gibbs, E., “Leaderless Standups”, 10 August 2006, URL: http://edgibbs.com/2006/08/10/leaderless-standups/
* [Gibbs, 2006, Rugby] Gibbs, E., “Passing A Rugby Ball in Standups”, 14 August, 2006, URL: http://edgibbs.com/2006/08/14/passing-a-rugby-ball-in-standups/
* [Gibbs, 2006, Signal] Gibbs, E., “Signaling the End of a Standup”, 7 August, 2006, URL: http://edgibbs.com/2006/08/07/signaling-the-end-of-a-standup/
* [Jeffries, 2004] Jeffries, R., “Big Visible Charts”, March 2004, URL: http://www.xprogramming.com/xpmag/BigVisibleCharts.htm
* [Kerth, 2001] Kerth, N., Project Retrospectives, Dorset House, 2001
* [Koskela, 2006] Koskela, L., “On Scrum and the curse of the three questions”, May 7, 2006, URL: http://radio.javaranch.com/lasse/2006/05/07/1147034972559.html
* [LaPlante, 2003] Laplante, Phillip A., “Stand and Deliver: Why I Hate Stand-up Meetings”, ACM Queue, 1, 7 (October 2003)
* [Mar, 2006] Mar, K., “Controling the flow of daily meetings with a team mascot”, 13 May 2006, URL: http://kanemar.wordpress.com/2006/05/13/controling-the-flow-of-daily-meetings-with-a-team-mascot/
* [Miller, 2003] Miller, C., “Stand-up Meeting Antipatterns”, 19 November 2003, URL: http://fishbowl.pastiche.org/2003/11/19/standup_meeting_antipatterns
* [Nicolette, 2006] Nicollete, D., “Re: On Scrum and the curse of the three questions”, May 8, 2006, URL: http://radio.javaranch.com/lasse/2006/05/07/1147034972559.html#comment1147110635098
* [Rising, 2002] Rising, L., “Agile Meetings”, STQE, May/June 2002, pp. 42-46
* [Rising and Janoff, 2000] Rising, L. and N. Janoff, “The Scrum Software Development Process for Small Teams”, IEEE Software, July/August 2000, pp. 2-8
* [Russell, 2006] Russell, R., “The Daily Stand Up, Part 2”, 30 May 2006, URL: http://www.robbyonrails.com/articles/2006/05/29/the-daily-stand-up-part-2
* [OrgPatternsStandUp] “Stand Up Meeting”, Org Patterns, 7 October 2003, URL: http://www.easycomp.org/cgi-bin/OrgPatterns?StandUpMeeting
* [OrgPatternsWaterCooler] “The Water Cooler”, Org Patterns, 18 November 2003, URL: http://www.easycomp.org/cgi-bin/OrgPatterns?TheWaterCooler
* [Schwaber and Beedle, 2001] Schwaber, K. and M. Beedle. (2001) Agile Software Development with Scrum, Prentice-Hall
* [Shimp, 2006] Shimp, D., “An Overview of ScrumMaster ? Part 2”, July 18, 2006, URL: http://www.netobjectives.com/podcasts/last20060719_podcasts.mp3
* [Wells, 1999] Wells, D., “Daily Stand Up Meeting”, Extreme Programming: A gentle introduction., 1999, URL: http://www.extremeprogramming.org/rules/standupmeeting.html 

----

翻訳：kdmsnr

* 2007/04/02: 推敲終了
* 2007/04/01：初出（訳しっぱなし）
