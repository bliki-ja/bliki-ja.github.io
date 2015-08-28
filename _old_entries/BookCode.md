---
title: BookCode
tags: TAGS
---

http://martinfowler.com/bliki/BookCode.html

2007/12/4

//I don't not write much production code these days, but I still spend quite a few hours writing code. This code is a particular form of code, meant for explaining ideas in books. Book code isn't quite like real code, there are some different forces to consider when writing it.

最近はめっきり本番用のコードを書いてない。
ただ、コードは書いている。書籍の内容を説明するためのコードだ。これに何時間もかけている。
書籍用のコードは本番用のコードとは違うので、考慮すべき点も違ってくる。

//One question is the choice of language. I need to write code in a language that as many of my readers can read and follow. I try to write about ideas that are platform independent, but I need code to be precise. So I need to pick some widely readable language that people can follow.

まずは、言語の選択だ。
書籍用のコードは、多くの読者が読める言語で書く必要がある。
内容はできるだけプラットフォームに依存しないようにしているが、コードは正確でなければならない。
そのため、みんなが理解できる言語を選択する必要がある。

//In my early days the two largest OO languages were Smalltalk and C++. Both had faults, Smalltalk was too weird for non-smalltalkers and C++ was too full of sharp edges to get right. Java was a godsend for me. Anyone with a C/C++ background could read it. Even most smalltalkers could hold their noses and understand what I was coding. That's why the refactoring book was in Java.

その昔、オブジェクト指向の2大言語はSmalltalkとC++だった。
どちらもイマイチなところがあって、Smalltalkは知らない人には読みにくいし、C++は正確に書くことが難しかった★。
Javaの登場は天からの恵みだった。
C/C++を知っている人ならJavaのコードを読むことができた。
Smalltalkerたちも、鼻をつまんではいたが、コードの内容は理解していた。
著書『リファクタリング』でJavaを使ったのはこのためである。

//Later on .NET appeared. The nice thing here was the C# was mostly the same as Java, so I could use the two pretty interchangeably. I liked to use both to reinforce that the ideas I was writing about were useful in either case.

後に.NETが登場した。
C#とJavaはほとんど同じなので、両者を交互に利用することができるようになった。
2つの言語を使うと、書籍の内容がどちらの場合にも役に立つことが分かるので、私は好んで使っている。

//That situation is getting more difficult these days, particularly with writing about DomainSpecificLanguages. Java and C# are diverging, and some things I want to illustrate require features that neither of them have. I do much of my personal programming in Ruby, which is very well suited to DSLs, so I will use Ruby as my first choice for this situation. But other languages have contributions too. I need to balance illustrating various language capabilities for DSLs against letting the book become a hodgepodge of language tidbits.

しかし、こうした状況は、少し難しくなってきている。
DomainSpecificLanguageの説明が難しいのである。
JavaやC#は★diverging★で、私が説明したいことに必要な機能を備えていないことがある。
個人的なプログラミングはほとんどRubyでやっているが、DSLにはこのRubyが適している。
以上のことから、私が最初に選んだ言語はRubyだった。
しかし、それ以外の言語も役に立つことがある。
いろんな言語でごちゃまぜにならないように気を配りつつ、
様々な言語を使ってDSLを表現できるようバランスをとる必要がある。

//Another issue with book code is to beware of using obscure features of the language, where obscure means for my general reader rather than even someone fluent in the language I'm using. A good example of this is that when I write examples using Ruby, I've often shied away from using CollectionClosureMethods, even though I use them heavily in my own Ruby code. This is because I consider that programmers from a curly-brace background will find it harder to understand those kinds of expressions. So I sacrifice fluent Ruby in order to reach those readers.

それから、書籍用のコードでは、馴染みのない言語機能は使わないようにすべきである。
ここで「馴染みのない」とは、その言語に精通している人にとってではなく、普通の読者にとって馴染みのないことを指している。
たとえば、Rubyでコードを書くとき、私はCollectionClosureMethodを使わないようにしている。普段は多用しているのだが、中括弧言語から来た人たちには分かりにくいからだ。
Rubyの流暢さを犠牲にしても、読者に分かりやすいほうがよいのである。

//Again this is much harder for a DSL book. Internal DSLs tend to rely of abusing the native syntax in order to get readability. Much of this abuse involves quirky corners of the language. Again I have to balance showing readable DSL code against wallowing in quirk.

ただこれも、DSLを説明するときは判断が難しい。
内部DSLでは、読みやすさのためにネイティブの文法を使うことが多い。
言語の機能を犠牲にしすぎると、これが使いにくいものとなってしまう。
ここでも、DSLコードの読みやすさと言語の使いにくさとのバランスをとる必要があるのだ。
