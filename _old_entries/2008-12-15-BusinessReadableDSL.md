---
title: BusinessReadableDSL
tags: [domain specific language]
---

http://martinfowler.com/bliki/BusinessReadableDSL.html

2008/12/15

//Will DSLs allow 
//	business people to 
//		write software rules without involving programmers?

'''ビジネスピープルは、DSLを使えば、プログラマがいなくてもソフトウェアのルールを書けるのだろうか？'''

//When people talk about DSLs it's common 
//	to raise the question of business people writing code for themselves. 
//I like to apply the COBOL inference to this line of thought. 
//That is that 
//	one of the original aims of COBOL was to allow people to write software without programmers, 
//	and we know how that worked out. 
//So when any scheme is hatched 
//	to write code without programmers, 
//	I have to ask 
//		what's special this time that would make it succeed 
//			where COBOL (and so many other things) have failed.

DSLの話になると、ビジネスピープルが自分でコードを書くのかといった話によくなる。
こうした考えには、COBOLのインターフェースの話を持ち出そう。
元々のCOBOLの目的は、プログラマがいなくてもソフトウェアを書けるようにすることだった。が、結果は見ての通りである。
プログラマがいなくてもコードを書けるという話には、COBOL（とその他大勢）が失敗したところを、今回はどうやって克服するのかと尋ねるようにしている。

//I do think that programming involves a particular mind-set, 
//	an ability to both give precise instructions to a machine 
//		and the ability to structure a large amount of such instructions to make a comprehensible program. 
//That talent, 
//	and the time involved to understand and build a program, 
//	is why programming has resisted being disintermediated for so long. 
//It's also why many "non-programming" environments end up breeding their own class of programmers-in-fact.

私は、プログラミングには特殊なマインドセットが必要だと考えている。
それは、マシンに正確な指示を与えること、そして、そうした膨大な指示を構造化して、理解可能なプログラムにすることである。
この素質が、そしてプログラムの理解と構築にかかる時間が、長年にわたってプログラマがコンピュータとビジネスピープルの間に存在し続ける理由である。また、多くの「非プログラミング」環境が、プログラマという立場を繁栄させているのである。

//That said, I do think that the greatest potential benefit of DSLs comes 
//	when business people participate directly in the writing of the DSL code. //The sweet spot, 
//	however is in making DSLs business-readable rather than business-writeable. 
//If business people are able to look at the DSL code and understand it, 
//	then we can build a deep and rich communication channel 
//		between software development and the underlying domain. 
//Since this is the Yawning Crevasse of Doom in software, 
//	DSLs have great value 
//		if they can help address it.

とはいうものの、ビジネスピープルが直接DSLのコードを書くようになったときに、DSLの最大の利点が発揮されると思う。
ただ、そのスウィートスポットは、
''ビジネスライタブル''なDSLよりも''ビジネスリーダブル''なDSLの方だろう。
ビジネスピープルがDSLのコードを見て理解できれば、ソフトウェア開発とそのドメインとの間に、深く、豊かなコミュニケーションチャンネルを構築することができる。
ここはソフトウェア業界での[[大きな亀裂|http://www.infoq.com/news/2008/08/Fowler-North-Crevasse-of-Doom]]である。
DSLがこれを克服する助けになれば、非常に価値のあることだろう。

//With a business-readable DSL, programmers write the code but they show that code frequently to business people who can understand what it means. 
//These customers can then make changes, maybe draft some code, but it's the programmers who make it solid and do the debugging and testing.

ビジネスリーダブルなDSLがあれば、
プログラマは書いたコードを
その意味を理解できるビジネスピープルに
何度も確認してもらうことができる。
顧客は自分で変更を加えることもできるし、
コードの下書きを書くこともできるだろう。
しかし、コードを清書したり、デバッグやテスティングをするのは、プログラマである。

//This isn't to say 
//	that there's no benefit in a business-writable DSL. 
//Indeed a couple of years ago 
//	some colleagues of mine 
//		built a system that included just that, 
//	and it was much appreciated by the business. 
//It's just that 
//	the effort in creating a decent editing environment, 
//	meaningful error messages, 
//	debugging and testing tools raises the cost significantly.

ビジネスライタブルなDSLには利点がないと言っているのではない。
数年前に私の同僚が、ビジネスライタブルなDSLを備えたシステムを構築したが、それはお客様に大変喜ばれている。
ただ、ある程度の開発環境（意味のあるエラーメッセージ、デバッグツール、テスティングツール）を整えるのはコストが膨大にかかってしまうのだ。

//While I'm quick to use the COBOL inference 
//	to diss many tools that seek to avoid programmers, 
//	I also have to acknowledge the big exception: spreadsheets. 
//All over the world 
//	surprisingly big 
//	business functions 
//		are run off the back of Excel. 
//Serious programmers tend to look down their noses at these, 
//	but we need to take them more seriously 
//		and try to understand 
//			why they have been as successful as they are. 
//It's certainly part of the reason 
//	that drives many LanguageWorkbench developers 
//		to provide a different vision of software development. 

プログラマを蔑ろにしようとするツールをdisるのに、すぐにCOBOLのインターフェースを例に挙げてしまったが、大きな例外を認めなくてはならない。表計算ソフトだ。
驚くことに世界のビジネスはExcelで動いているのだ。
プロのプログラマはExcelを見下すことが多いが、もっと真面目に向き合わねばならない。
そして、なぜExcelが成功を収め、今も成功しているのかを理解するよう努めなければならない。
その理由は、多くの[[LanguageWorkbench]]開発者を動かし、
ソフトウェア開発に異なる視点を提供していることと関係しているはずだ。
