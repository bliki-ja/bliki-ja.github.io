---
title: インタフェースと実装のペア
tags: [API design, object collaboration design]
---

http://martinfowler.com/bliki/InterfaceImplementationPair.html

//The practice of taking every class and pairing it with an interface. So as a result you see pairs of things - maybe ICustomer and Customer or Customer and CustomerImpl. In many ways it echoes the C/C++ habit of header files for each class, although in this case the interfaces and implementations are actually separate types.
すべてのクラスをインタフェースとペアにする手法である。
たとえば、ICustomerとCustomer、CustomerとCustomerImplのようなペアができる。
この場合、インタフェースと実装の型が分かれてしまうが、
これは、各クラスにヘッダファイルを付けるというC/C++の慣習を踏襲しているためである。

//The advantage of this approach is that you can completely substitute anything at any point by providing another implementation of the interface.
この手法のメリットは、
インタフェースの実装を別のものにすることで、
いつでも丸ごと入れ替えることができる点である。

//This isn't, however, a technique that I've ever much liked. Using interfaces when you aren't going to have multiple implementations is extra effort to keep everything in sync (although good IDEs help). Furthermore it hides the cases where you actually do provide multiple implementations.

ただ、私はこの手法があまり好きではない。
複数の実装がないのにインタフェースを使ってしまうと、インタフェースと実装とを同時に変更しなければならない分、手間がかかるからだ（IDEが補完してくれるが、やはり面倒だ）。
また、これだと裏に複数の実装があることを隠してしまう。

//As often is the case the trade-offs are different depending on whether you are writing application classes or libraries. In an application if you ever need an interface where you don't have one you can just do Extract Interface and you're done. With published libraries your users don't get that fast feedback so it's much more useful to make your published types interfaces. However just mimicking the implementation classes in your PublishedInterfaces is rarely the best move. Interfaces should be designed around your clients' needs, often these don't match the implementation.

よくあることだが、これも、アプリケーションのクラスを作っているのか、ライブラリを作っているのかによって、トレードオフの仕方が変わってくる。
アプリケーションを作っている場合だと、インタフェースが用意されていない場合は[[インタフェースの抽出|http://www.refactoring.com/catalog/extractInterface.html]]を行えばよい。それで終わりだ。
公布済みのライブラリだと、ユーザは素早いフィードバックを受けられないので、公布済み型のインタフェースを作るとよいだろう。
ただし、[[PublishedInterface]]の中でクラスを実装したかのようにするだけでは、うまくはいかない。
インタフェースは様々なクライアントの要求に合わせて設計される必要があるが、
インタフェースが実装に合わないこともしばしばあるのだ。
