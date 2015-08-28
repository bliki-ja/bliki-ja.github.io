2008/7/14

//Model Driven Software Development (MDSD) is a style of software development that considers itself as an alternative to the traditional style of programming. The approach centers itself on building models of a software system. These models are typically made manifest through diagrammatic design notations - the UML is one option. The idea is that you use these diagrams, to specify your system to a modeling tool and then you generate code in a conventional programming language.

モデル駆動ソフトウェア開発（MDSD）は、
伝統的なプログラミング方式の代替であると謳うソフトウェア開発手法のことです。
この手法は、ソフトウェアシステムのモデルの構築に主眼を置いています。
通常、こうしたモデルは、図を用いた設計記法によって表されます——たとえばUMLが選択肢の1つとなります。
これらの図を使い、
捉えたシステムをモデリングツールに描画して、
伝統的なプログラミング言語のコードを生成する
というのが、基本的な考えになります。

//The MDSD vision evolved from the development of graphical design notations and CASE tools. Proponents of these techniques saw graphical design notations as a way to raise the abstraction level above programming languages - thus improving development productivity. While these techniques and tools never caught on too far, the basic core ideas still live on and there is an ongoing community of people still developing them.

MDSDの構想は、図を用いた設計記法とCASEツールから生まれました。
これらの技術の提唱者たちは、図を用いた設計記法をプログラミング言語よりも抽象度を高めるための方法であると考えており、開発の生産性を向上させるものであると見なしていました。
これらの技術は全く受け入れられるものではありませんでしたが、
核となる考えは今もなお生き永らえており、
現存するコミュニティによって開発が継続されています。

//Although I've been involved, to some extent, in MDSD for most of my career, I'm rather skeptical of its future. Most fans of MDSD base their enthusiasm on the basis that models are ipso facto a higher level abstraction than programming languages. I don't agree with that argument - sometimes graphical notations can be a better abstraction, but not always - it depends on the specific cases. Furthermore To use MDSD you need tools that support RepositoryBasedCode, and these tools currently introduce a number of pragmatic issues in tooling - of which source control is the canonical example.

私もMDSDにはある程度関わったことがありますが、その未来には懐疑的です。
MDSD好きというのは、「モデルはプログラミング言語よりも抽象度が高い」ことが好きなのです。
しかし私は、その主張には賛成できません。
図を用いた設計記法を使ってうまく抽象化できることもあるでしょう。
しかし、常にそうであるとは限らないのです——うまくいくのは特殊な場合だけでしょう。
さらに言うと、MDSDを使うには
RepositoryBasedCodeをサポートするツールが必要です。
現在のところ、こうしたツールにはいくつもの問題点があります——ソースコントロールがその典型的な例でしょう。

//MDSD is surrounded by a terminological mess. One particular vision of MDSD is ModelDrivenArchitecture (MDA) which is an OMG initiative based on the UML. Many people in the MDSD community, however, don't think that MDA or UML is the right vision for MDSD. For a long time I would hear people talking about Model Driven Development (MDD) as the general concept and MDA as the OMG's specific vision. However the OMG has trademarks on several "Model Driven *" and "Model Based *" phrases - including MDD. As a consequence people have to be careful about what model driven phrase they use. I'm using MDSD as that is the title of a useful book on the topic.

MDSDには用語の混乱も見られます。
MDSDの構想の1つは、OMGがUMLを基に提唱しているModelDrivenArchitecture（MDA）です。
しかし、MDSDコミュニティの多くの人たちは、MDAやUMLはMDSDの正しい行く末ではないと考えています。
モデル駆動開発（MDD）は一般的な概念であり、
MDAはOMG独自の構想であるという話は聞いたことがあります。
しかし、OMGは、いくつもの「モデル駆動ほげほげ」やら「モデルベースほげほげ」やらの商標権を持っているのです——MDDもそうです。
ですから、誰かと話すときは「それはどのモデル駆動？」と聞かなければなりません。
私がここでMDSDという言葉を使ったのは、
{{isbn('0470025700','良書')}}の書名になっているからです。
