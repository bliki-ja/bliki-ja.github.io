----
以下の文章は、Martin Fowlerによる[[Software and Obama's Victory|http://martinfowler.com/articles/obamaSoftware.html]]の日本語訳である。
----

//Barack Obama's victory in the 2008 Presidential campaign included a significant contribution from software - particularly using the Internet. But perhaps the most interesting aspect was the interplay between advances in software and developments in the human organization of the campaign.

""2008年の大統領選挙におけるバラク・オバマの勝利の裏には、ソフトウェアの重要な貢献があった——インターネットの利用である。しかし、最も興味深いのは、ソフトウェアの進歩とオバマ陣営の組織の発達との相互作用だった。

//Last significant update: 30 Jul 09
最終更新日：2009/7/30

//This article is based on the keynote that Zack Exley and I gave at QCon London 2008

本稿は、ザック・エクスレイと私のQCon London 2009での[[基調講演|http://www.infoq.com/presentations/fowlere-xley-democratic-political-technology]]を基にしている。

//Contents
'''目次'''
{{toc_here}}

----

//Were it not for the Internet, Barack Obama would not be president.
//-- Arianna Huffington

""インターネットがなければ、バラク・オバマは大統領ではなかったでしょう。{{br}}
""--[[Arianna Huffington|http://bits.blogs.nytimes.com/2008/11/07/how-obamas-internet-campaign-changed-politics]]

//It's perhaps rather natural for those who live in the internet to claim that the internet was the reason for Barack Obama's victory in the 2008 presidential elections. Although I'd doubt that the internet was the decisive factor in the presidential contest with John McCain, it certainly was a big help. And the internet was probably a necessary factor in his primary win over Hilary Clinton, who was considered a sure-thing front-runner before the primaries started in earnest.

2008年の大統領選挙にバラク・オバマが勝利したのはインターネットのおかげだ。
インターネットに暮らしている人たちがそう主張するのはごく自然なことだろう。
ジョン・マケインとの選挙戦においてインターネットが決定的な勝利要因だったかどうかは分からないが、大きな力となっていたことは確かだ。
また、ヒラリー・クリントンとの予備選においても、彼女が最有力候補だったが、インターネットがおそらくオバマの勝利要因となった。

//While we can't claim any big part in Obama's internet triumph, a number of ThoughtWorkers were involved in writing software for the Obama campaign [1]. I popped in occasionally to see how things were going along and got quite interested in the way software was being used in the political process. I was keen to see more said about this and at QCon London in 2009 my colleague Zack Exley and I gave a keynote about the role of software in Obama's victory.

オバマがインターネットを利用して成功したのは我々のおかげだと言うつもりはないが、多くのThoughtWorkerがオバマキャンペーンのソフトウェア開発に携わった[1]。
時折、私は現場に立ち寄ってみて、どのように物事が進められているのかを確認し、政治プロセスにおけるソフトウェアの利用にとても興味を持った。それから、こうした話に俄然興味を持ち始め、同僚のザック・エクスレイと2009年にQCon Londonで「オバマの勝利におけるソフトウェアの役割」という基調講演を行った。

//As you read this, be aware that it presents a somewhat limited perspective. The source of information for this article are my colleagues who worked on the Obama campaign. I have not attempted to contact and integrate opinions from the rest of the many people who took part in the campaign. Nor have I tried to draw the net wider and look at other campaigns and the efforts of other parties. It would be interesting to do so, but my time and energy is limited. I hope that what I did learn is worthwhile to pass on.

本稿は限られた視点で書かれていることに注意して読んで欲しい。本稿の情報源はオバマキャンペーンに従事した同僚からのものだけである。キャンペーンに参加したその他多くの人たちに連絡を取って意見を集めるようなことはしていない。ネットでの情報収集や、他のキャンペーンや党の活動を調査などもしていない。やれば面白いのだろうが、時間やエネルギーは限られている。私がここで学んだことが、誰かにとって有益であれば幸いだ。


//Internet Campaigning Stirs

!インターネットキャンペーンの目覚め

//When Al Gore lost to George W Bush in 2000, software played a very small role in the workings of a political campaign. Scattered PCs on desks doing regular office tasks were the limit of software's influence. Internet sourced did actually raise about $1 million, but nobody took any notice [2]. (Which is ironic considering Gore played a significant part in the politics of launching the Internet.)

2000年にアル・ゴアがジョージ・W・ブッシュに負けたとき、ソフトウェアは政治運動に対してさほど影響力がなかった。
机上のPCは定型的なオフィス業務を行うだけで、それがソフトウェアの影響力の限界でもあった。
インターネットでの献金は100万ドルにもなっていたが、誰も注目しようとしなかった[2]。
（ゴアがインターネットの立ち上げに政治的な役割を果たしたことを考えると、皮肉なことである）

//The presidential campaign of Howard Dean in 2004 alerted a lot of people to the way the internet could influence the political process. Much of Dean's support, which propelled the candidate from an unknown to a serious contender, came from activity on the internet. 

ハワード・ディーンが出馬した2004年の大統領選挙は、
多くの人たちにインターネットが政治プロセスに影響を与えられることを喚起した。
ディーンの支持の多くは（匿名者から真面目な団体まで）インターネットの活動によるものだった。

//What really did it for Dean was the 2nd quarter of 2003 - he raised more ($8m) than the Big Money candidates Kerry ($5m) and Edwards ($5m). It was the watershed moment when online supporters learned their power to put an insurgent ahead of the front runner. Dean's internet team put up a thermometer (in the image of a baseball bat) that showed progress toward the goal of $8m. People went wild, using blogs, their personal email, etc... to get others to donate. The campaign also used a growing email list to drive contributions, which was the primary source.
//-- Zack Exley

""実際にそれが行われたのは、2003年の第2四半期のことだった——ディーンは、大金候補のケリー（500万ドル）やエドワード（500万ドル）よりも多い額を得た（800万ドル）。オンライン支持者の力によって、造反者が最有力候補を超えることができる。彼らがそのことを学んだ分岐点となる瞬間だった。ディーンのインターネットチームは、800万ドルの目標への達成度を示すメーターを設置した（野球バットの形をしている）。人々は、ブログ、メールなどを利用して、他の人にも献金を促した。このキャンペーンでは、貢献を加速するために、電子メールのリストを使った。これが一次情報源となっていた。{{br}}-- ザック・エクスレイ

//While Dean didn't win the nomination in 2004, he and his campaign still garnered a lot of influence in the Democratic party. Dean went on to become the chairman of the Democratic National Committee (the body that runs the Democratic party nationally) and led much of the organizing that laid groundwork for the 2006 and 2008 elections. 

ディーンは2004年の指名を勝ち取ることはできなかったが、彼と彼のキャンペーンは、民主党内で大きな影響力を獲得した。ディーンは次に民主党全国委員会（民主党を全国的に指揮する団体）の議長となり、2006年と2008年の選挙の基礎となる体制の多くをリードした。

//The software also lived on. During the campaign the software was written in very much an ad-hoc manner. A bunch of geek volunteers, and a few who joined the campaign staff, got together and started throwing together whatever they could using a LAMP stack with PHP and MySQL. At the end of the campaign a number of these geeks decided to start a company to build a permanent base of this software for future campaigns. This company, Blue State Digital, played a role in congressional races in 2006 and, crucially, Obama's primary and presidential campaigns.[3]

ソフトウェアはここでも利用されていた。
キャンペーン中、ソフトウェアは非常にアドホックなやり方で開発されていた。
ギークなボランティア連中と、キャンペーンスタッフに参加した数名が、
自分たちのできることをPHPとMySQLといったLAMP環境を使って作り上げていった。
キャンペーンが終わると、このなかの多くのギークが、将来のキャンペーンのためにこのソフトウェアをベースにした開発会社を設立することに決めた。
この会社（[[Blue State Digital|http://www.bluestatedigital.com/]]）は、2006年の議会選においてその役割を果たし、オバマの大統領予備選挙および大統領選挙においては、重要な役割を果たした。[3]

//Changing the Organizational Dynamics of Campaigns
!キャンペーンの組織ダイナミクスの変化

//The use of the internet caught a lot of attention, but there was also something else going on - a change in the organizational dynamics. My colleague Zack Exley likes to tell a story of how this organizational structure mutated together with the application of the software.

インターネットの利用は多くの注目を集めたが、他にも起きていることがあった——組織ダイナミクスの変化である。同僚のザック・エクスレイは、ソフトウェアの適用と共に
組織体制がどのように変化したかをよく話してくれる。

//In the pre-Dean times, campaigns were very much a hierarchic command-and-control structure. The campaign center gave instructions to the immediate descendents in the hierarchy and received reports from them. In this the campaign was very much like any command-and-control organization.

ディーン以前、キャンペーンは階層的な'''指揮統制'''体制だった。
キャンペーン事務所が階層の直下に指示を出し、報告を受けていた。
キャンペーンは、まるで指揮統制組織のようだった。

[[http://martinfowler.com/articles/obama/commandControl.png]]

//Figure 1: A command-and-control organization has the campaign leadership directing campaign staffers who direct volunteers.
''図1: 指揮統制組織では、ボランティアを指示するキャンペーンスタッフを、さらに指示するキャンペーンリーダーが存在する。''

//The big shift with the Dean campaign was a shift towards a peer-to-peer model, where individual volunteers, often outside of any formal campaign structure, got together to do things. 

ディーンキャンペーンでの大きな転換は、'''ピアツーピア'''モデルへの移行であり、正式なキャンペーン体制の外側にいることが多い個人のボランティアが、一緒になって物事を成し遂げられるようになった。

[[http://martinfowler.com/articles/obama/peerToPeer.png]]

//Figure 2: A peer to peer organization has volunteers communicating directly with each other.
''図2: ピアツーピア組織では、ボランティアが直接、相互にやり取りする。''

//The geeks and technology enthusiasts saw this as the way of the future and sought to utilize patterns found in peer to peer networked systems and open source software development. Dean activists used blogs for communication, meetup.com and custom Dean tools for organizing.

""ギークや技術熱狂者たちはこれを未来のやり方と考え、ピアツーピアでネットワーク化されたシステムやオープンソースソフトウェア開発で見つかったパターンを活用しようとした。ディーンの活動家は、コミュニケーションのためにブログを使ったり、組織化のために[[meetup.com|http://meetup.com/]]やディーン用のカスタムツールを使ったりした。{{br}}-- ザック・エクスレイ

//This was the early days of blogs, which gave lots of people the chance to have a platform and comment on issues and campaign strategy.

これはブログの創成期のことで、多くの人々が課題や選挙戦略についてコメントできるプラットフォームを持つ機会を得た。

//Along comes this campaign to take back the country for ordinary human beings, and the best way you can do that is through the Net. We listen. We pay attention. If I give a speech and the blog people don't like it, next time I change the speech.
//-- Howard Dean

""一般の人たちに国を取り戻そうとこのキャンペーンをやって来たが、一番いいのはインターネットを使うことだと分かった。我々は耳を傾けるし注意も払う。私のスピーチをブロガーが気に入らなかったら、次からスピーチを変えることもある。{{br}}-- [[ハワード・ディーン|http://www.wired.com/wired/archive/12.01/dean.html]]

//A peer-to-peer approach like this creates great energy amongst individual volunteers, often engaging people who aren't likely to get involved in a formal campaign. But it lacks direction - in the Dean campaign, this became evident in Dean's surprisingly low 4th place finish in the Iowa caucus (the first of the primary contests). This leads us to the mass-organization model, which, thanks to the internet, was developing in parallel with the peer-to-peer model.

このようなピアツーピア方式は、個人のボランティア（正式なキャンペーンには参加しそうにない人たち）に相当な活力をもたらす。
しかし、これでは指示がなくなってしまう——ディーンキャンペーンでは、アイオワ州党員集会（最初の予備選）で3位という予想外の結果に終わったことで、これが明らかとなった。
これは、インターネットのおかげで、ピアツーピアモデルと平行して発展した'''大衆組織'''モデルへとつながっていく。

[[http://martinfowler.com/articles/obama/massOrg.png]]

//Figure 3: Mass organization has the campaign leadership direct the volunteers directly
''図3: 大衆組織では、キャンペーンリーダーがボランティアを直接指示する。''

//With this model, the focus is on direct contact from the campaign leadership to activists on the ground, avoiding middle layers of organization present in the command-and-control model. MoveOn.org, an activist organization [4], is a good example of this model. MoveOn became a particularly powerful force in the Democratic party due to its opposition to Bush's invasion of Iraq.

このモデルでは、指揮統制モデルの中間層を迂回して、キャンペーンリーダーが直接、最下層の活動家に連絡することがポイントだ。
[[MoveOn.org|http://moveon.org/]]（活動家組織[4]）はこのモデルのよい例である。
MoveOnはブッシュのイラク侵攻に反対する立場をとり、民主党の強力な支えとなった。

//Mass-organization is a common approach - used by MoveOn, and many established NGOs. But it differs from peer-to-peer in that they don't support, and indeed sometimes discourage, getting their membership to work together in the ad hoc self-organizing mode of peer-to-peer.

大衆組織は一般的な手法で、MoveOnなどのNGOでも使われている。しかし、ピアツーピアと異なるのは、お互いにサポートせず、時に足を引っ張り、アドホックなピアツーピアの自己組織モードで協働している点である。

//One of the main differences between the Obama campaign and its predecessors was that it fused the mass-organization and peer-to-peer models. It directed activities from the center, but also encouraged peer-to-peer collaboration. Here's an example of this fusion. An important part of the software for both the Dean and Obama campaigns is event planning software to help volunteers plan meetings. In the purely peer-to-peer mode a volunteer decides to have a meeting on a pressing topic, say health-care. They go to the event planner and enter a meeting date, time, place, topic, capacity etc. They can advertise it in the various social groups that they've set up in the system. Another volunteer who uses the same political website may see the meeting advertised in the online group, or might search for upcoming local meetings. The guest volunteer can then use event planning software to RSVP to the meeting, giving the host an idea of who's coming.

オバマキャンペーンと先行者との主な違いは、大衆組織とピアツーピアモデルを融合させたことだ。
事務局から活動を指示するだけでなく、ピアツーピアの相互作用も促進した。
ここに、融合の一例がある。
ディーンとオバマのキャンペーンにおけるソフトウェアの重要な役割は、ボランティアのミーティングの計画を支援するイベントプランニングソフトウェアだった。
純粋なピアツーピアでは、ボランティアが緊急の課題（たとえば医療制度）についてのミーティングを開くことができる。
イベントプランナーにミーティングの日時・場所・議題・人数などを入力すればよい。
システムで設定した様々なソーシャルグループに告知することもできる。
同じ政治サイトを使っている他のボランティアは、オンライングループに告知されたミーティングを目にすることができるし、これから開かれるローカルミーティングを検索することもできる。ゲストボランティアはイベントプランニングソフトウェアを使って、ミーティングのRSVP（出欠入力）ができる。これでホストは誰が参加するのかが分かる。

//Weaving in the mass-organization model, the key difference is that the process can be kicked off by the campaign leadership. They can decide that they would like to see a coordinated push to discuss health care over the next couple of weeks. So they suggest to volunteers that they may like to try and organize meetings around this. They may provide catalysts such as articles to read or DVDs to watch. This creates a buzz around the topic that makes it more likely that meetings get set up. This buzz reaches out to potential attendees as well who are now more likely to try and find local meetings on the topic.

大衆組織モデルでは、このプロセスはキャンペーンリーダーが発端になる。
彼らは、2、3週間で医療制度について話し合うために、組織的な推進を図ろうと決める。
ボランティアにこの日程でミーティングを開いて欲しいと提案する。
記事やDVDなどの材料を提供するかもしれない。
口コミが起こると、ミーティングの準備がしやすくなる。
口コミは、その議題についてのローカルミーティングを探そうとしていた潜在的な参加者にも伝わる。

[[http://martinfowler.com/articles/obama/massp2p.png]]

//Figure 4: Fusing the mass organization and peer-to-peer models.
''図4: 大衆組織とピアツーピアモデルの融合''

//Internet tools like this played a very visible part of the Obama campaign. MyBarackObama.com, an instance of Blue State Digital's software, was the internet face of the Obama campaign [5]. "Mybo", as it was referred to, supported groups [6], event planning, letter to the editor [7], and a host of other ways to allow individuals to contribute to the campaign. But although Mybo was a very visible part of the Obama Campaign's software arsenal, it wasn't the only piece. Furthermore the organization pattern developed further from a simple fusion of the peer-to-peer and mass-organization models. But to explore these aspects I have to return to an area that I've been skipping over - the field organization.

こうしたインターネットツールはオバマキャンペーンの目に見える役割を果たした。
MyBarackObama.comは、Blue State Digitalのソフトウェアの事例だが、オバマキャンペーンのインターネットの顔だった[5]。
"Mybo"は、支援グループ[6]、イベントプランニング、編集者への手紙[7]、などと呼ばれ、個人がキャンペーンに貢献できる様々な方法のホストとなった。
Myboはオバマキャンペーンのソフトウェア兵器の目に見える部分を担っていたが、それだけではなかった。ピアツーピアと大衆組織モデルのシンプルな融合よりもさらに発達した組織パターンが生まれている。
こうした側面を調査するためには、ここまで触れてこなかった部分に触れなければならない——地方組織（the field organization）である。

//Knowing About the Voters
! 有権者について知る

//Reading news stories about political campaigns you come across the terms "air-war" and "ground-war". The air-war refers to the campaign conducted on television (and to an increasing extent over the internet) while the ground-war refers to feet on the ground. These feet belong to volunteers who go from door to door canvassing. Canvassing is all about using individual contact to get more voters and to get your voters to the polls.

政治キャンペーンに関するニュース記事を読むと、「空中戦」や「地上戦」という用語を目にする。
空中戦は、テレビ（やインターネットも含む）を使ったキャンペーンを指し、地上戦は、地に足をつけた実地のキャンペーンを指している。
実地は、ボランティアがキャンバシング（戸別訪問）をする。
キャンバシングとは、個人的に接触して、有権者を獲得したり、選挙に行って投票してもらったりすることである。

//The basic action of canvassing is pretty simple. Get hold of a bunch of eager volunteers. Identify some households to canvass. Take the households and allocate each one to a volunteer - a process referred to as turf cutting. For each volunteer prepare a walk packet - a list of households that that volunteer should canvass. Set the volunteers in motion. Then once the canvassing is done, collect the walk packets - because not just do the walk packets contain information about who to canvass, they also contain questions for the canvassers to ask to gather more information about the households.

キャンバシングの基本的な活動はとてもシンプルだ。
熱心なボランティアを集める。
訪問する家庭を絞る。
ボランティアに訪問する家庭を割り振る——このプロセスは'''芝刈り'''と呼ばれる。
ボランティアのために'''ウォークパケット'''を準備する——ウォークパケットとは、ボランティアが訪問する家庭のリストである。
ボランティアに動いてもらう。
キャンバシングが終わったら、ウォークパケットを集める。
ウォークパケットには、訪問先の情報が含まれるからだ。
そこには、訪問先の情報を集めるためにボランティアがする質問も含まれている。

//The trick with this is to find the most useful households for the canvassers to talk to, so that their time is spent most effectively. Crudely, this means dividing households into three groups.

キャンバシングのコツは、訪問者が話しやすい家庭を見つけることである。
そうすることで、時間を効率的に使えるようになる。
まずは、家庭を大きく3つに分ける。

//Firm opponents: These households you want to ignore. It's extremely unlikely you'll change their minds, and effort to do so is likely to be counter-productive for them, you, and the canvasser.
//Undecideds or wavering: these people are those you want to persuade to support your side. You'll need to know what issues they most care about so you can figure out what information is likely to bring them into your fold.
//Firm supporters: good news to have, but not enough to leave alone. There are two things you want from supporters. First you want to ensure they actually go to the polls and vote on the day. Secondly you want to see if they will volunteer and help to canvass more people.

* 反対派: 無視したい家庭。考えを変えることは絶望的にできない。無理にやろうとすると逆効果で、訪問者にとっても非生産的なことだ。

* 浮動派: 支持してもらえるようお願いしたい家庭。こちら側へ誘うためには、彼らがどの問題に関心があるのかを知る必要がある。

* 支持派: いれば嬉しい家庭。ただし、放っておいてはいけない。支持派には2つのことをやってもらいたい。まず、選挙日に投票所に行き、確実に投票してもらいたい。次に、ボランティアになって、他の家庭を訪問してくれるかどうかを教えてもらいたい。

//I talk about households here. It's true that there are plenty of people that live together but have different political opinions, but most of the time the members of the same household all vote the same way. So households are a commonly used unit in canvassing.

ここでは家庭について話そう。
一緒に住んでいるけれど、政治的選択肢が違うという人たちはいる。
しかし、同じ家庭の人間であれば、同じように投票することが多い。
そのため、キャンバシングでは、1つの家庭を1単位としてカウントする。

//It doesn't take too much imagination to realize that keeping track of all this information about households is a perfect task for a computer. Indeed by the 2006 elections we started hearing stories like this:

このような家庭に関する情報については、コンピュータに追跡させたほうがよいことは想像に難くない。実際、2006年の選挙では、こうした話を耳にし始めた：

//One suburban African American woman in Ohio, for example, told us that though she tends to vote Democratic, she was deluged in 2004 with calls, e-mail messages and other forms of communication by Republicans who somehow knew that she was a mother with children in private schools, an active church attendee, an abortion opponent and a golfer.
//-- LA Times

""たとえば、オハイオ郊外に住むアフリカ系アメリカ人の女性は民主党に投票する傾向があるが、彼女は2004年に、電話、メール、メッセージといった通信ツールの洪水にあった。それらは共和党からのもので、どういうわけか彼らは、彼女が私立学校の子供を持つ母親であること、熱心に教会に通っていること、中絶反対者で、ゴルフをする人であることを知っていた。{{br}}-- [[LAタイムス|http://www.latimes.com/news/opinion/commentary/la-op-hamburger25jun25,0,906381.story?coll=la-news-comment-opinions]]

//The Republican system discussed here is their Voter Vault, which builds up a detailed database of voters. The Democrats trailed the Republicans in this area but made a determined push between 2005-8, led by my old colleague Josh Hendler, to catch up. In order to make use of this data the Democrats use another system - The VAN.

ここで述べられている共和党のシステムは、Voter Vault（有権者の詳細なデータベース）だ。民主党は、この分野では共和党の後追いをしていたが、2005〜2008年のうちに共和党に追いつくという確固たる決意をし、私のかつての同僚であるジョシュ・ヘンドラーによってリードされることとなった。こうしたデータを活用するために、民主党は別のシステムを使った——VANである。

//Like Blue State Digital, The VAN began as an ad-hoc bunch of development as part of one particular campaign, in this case Tom Harkin's Iowa Senate campaign in 2002. Also like Blue State Digital, that software was taken into a company for longer term development - Voter Activation Network, usually called VAN. The VAN was used by various state campaigns in 2004, but by 2008 the Democrats had a single VAN instance loaded with a copy of the Democrats' national voter database to use nationally called VoteBuilder (but still often referred to as The VAN, so I'll call it that here). Unlike Blue State Digital, The VAN is a .NET application with Visual Basic, SQL Server and ASP.NET. I can't help but wonder which cultural difference is greater: Democratic/Republican or .NET/LAMP.

Blue State Digitalのように、VANもあるキャンペーン（ここではトム・ハーキンの2002年のアイオワ上院選挙）のアドホックな開発として始まった。
Blue State Digitalのように、このソフトウェアも長期的に開発されることとなった——そして、Voter Activation Networkと名づけられた（通常はVANと呼ばれる）。
このVANは、2004年に様々な州の選挙に使われた。
しかし、民主党は、2008年までに国内全域で使える国内投票者データベースを搭載した単一のVANを持った。それは、VoteBuilderと呼ばれた（しかし、いまだにVANと呼ばれるため、ここでもそう呼ぶことにする）。
Blue State Digitalとは違い、VANは、VB、SQL Server、ASP.NETで構築された.NETアプリケーションである。
民主党と共和党。.NETとLAMP。
この文化的な違いは不思議なものである。

//The LA Times quote above sounds a bit scary - that the political parties know that much about you. The truth however is a bit more prosaic. The basic source of information about voters comes from voter rolls, basic voter data kept by each state in its own incompatible format. Voter rolls will give you names, addresses, party affiliations [8], and a record of voting activity. The record of voting activity, which covers both the elections and the primaries, doesn't tell you who they voted for, just whether they voted at all. But that information is valuable as it gives you a sense of whether they are likely to vote.

LAタイムスは上記のことを
「政党はあなたのことを知っている」
というように少し恐怖めいて引用している。
だが、真実は少しばかり単調である。
有権者の基本的な情報源は、投票者出席簿からきている。
基本的な投票データは、各州で互換性のない形式で保持されている。
投票者出席簿には、氏名、住所、党派関係[8]、投票履歴が記載されている。
こうした投票者の活動記録は、大統領選と予備選をカバーしているが、誰に投票したかまでは含まれておらず、投票したかどうかだけが記録されている。
しかし、この情報からでも、投票する人かどうかが分かってしまう。

//This information is augmented by other data that can be bought on the open market. A good example of this is magazine subscriptions - which might explain how they knew she was a golfer.

この情報は、公開市場で購入できるデータによって増幅される。
よい例は、雑誌の定期購読情報だ——これで先の女性がゴルフをする人だと分かった。

//A good chunk of the data in The VAN is aggregate data. You don't know who a person voted for, but you do know what the overall voter tally was for a particular precinct [9]. So if our example woman was lived in a precinct that voted 80% Democrat, that might explain why she was originally tagged that way. Similar aggregate data exists for race, church attendance, views on issues, where children get schooled. In all likelihood the Republicans didn't have that data matched to her individually, it was just that the aggregate data happened to align right up in her case.

VANのデータは総計値である。ある人が誰に投票したかは分からない。
しかし、ある選挙区の投票者の合計数は分かる[9]。
先の女性は80%が民主党を支持する地区に住んでいたため、民主党支持者としてタグづけられていた。
人種、教会への出席、課題への見解、子供がどこに就学しているか、などに相似する総計値データは存在する。
共和党は彼女個人にマッチするデータは持っていなかったはずだ。
ただ、総計データを使って、彼女のデータをはじき出したのだ。

//Once a canvasser's been round to visit, much of this information can be marked individually. Even without the persuasive aspects, canvassing can be valuable for just information gathering, in particular since much of this data is out of date. One of the most useful things a canvasser can do is update addresses and phone numbers that have changed.

キャンバシングをすると、こうした情報の多くは個別にマークできる。
説得力のある見解がなくとも、
キャンバシングは情報を集めるだけで価値が出る。
特にデータが古くなっているときはそうだ。
キャンバシングが重要なのは、変更された住所や電話番号のアップデートである。

//One impact of The VAN is that this data can be got at more easily and more widely. Another impact, is that it can simplify the planning of canvassing. The VAN provides queries that allow users to look for suitable voters - eg people within a certain age range in a neighborhood - and display them on a map. This helps make an initial cut of households for canvassing. The user can then cut the turf for individual volunteers using the map to help cluster people together. Then The VAN can print out walk packets. The ease of getting maps these days allows the walk packets to mark the households on a map, which makes things much easier for the volunteer.

VANがすごいのは、こうしたデータを簡単に、広い範囲で集められることだ。
他にも、キャンバシングの計画を簡単にできるというのもある。
VANでは、ユーザーが適切な有権者を探すための検索が可能である。
たとえば、近所に住むある年齢層の人々、といった具合である。
そしてそれを地図に表示する。
これで、キャンバシングで訪問する家庭を最初に振り分けることができる。
ユーザーはこの地図を使って人を分類し、ボランティアのために芝刈りができる。
VANはウォークパケットをプリントアウトすることもできる。
最近は地図を取得するのが簡単になり、ウォークパケットの家庭を地図上にマークできるようになった。これでボランティアのキャンバシングが簡単になった。

//The VAN is also helpful once the walk packets come back. The polling questions are tagged with bar codes to make data entry easier. So the user can swipe the code for "voter supports Obama" and then swipe each household form for which that's true. Bar codes are a great way of collaborating between computer and print-outs.

VANはウォークパケットが返ってきたときも役に立つ。
質問事項は、データ入力が簡単にできるように、バーコードでタグづけされていている。
ユーザーは「オバマを支持する有権者」のコードを入力し、それに当てはまる家庭のフォームを入力する。
バーコードは、コンピュータと印刷物の絶妙なコラボレーション方法である。

//As well as tracking voters, The VAN also helps track volunteers - keeping track of who has agreed to go to what events. The upshot of all this is that it becomes easier to carry out the various tasks that an organizer needs to do, and easier for someone more experienced to run an eye over what's going on. This is rather handy due the final shift in Zack Exley's model of political organizational dynamics.

投票者を追跡すると同様に、VANはボランティアも追跡する——あるイベントへの参加に同意したのが誰か分かる。
つまり、事務局が必要な様々なタスクをより簡単に実行できるということだ。
そして、熟練した人にとっては、何が起こっているかに目を通すのが簡単になった。
これは、ザック・エクスレイによる
政治的組織ダイナミクスモデルの最終形のおかげで、
より扱いやすくなった。

//Rethinking the Field Organization
!地方組織の再考

//While the fusion of peer-to-peer and mass-organization models are good at energizing a base of individual volunteers, they rather ignore the field organization. But the field organization remains a vital part of effective campaigning. The last organizational element in the Obama campaign was a shift in the way the field organization was run. As with many things this came through necessity and dovetailed with the capabilities that software, in this case The VAN, enabled.

ピアツーピアと大衆組織の融合は、個人ボランティアのベースに活力を与えることに優れている一方で、地方組織をやや無視している。
しかし、地方組織は、効果的なキャンペーンに必要不可欠な部分を残している。
先のオバマキャンペーンにおける組織形態の変化は、地方組織の運営の障害となった。
多くのことと同様、
多くのことと同様に、これも必要から生まれ、ソフトウェア（ここではVAN）の能力と合致した。

//As Obama went up against Hilary Clinton in the primaries, his campaign faced a big problem with the field organization. Clinton was already well-established with local Democratic party organizations. Obama had a lot of enthusiastic individuals, but not the organizational depth needed to win the primaries.

オバマが予備選でヒラリー・クリントンと対抗したとき、
彼のキャンペーンは地方組織に関する大きな問題に直面した。
クリントンは既に地方の民主党組織基盤を確立していたのである。
オバマは多数の熱狂的な個人の支持者がいたが、
予備選に勝てるほど組織化されたものではなかった。

//The organization shift was to change the role of paid staffers in the campaign. Traditionally paid staffers were primarily responsible for organizing volunteers, for example organizing canvassing as I discussed above. In Obama's campaign the paid staffer's role shifted to finding, recruiting, and supporting volunteer organizers. With this model, canvassing was organized by volunteers with the staffer acting as adviser.

組織の変化というのは、キャンペーンの有給スタッフの役割を変えることだった。
従来、有給スタッフはボランティアをまとめることに最終的な責任があった。
たとえば、先に私が述べたキャンバシングのとりまとめなどである。
オバマキャンペーンでの有給スタッフの役割は、ボランティアのまとめ役を見つける、リクルートする、サポートする、ことに変化した。
このモデルでは、キャンバシングは、ボランティアと彼らを支援するスタッフとで構成されていた。

//Staffers would begin by finding likely volunteer organizers and get them into small teams. The campaign then ran a series of training classes where the teams would learn how to do the various activities involved in running a local volunteer group. They would then keep contact with the staffer for further help and advice.

スタッフは有望なボランティアのまとめ役を見つけて、彼らを小さなチームに入れる。
キャンペーンは、地方ボランティアグループの運営のような様々な活動の方法をチームが学ぶためのトレーニング講習を行う。
彼らは、援助やアドバイスを受けるために、スタッフと定期的に連絡をとる。

[[http://martinfowler.com/articles/obama/fullyConnected.png]]

//Figure 5: The final evolution of Zack's organizational model is to fully connect everyone at all levels
''図5: ザックの組織モデルの最終形はすべてのレベルのすべての人が完全につながる。''

//Zack refers to this as the campaign version of "splitting the atom" because it greatly increases the reach of staffers and the speed with which a field organization can get up and running. Furthermore it energized many volunteers by allowing them to do more. Rather than just turning up to knock on some doors or make some calls, the volunteers could get involved in organizing that activity for themselves and others.

ザックはこれを「核分裂」のキャンペーン版と呼んでいる。
スタッフの手の届く範囲や地方組織が立ち上がって実行されるまでのスピードが桁違いだからである。
さらに、多くのボランティアに権限を委譲して活力を与えた。
ボランティアは、ドアをノックしたり電話したりするだけでなく、
こうした活動を自分たちのために組織化することに参加できたのである。

//The VAN helped this work by allowing volunteer organizers to make walk packets and run canvasses from home. Volunteers' homes became campaign offices and "staging locations" for canvasses and phone banks. Using The VAN made all of this both easier to learn and quicker to do, both of these are important to allow volunteers to do the organizing since they tend to be short of experience and time. Furthermore the access to data allowed the staffers to keep and eye on what was going on so they could collaborate effectively with the volunteers. Agile software people like me argue that open access to project plans enable everyone to get involved - which both boosts both the effectiveness of the planning and the motivation of those doing the work. Opening up the planning of canvassing is a similar notion for volunteers.[10]

VANによって、ボランティアのまとめ役は、
ウォークパケットを作り、家からキャンバシングを実行できるようになった。
ボランティアの家はキャンペーン事務所となり、キャンバシングや電話帳の「実行場所」となった。
VANを使うことで、こうしたことが簡単に学べ、すばやく行うことができるようになった。
ボランティアが自分たちで組織化していくには、経験や時間た足りない分、この両方が必要である。さらに、データにアクセスできることで、スタッフは何が起きているかを把握でき、効率的にボランティアとコラボレートすることができた。

//Agile software people like me argue that open access to project plans enable everyone to get involved - which both boosts both the effectiveness of the planning and the motivation of those doing the work. Opening up the planning of canvassing is a similar notion for volunteers.[10]

私も含めてアジャイルソフトウェアな人たちは、プロジェクト計画への自由なアクセスが全員参加を可能にすると考えている——計画づくりの有効性と仕事へのモチベーションの両方を加速させる。
キャンバシングの計画づくりをボランティアにオープンにするのも同じことである。[10]

//Neighbor to Neighbor
!Neighbor to Neighbor（隣人の隣人）

//The turf cutting and walk packet preparation tools in The VAN make a big difference to the field organization and thus for overall campaign. But one of the big problems that the Obama campaign had to deal with was the lack of a field organization in most states - including such populous Democratic strongholds as New York and California. This led to enhancing Mybo with similar tools under the name "Neighbor to Neighbor". This allowed volunteers to carry out this kind of work directly with no field organization in place.

芝刈りとウォークパケットを準備するVANのツールは、地方組織に効果があり、ひいてはキャンペーン全体に影響のあるものだった。
しかし、オバマキャンペーンが対処すべき大問題は、ほとんどの州における地方組織の不足だった——ニューヨークやカリフォルニアなど人口の多い民主党の拠点も含まれる。
これは、Myboに「Neighbor to Neighbor」と呼ばれるツールを付加することにつながった。
これは、地方組織がいないボランティアが直接仕事を実行できるようにするものだった。

//The result is, to some extent, duplicate functionality between The VAN and Mybo. But there is still a significant difference in target audience. The VAN is intended to be a tool for field organizations, and the fact that the Obama campaign made such effective use of volunteers within the field organization doesn't alter the point that those volunteers are still working within the field organization's structure. Mybo is aimed at the broader volunteer community, so its turf cutting tools allow anyone to organize canvassing in this kind of way.

結果として、VANとMyboに重複する機能がでてきた。
しかし、ターゲットユーザーには大きな違いがあった。
VANは地方組織のためのツールだった。
地方組織でボランティアを効果的に活用したオバマキャンペーンは、
ボランティアを地方組織で働かせるというポイントは変えなかった。
Myboはより広いボランティアコミュニティをターゲットにしていた。
そのため、芝刈りツールによって、誰でもキャンバシングを組織することができた。

//The campaign used both The VAN and Mybo for turf cutting - using The VAN when working with the field organization and Mybo for more casual volunteer use. The campaign organized building integration between The VAN and Mybo, so that voter data in The VAN could be available to volunteers using Mybo and survey results captured in Mybo could augment the data in The VAN. 

オバマキャンペーンでは、VANとMyboを芝刈りに使った。
地方組織のときはVANを、よりカジュアルなボランティアにはMyboを使った。
VANの有権者データを、Myboを使うボランティアが利用したり、Mybo内にある調査結果でVANのデータを増やしたりするために、VANとMyboの統合も計画した。

//More important than duplicating the door-to-door aspects of The VAN, Neighbor to Neighbor added the capability to support phone canvassing. Phone canvassing is particularly important in a presidential election since candidates take states on a winner-take-all basis. There's little point for democratic supporters in Massachusetts to canvass their neighbors since Massachusetts was a safe win for Obama. 

VANのドアツードアを繰り返すよりも重要なのは、Neighbor to Neighborによって、電話キャンバシングのサポート能力をアップすることだった。
電話キャンバシングは、大統領選挙では特に重要である。
候補者は「独り占めの原則」で州を獲得していくため、
オバマにとって安全なマサチューセッツ州では、
民主党支持者は隣人にキャンバシングをする必要があまりない。

//The Obama field operation only existed in about 12 states in the general election. So Neighbor to Neighbor was for all the volunteers in the other states, where there was no staff. The field campaign was only run in the "swing" or "battleground" states. Before the web, those volunteers had nothing meaningful to do. Because additional democrat votes in California or New York don't matter. But Neighbor to Neighbor allowed a sort of activist arbitrage - where those California and New York volunteers could call Florida and Ohio. The Kerry campaign (2004) and MoveOn.org (2006) had both built tools to do this but the Obama campaign was able to do it on an unprecedented scale. 
//-- Zack Exley

""総選挙でのオバマ陣営は、約12の州にしか存在していなかった。そのため、Neighbor to Neighborは、すべての他の州のボランティアで、スタッフはついていなかったのだ。地方キャンペーンは「揺れる州」や「激戦州」だけで行われた。Web以前は、こうしたボランティアは何もやることがなかった。カリフォルニアやニューヨークの民主党支持者の追加投票はさほど重要ではないからだ。しかし、Neighbor to Neighborでは、ボランティアによってアービトラージ（鞘取り）ができる。つまり、カリフォルニアやニューヨークのボランティアがフロリダやオハイオに電話できるのだ。ケリーキャンペーン（2004年）やMoveOn.org（2006年）でもこの手のツールを作っていたが、オバマキャンペーンでは史上最大規模で実行できた。{{br}}-- ザック・エクスレイ

//Since anyone can use Neighbor to Neighbor to look at campaign data and upload new data, it raises a question of what happens should Republican supporters use it. There's nothing to prevent this, raising concerns about bad data getting into the system. On the whole, the campaign didn't think there was much bad data getting in. 

誰もが Neighbor to Neighbor を使ってキャンペーンデータやアップロードされた新しいデータを見ることができたため、共和党支持者が使うかもしれないという懸念が出てきた。
これを防ぐための処置は施していない。
システムに誤ったデータが入力される懸念もある。
全体的に見ると、キャンペーンでは、誤ったデータが大量に入っているとは考えなかった。

//There was a limit to how much data you could get. You could get one batch, and then you had to report in results before you could get more. There was automated detection of fraudulent input. It's surprisingly easy to detect when someone is putting in false data. And the fact is - and this has been learned repeatedly by MoveOn, Dean, Kerry, Obama and others - that opponents don't want to waste their time doing insignificant damage to the other side. They'd rather go do something for their own candidate.
//-- Zack Exley

""取得できるデータには制限があった。一定量を取得したら、次のデータを取得する前に、その結果を報告しなければならなかった。不正入力の自動検知機能があり、誤ったデータを入力したら、驚くほど簡単に見つかった。これはMoveOn、ディーン、ケリー、オバマのキャンペーンで何度も学習された結果だが、反対派はさほど効果もないダメージのために時間を無駄にしたくはなく、それよりも自分たちの候補者のためにできることをしたほうがよいと考えた。{{br}}-- ザック・エクスレイ

//Staffers and volunteers were encouraged to keep an eye on data in their area. Not just did this watch out for bad data it also got volunteers more familiar with people in their area.[11]

スタッフとボランティアは自分たちの地域のデータに注意するように言われていた。
不正なデータに目を向けるだけでなく、その地域の人により親しいボランティアを見つけるのである。[11]

//The Big Spam Gun
!巨大なスパム銃

//Much of the attention to the role of software in Obama's campaign focused on new web tools. Yet perhaps the most important part of the software toolkit was the mailing list. By the end of the campaign some 13 million people had added their email addresses to the campaign's email list. The challenge was to compose, send, and log all these emails so that an email ask could be sent out to the whole list within a few hours. More targeted asks [12] could be sent out on subsets of the list as well.

オバマキャンペーンにおけるソフトウェアの役割で多くの注目を集めたのは、新しいWebツールだった。
しかし、おそらく、最も重要なソフトウェアツールキットの役割は、メーリングリスト{{fn '[訳注] 英語の "mailing list" には「アナウンスリスト」と「ディスカッションリスト」の2種類の意味があるが、これは前者の意味。日本では後者の意味で使われることが多い。'}}だった。
キャンペーンの終了までに1,300万人がメールアドレスを登録した。ここでの課題は、数時間以内にすべてのメールアドレスに質問状が届くように、メールを組み立て、送信し、ログ化することだった。より詳細な質問状[12]は、リストの一部の人に届けられた。

//The mechanics of getting out so many emails is an interesting problem, but in the end there's not much point if all the emails end up in a virtual trash bin. As well as pushing out emails, the campaign also worked to make the content of the emails more involving. Rather than simply asking people to do something, the campaign tried to use a style where they would describe the background to a situation, explain how they intended to deal with it, and then suggest ways in which the recipient could help. By knowing the back-story the volunteer feels more connected to the campaign and is also more able to come up with their own activities that fit in with the tactics. It's just about telling people what to do, but also why.

膨大なメールを配信する仕組みは興味深い問題である。
しかし、メールがゴミ箱に入れられてしまったら、意味がない。
メールの配信と同様に、メール内容にも凝らなければならない。
オバマキャンペーンでは、何かをお願いするだけではなく、とあるスタイルを使うようにした。
状況の背景を説明したり、どのようにしようとしているかを説明したり、受け手ができることのを提示したりしたのである。
背景を知ることで、ボランティアはキャンペーンに親しみを感じ、キャンペーンの戦術に合致する活動を思いつくことができるようになる。
つまり、何をするかだけでなく、なぜするのかも伝えるのである。

//As well as the email spam gun, he campaign also started to work with SMS. When they were contemplating the Vice-Presidential pick, the campaign said they would make the announcement by an SMS message broadcast and suggested that people should sign up so they would get this information quickly. This allowed the campaign to build up a sizeable SMS list for later asks.

キャンペーンでは、メールスパム銃だけでなく、SMSも使った。
副大統領の選出について考えていたときは、SMSにブロードキャストして、アナウンスを行い、サインアップすれば情報をすばやく受け取れると提示した。
これによって、膨大なSMSリストが出来上がり、後の質問に使われた。

//Video
!ビデオ

//During the 2004 campaign, many Democrats were keen on using Video. One of the frustrations of many people in politics is that the major news stations carry only tiny snippets of even the most important political speeches, reducing the most carefully constructed arguments to sub-minute sound-bites. However it proved just too difficult to set a video capability up in 2004 that could easily reach a large audience who weren't necessarily that tech-savvy. 

2004年のキャンペーンでは、多くの民主党員が熱心にビデオを使った。
多くの政治家が不満に思ったのは、
ニュース局が最も重要な政治演説のわずかな断片しか放送せず、
最も注意深く構成した主張をほんのわずかしか引用しなかったことだ。
しかし、2004年では、必ずしも技術に明るくない大勢の観客に、簡単に動画を届けられるようなビデオ機能を設置するのは難しすぎた。

//This lack of video would have been particularly frustrating to Obama's supporters as he's widely considered to be an unusually effective speaker. Fortunately by 2008 we'd seen the rise of YouTube which provides a seasoned and very widely used mechanism for distributing video. The campaign used YouTube videos extensively, and it was pleasing to note that there was an appetite for even fairly hearty video fare. Obama's speech on race, a thoughtful 40 minute long oration, gathered several million views.

オバマは異常なまでに有能なスピーカーであるため、オバマの支持者にとってはビデオを活用できないことは大変な不満だった。
幸い、2008年までにはYouTubeが登場し、みんなが使えるビデオ配信の仕組みが提供された。
オバマキャンペーンはYouTubeビデオを広く活用した。
料金がかからないことも喜ばしいことであった。
オバマの選挙戦に関するスピーチは、思慮深い40分の演説だったが、数百万ビューを獲得した。

//Video also played a role in emails. Many of the email asks were delivered by providing a video link that would allow campaign leaders to talk more directly to volunteers. This helped in composing emails that provided a detailed background to asks.

ビデオはメールのなかでも重要な役割を果たした。多くのメールの質問は、キャンペーンリーダーがボランティアに直接話しかけるビデオへのリンクと一緒に配信された。
これは、質問に対する詳細な背景を説明するメールを作成するのに役立った。

//Looking Forwards
!今後の展望

//The Obama campaign has led many people to feel that there is a sea-change in politics - that grass-roots efforts can make a difference to national politics. As I mentioned earlier on this is less because Obama won the presidential election (the Democrats had the advantage) so much as Obama's victory over Hilary Clinton in the primaries.

オバマキャンペーンは多くの人たちに政治に大転換が起きたことを思わせるものだった——草の根レベルの努力が国の政治を変えることができる。
本稿の最初で言ったように、これはオバマが（民主党が優勢だった）大統領選に勝利したからというよりも、予備選でヒラリー・クリントンに勝利したから言えるのである。

//The next question is what do these changes in organizing model, enabled by software, mean for further political action. The Obama machine is now pushing to get people involved in grass-roots action to change the US health care system. Many people believe that this kind of grass-roots action is the only way of beating powerful corporate interests that support the status-quo in US health care.

次の質問は、ソフトウェアで可能になった組織モデルの変化が、将来の政治的行為にとって何を意味するのかである。
オバマの設備は、アメリカの医療制度を変えるための草の根運動の促進に使われている。
多くの人々は、こうした草の根運動が、アメリカの医療制度の現状を支持する強力な団体の影響を打ち破る唯一の方法であると信じている。

//Certainly this kind of thing is where my interests lie. I certainly have my political views, many of which are sympathetic with many of those involved in this effort. But more fundamentally I'm in favor of tools, whether software or organizational, that give everyday people more influence on politics. Democracy relies on the engagement of everyday people in the way the country is run. It's too easy for layers of bureaucracy and money to get between The People and their government. If software can help cut through that, then I think that's a worthy cause.

こういうことには私は興味がある。自分の政治的な視点も持っているが、それらの多くは、こうした努力への共感だ。
もっと基本的なことでは、私はツールが好きなのだ。
ソフトウェアだろうが組織だろうが、一般人が政治に影響力を持てるようなツールが好きだ。
民主主義は、みんなが国の運営に参加することの上に成り立っている。
官僚やお金という層が、簡単に人々と政府の間に入り込んでくる。
ソフトウェアはそれを切り開くことができる。
私はそれがソフトウェアの大儀だと思うんだ。

----

//Footnotes
'''脚注'''

//1: ThoughtWorks's involvement
//In the General Election, ThoughtWorks played a role on a few critical software projects with the Obama campaign: as a contractor with Blue State Digital, the Democratic National Committee and Obama for America. Different teams of ThoughtWorkers worked on a backend scaling project, completed a grassroots organizing application for volunteers called Neighbor to Neighbor and completed the Obama FaceBook application. 

'''[1] ThougtWorksの関与'''{{br}}
総選挙では、ThoguthWorksは、オバマキャンペーンのいくつかの重要なソフトウェアプロジェクトに関わった。Blue State Digital、民主党全国委員会、ObamaForAmericaの請負業者としてである。また別チームは、バックエンドのスケーリングプロジェクトに取り組んだり、ボランティアのための草の根組織アプリケーション「Neighbor to Neighbor」を作ったり、ObamaのFaceBookアプリケーションを作ったりした。

//2: Internet Staffers
//Another way of looking at the change over the years was the number of campaign staffers focused on the internet. For Gore in 2000 it was just a handful, for Kerry in 2004 it was 60-70, while for Obama it was a few hundred.

'''[2] インターネットスタッフ'''{{br}}
ここ数年で変わったことと言えば、インターネットにフォーカスしたキャンペーンスタッフの数だ。2000年のゴアのときはごく少数だったものが、2004年のケリーのときは60〜70人となり、そしてオバマのときは数百人にも上った。

//3: Blue State Digital
//Blue State Digital have turned into a considerable organization over the last few years, with over a 100 clients internationally. Indeed their success as a commercial organization has been a source of controversy, as many political software activists consider their publicity about their role in Obama's victory to have been excessive.

'''[3] Blue State Digital'''{{br}}
Blue State Digitalは、ここ数年でかなりの規模の組織に変化し、今では世界に100以上ものクライアントを抱えている。彼らの営利団体としての成功は物議を醸すところだ。
多くの政治ソフトウェアの活動家は、オバマの勝利における彼らの役割が広告では誇張されていると考えている。

//4: MoveOn
//MoveOn was formed at the time of the impeachment saga of Bill Clinton - the name coming from a petition to "Censure President Clinton and Move On to Pressing Issues Facing the Nation".

'''[4] MoveOn'''{{br}}
MoveOnは、ビル・クリントンの弾劾のときに作られた——名前は「Censure President Clinton and Move On to Pressing Issues Facing the Nation（クリントン大統領を非難して、わが国に差し迫った課題に移ろう）」に由来する。

//5: Mybo since the election
//Since the election my.barackobama.com has morphed into "Organizing For America" a website run by the Democratic National Committee. It's being used to coordinate activism for various efforts in conjunction with Obama's agenda. Although Obama is now President, this is far from giving him control of policy in the US political system. In order to get anything done, he has to push initiatives through Congress and his team believes that the same grass-roots efforts that was successful in his campaign can help ferment the pressure on Congress to help.

'''[5] 選挙後のMybo'''{{br}}
選挙後には、my.barackobama.comが、民主党全国委員会の運営する「Organizing For America（アメリカのための団結）」に変わった。
これは、オバマのアジェンダに連動した様々な取り組みのための改革を調整するために使われている。
オバマは今は大統領だが、これは彼にアメリカの政治システムにおける政治コントロールを与えることではない。
何かを成し遂げるには、議会の主導権を取り、彼のチームが、キャンペーンで議会へのプレッシャーを沸き立たせたのと同じ草の根運動が役に立つと信じなければならない。

//6: Mybo's groups
//The groups feature allows a Mybo user to find and join groups, which was one of the first things people tended to do once registered with Mybo. These groups were formed in all sorts of different ways. Some were purely location-oriented, pulling together supporters in a single neighborhood. Others would bring people together due to profession or workplace, yet others focused on issues. Indeed one of the most popular groups on Mybo was one formed to oppose Barack Obama's position on FISA and try to influence him to change his mind.

'''[6] Myboのグループ'''{{br}}
Myboユーザーはグループを検索したり参加したりできる。
Myboに参加したらまずやることの1つだ。
こうしたグループは様々な方法で形成された。
ある地域の支持者を集める純粋に地方指向のものもある。
職業や職場で集めるものもあれば、
課題に焦点を置いたものもある。
確かに、Myboの最も人気のあるものは、
FISA{{fn '[訳注] FISAは外国防諜活動偵察法。オバマはこれに賛成の立場だった。'}}。のバラク・オバマの立場に反対するために作られ、彼の考えを変えようとした。

//Group development is entirely user based - people can form groups however they like, with little restrictions. Group formation thus mostly followed the peer-to-peer organizational model, with people forming groups in an ad hoc way. 

グループ開発は完全にユーザーに基づいたものだ——好きであればグループを作れるし、制限はほとんどない。
グループの形成は、そのため、ピアツーピア組織モデルとなり、
アドホックに形成されたグループで成り立っている。

//The features of Mybo groups are familiar to anyone who has used various social group software on the internet: mailing list, event calendars, member directory. The kind of thing that's boringly common for most geeks, but still relatively new to many involved in the campaign. This allowed the group to coordinate their activity. Mybo also provided a blogging service, so that volunteers could easily post to a blog, either individually or as part of a group. Again this was not a new service, but it allowed people new to blogging to explore the technique in a way that was integrated with the campaign.

Myboのグループ機能は、メーリングリスト、イベントカレンダー、メンバーディレクトリといったインターネットの様々なソーシャルグループソフトウェアを使ったことある人にはよく知られたものである。
多くのギークにとっては退屈なものだが、キャンペーンに関わる人の多くにとっては、比較的新しい。これによって、グループが活動をコーディネートできる。
Myboはブログサービスも提供した。
ボランティアは、個人的にも、グループの一員としても簡単にブログを投稿できるようになった。
これも特に新しいサービスではないが、ブログに馴染みのなかった人たちが
キャンペーンのなかで新しい技術に触れることができた。

//7: Mybo's letter to the editor
//The "letter to the editor" feature helped supporters write letters to newspapers advocating a particular position. In use a supporter would search to find local newspapers for her area, and then get assistance to compose a letter to that newspaper. Early implementations of this feature included sample text to help composing the letter, but this fell out of favor as it led to too many letters which obviously came from the same source. So later advice was more list of arguments to cover in the letter, to encourage writers to make a more individual expression.

'''[7] Myboの"編集者への手紙"'''{{br}}
「編集者への手紙」機能では、支持者が新聞社に特定の立場を主張する手紙を書くことができる。
これを使用するときは、自分の住む町の地方誌を検索し、新聞社に送る手紙を書く支援を受ける。最初は手紙のサンプルテキストが記載されていた。
しかし、サンプルを真似する手紙が多すぎたため、人気を失っていった。
その後は、書き手が独自の表現ができるように、手紙で触れる論拠の一覧を載せるようになった。

//8: Party Affiliations
//When you register to vote in the US, you are asked if you wish to register for a party. You don't have to, and registering for a party doesn't commit you to voting for, or being a member of that party. In some states you can only vote in a primary for the party you are registered with.

'''[8] 党派関係'''{{br}}
アメリカで投票するために登録する場合、党派に登録したいか尋ねられる。
登録する必要はないし、必ずしも登録した党に投票する必要はないし、党派の会員になるものでもない。州によっては、予備選では登録した党にだけ投票できる。

//9: Precincts
//A precinct is an organizational clump of households - usually people who vote at the same polling station.

'''[9] 選挙区'''{{br}}
選挙区は家庭の集合体である——通常はみんな同じ投票所で投票する。

//10: Opening The VAN
//The Obama campaign was the first to allow volunteers rather than paid staffers to use The VAN. This required some tweaks to The VAN from earlier campaigns such as more robust permissioning.

'''[10] VANを開くこと'''{{br}}
有給スタッフよりもボランティアにVANを使わせるようにしたのは、オバマキャンペーンが最初だった。
そのために、先のキャンペーンより受け継がれた堅牢な認証機能のあるVANに若干の修正が必要だった。

//11: Privacy in Neighbor to Neighbor
//Could you discover private information about your neighbors? In practice this was limited because you only got names and addresses of targeted voters in your general area.

'''[11] Neighbor to Neighborのプライバシー'''{{br}}
隣人のプライバシーに関する情報を見つけられるだろうか？
実際は、有権者の氏名と住所だけしか手に入れられないため、制限されている。

//12: Ask
//An "ask" is a request made of a volunteer to do something. It seems to be an increasingly common noun in activist circles.

'''[12] 質問状(Ask)'''{{br}}
"質問状"はボランティアに対する要請。活動家の周辺では、普通名詞になってきたようだ。

//Acknowledgements
'''謝辞'''

//I wrote this article very much on the back of conversations with my colleagues about the work they did on the campaign. In particular I was greatly helped by Zack Exley and Josh Hendler who both have a long history of involvement with technology for progressive causes.

本稿は本キャンペーンで携わった同僚との会話を基にしている。特に、発展の要因となったテクノロジーに長く携わってきたザック・エクスレイとジョシュ・ヘンドラーには大いに助けられた。

//Significant Revisions
'''改定履歴'''

// 30 Jul 09: First Published
* 2009/7/30: 初稿

'''翻訳について'''

* 2009/8/18: 直訳 by kdmsnr
