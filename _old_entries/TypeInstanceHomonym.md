http://martinfowler.com/bliki/TypeInstanceHomonym.html

2007/1/11

//(Updated with a couple of paragraphs at the end talking about handling this with a Ubiquitous Language)

（更新：ユビキタス言語を使った扱い方のパラグラフを最後に追加）

//    "'War and Peace' is a wonderful book.
//    "Let me see... pity this book has such a tattered cover"

""『戦争と平和』は素晴らしい本だ。

""あーあ、この本の表紙はボロボロだねえ。

// Two sentences, each uses the word 'book'. We glance over combinations like this every day without remarking that the word 'book' means something completely different in each of those sentences.

上の2つの文では、どちらも「本」という言葉が使われている。
意味はまるっきり違うのだが、普段は特に気にかけることはない。

// In the first sentence 'book' refers to a literary work, one that's been with us for over a hundred years. In the second sentence 'book' now refers to a physical object that's probably been around for a lot less. I can easily destroy the latter in my fire, but the former isn't touched by my flames and will doubtless last longer than I will. I can put the former on my hard disk with many siblings that collectively weigh less than the latter.

上の文の「本」は「著書」を表している（100年以上も前からある著書だ）。
下の文の「本」は、物理的な「モノ」を指している（おそらく100年も持たないだろう）。
後者の「本」は簡単に火をつけて燃やしてしまうことができる。
だが、前者の「本」は、私が火をつけたところでどうにもならないし、私よりも長く存続することは明らかだろう。
前者の「本」をいくつもハードディスクに入れたところで、後者より重くはならない。

// This particular ambiguity is startlingly common in natural language. Think about words like 'car', 'oak', and 'programmer'. Trying to straighten this out can easily lead you into the darker corners of semantics in philosophy. For the moment, I'll just explain how I think about this.

このような曖昧性は自然言語においてはよくあることである。
「車」「樫」「プログラマ」などを考えてみれば分かるだろう。
両者を明確に区別しようとすると、哲学における記号論という薄暗い場所に迷い込んでしまうので、とりあえず、ここでは私の見解を述べておこう。

// The word 'book' is a term that can refer to multiple concepts. The two sentences above illustrate two concepts that 'book' refers to: the literary work and the physical copy. Since most of my readers are programmers I'll use a programming analogy and say that there are two distinct classes both of which are called 'book'. We can disambiguate them by referring to them as the classes LiteraryWork and PhysicalCopy. When in the first sentence I say that 'War and Peace' is a book, I'm saying that 'War and Peace' is an instance of the class LiteraryWork. The second sentence refers to the properties of an instance of PhysicalCopy.

「本」という言葉は、複数の概念を持つ用語である。
最初に挙げた2つの文では、「本」は、「著書」と「物理的な一冊の本」を指していた。
おそらくここの読者はプログラマばかりだろうから、プログラミングのアナロジーを使おう。
「本」クラスが2つある。だが、2つのクラスの意味は異なる。
両者を区別するために、「{{code('LiteraryWork')}}（著書）」クラスと「{{code('PhysicalCopy')}}（物理的な本）」クラスという名前を付ける。
最初の文で「『戦争と平和』は（素晴らしい）本だ」と言ったが、「『戦争と平和』は{{code('LiteraryWork')}}のインスタンスだ」と言うことができる。
同様に、2番目の文章は、{{code('PhysicalCopy')}}のインスタンスの特性について述べたものである。

// These two concepts are not independent. Unlike a homonym like right and right (the opposites of left and wrong), these two concepts have a close relationship. A book [PhysicalCopy] carries on it a rendering of the book [LiteraryWork]. So I might say that my War and Peace has a tattered cover. Similarly my Subaru Legacy [instance of physical car] has a relationship with Subaru Legacy [instance of car model]. Indeed we might say that the type of my car is Subaru Legacy [car model]. This kind of relationship is very common and is familiar to people who do any kind of object or data modeling. You often see similar structures involving things like Product and Product Type. I wouldn't use the terms Book and Book Type, but it's fundamentally the same relationship.

この2つの概念は独立したものではない。
「right（右）」と「right（正しい）」のような同音異義語とは違い、両者には密接な関係がある。
「本（物理的な本）」は「本（著書）」を表現したものである。
だから私の『戦争と平和』の表紙はボロボロだと言うことができる。
同様に、私の「スバル レガシィ（物理的な車のインスタンス）」は「スバル レガシィ（車種のインスタンス）」と関係がある。
この関係性は非常に一般的で、オブジェクトモデリングやデータモデリングをやっている人には馴染みのあるものだろう。
同様の構造は「製品」と「製品型」にも見られる。
「本」と「本型」とは言うことはないが、関係は同じものである。

// Spend time modeling, or programming, in almost any domain and you'll reach a point where you have to take some common term in that domain and realize it denotes two separate concepts which mean separate classes (or tables) with different names in your code. When you get homonyms in your domain language, it's often because the terms are used differently in different contexts - what Eric Evans calls Bounded Contexts. As Jim Odell liked to point out: "Mary had a little lamb" means quite different things to a veterinarian than to a restaurateur. The trouble with the type-instance homonym is that it occurs even within very tight bounded contexts.

モデリングやプログラミングをしていると、異なる概念を表す用語に出会うことがある。
それぞれの概念は、別々のクラス名（あるいはテーブル名）としてコードの中に表される。
ドメイン言語に同音異義語がある場合は、異なる文脈で、異なる使い方がされることが多い。
Eric Evansは、これを「Bounded Contexts（文脈束縛）」と呼んでいる。
Jim Odellは次のように指摘していた。

""「Mary had a little lamb（子羊）」は、獣医が使うのと、レストランの主人が使うのとでは意味が異なる。

型インスタンス同音異義語の問題は、文脈に密接に関係していても起こってしまう点だ。

// My purpose here isn't to talk much further about modeling these kind of situations, that's quite a topic on its own, but to reflect on the ambiguity that this common type of homonym causes. The really interesting thing about this ambiguity is how little trouble it causes. 
//Humans seem to have no trouble at all switching between the multiple concepts and only rarely getting tripped up in the process. What's worse, if you actively try to use different terms in everyday conversation, it's nearly impossible to keep it up. 
// I certainly tried, both in conversation and writing and quickly realized it was a lost cause. Not just did I not have the discipline but it made me sound like someone with some obscure mental condition. (The type-instance case isn't the only one with this property, as the phrase "go through the door we painted last week" suggests.)

ここで私が言いたいのは、このような状況におけるモデリングについてではなく（それはそれで色々言うことはあるんだが）、同音異義語が引き起こす曖昧さについてである。
この曖昧さが興味深いのは、引き起こす問題がまったく深刻ではないという点だ。
人間は複数の概念を問題なく切り替えることができ、取り違えてしまうことはない。
だが、会話のなかで様々な用語を使ってしまうと、会話が続かなくなってしまう。
私も会話や書き物のなかでやってみたことがあるが、すぐに迷子になってしまった。
規律が守れなくなっただけでなく、なんだかよく分からない精神状態になった。
（これは型インスタンスだけの問題でない。「go through the door we painted last week（先週ペンキを塗ったドアを通って）」が示すものも同様である。★）

// There's a particularly fascinating case of this in my own specialty of object-oriented design. We often talk about things like "add a method to an object". Yet, of course, we don't add methods to objects, we add them to classes. At some point in your career you've been the pedant who's pointed that out in a meeting. You've also effortlessly glossed over that point in countless conversations since.

私の専門であるオブジェクト指向設計で特に興味深いケースがある。
よく「オブジェクトにメソッドを追加する」と言うことがあるが、実際にはオブジェクトにメソッドを追加しているわけではなく、クラスにメソッドを追加している。
会議なんかでそのことを指摘する「学者ちっく」な人になってしまう時期もあるだろうし、
そこらへんを適当に言い切ってしまう時期もあるだろう。

//So I came to the conclusion that we absolutely have to be aware of this homonym. We need to represent the concepts separately and with different names in our software. But we shouldn't expect to make a distinction between them in our conversation unless we're in a context where there is a real danger of confusion, because most of the time our brains resolve the ambiguity automatically.

結局のところ、同音異義語には絶対に気をつけるべきだ。
ソフトウェアにおける概念を区別し、それぞれ異なる名前を付ける必要がある。
ただし、混同する危険性のある文脈になるまで、会話のなかで明確に概念を区別できるとは思わないで欲しい。
我々の脳は曖昧性を自動的に解消してしまうからだ。

//So what does this mean in the context of a UbiquitousLanguage? Firstly we have to do the modeling and realize we have different concepts (aware of the homonym). 
// We then come up with names for the different concepts that we'll use in our Ubiquitous Language and thus in the software representation. When coming up with these names, I like to avoid the bare homonym: so I wouldn't use "book" in the library context, preferring something like 'Literary Work' and 'Physical Copy'. These disambiguating terms need to be comprehensible to the domain experts, as with anything else in the Ubiquitous Language.
// Therefore the domain experts need to be aware of the homonym and help come up with the new terms. We then use the new terms whenever we need the precision we gain. However we should be wary of trying to completely exorcise the homonym. It effectively becomes a synonym for each of the new terms. So if a domain person says "a book has authors" we might say "you mean a literary work there, right?" Remember that it will feel unnatural to everyone to not use the homonym term, so apply the precision with a light touch. Fortunately awareness is 90% of the battle here.

では、UbiquitousLanguageではこれは何を意味するだろうか？
まず、モデリングをして、異なる概念を認識する（同音異義語に気づく）。
異なる概念から名前を付け、それをユビキタス言語のなかで使用し、ソフトウェアとして表す。
名前には同音異義語を付けないようにするとよい。
文脈が図書館であれば、「本」という名前は付けずに、「Literary Work（著書）」と「Physical Copy（蔵書）」というふうにする。
曖昧さを無くすことで、ドメイン専門家に理解しやすくする。
ユビキタス言語に関わる人すべてにとって理解しやすくする必要がある。

// A further consequence of this homonym is that you should always have your antenna scanning for it - particularly in the early days of working in a new domain. Usually it occurs in terms that are absolutely central to that domain - as with books and libraries. I've liked using informal class diagrams to model a ubiquitous language and I've found it does a good job of rooting out these kinds of homonyms.

特に新しいドメインを扱う場合、
最初のうちは常に同音異義語にアンテナを張っておかなければならない。
通常、同音異義語はドメインの中心の用語に表れる。
図書館における本がそうだ。
私はユビキタス言語をモデル化するためにインフォーマルなクラス図を使用している。
そして、同音異義語を根絶やしするのが良いだろう。
