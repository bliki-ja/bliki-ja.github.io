---
title: C-Refactory
tags: refactoring
---

http://martinfowler.com/bliki/C-Refactory.html

★途中

これまで、様々な言語用に[[リファクタリングツール|http://www.refactoring.com/tools.html]]が開発されてきた。
Smalltalkのを皮切りに、Java向けやC#用のがいろいろと。
それだけに、C++用のツールがないことは特に目立つ。
[[人気がある言語|http://www.artima.com/weblogs/viewpost.jsp?thread=11070]]だし、そもそも最初にリファクタリングについて述べた[[Bill Opdyke|http://csc.noctrl.edu/f/opdyke]]はC++をバックグランドに持つってのに。

C++の言語仕様の極端な複雑さとか、その理由はいくつかある。
だけどみんなが欲しがってるならそんな問題はいずれ解決されるだろう。
[[Ralph Johnson|http://st-www.cs.uiuc.edu/users/johnson/]]はUIUCで？？？
[★Ralph Johnson has been determined to continue the good tradition of refactoring work at UIUC]。
C++はすごく込み入ってるので、まずCから始めるべきと思われる点がいっぱいある？？？
[★Since C++ is so tricky, there's a lot to be said with starting with C]。
CだとC++の厄介なところをいくらか無視できるので、リファクタリング可能なCプログラムには全く不足がない？？？
[★C avoids some of the complexity of C++, and there's no shortage of refactorable C programs out there]。
しかもCは、たとえばプリプロセッサみたいな、C++の挑戦的な機能のいくつかを使うこともできる。

このあいだ[[JAOO|http://www.jaoo.dk/]]でRalphとあったとき、彼はAlejandra Garridoのやってる研究、[[C Refactory|http://jerry.cs.uiuc.edu/~garrido/CRefactory.html]]、について説明してくれた。
説明のほとんどはCプロセッサ、特に条件付コンパイルとマクロの扱いの難しさについてだった。
問題の根本は、プログラムの抽象構文木(Abstract Syntax Tree, AST)をきちんとリファクタリングするのに、マクロがソースとASTを乖離させてしまうことにあった。
そのため、Cのリファクタリングツールはマクロを織り込み済みのAST(maxro-aware AST)、つまりコンパイル可能なASTをその要素として持つAST、を組み立てる必要がある。
それはひどく厄介な問題なんだけど、Alejandraはすでにいくらかそれに成功している。
たとえば、？？？
[★It's hairy work but Alejandra has had some success, including reading in source to the Linux kernel as part of the testing for the research tool]。

世界中のプログラマがCをツールを使ってリファクタリングするにはまだ時間がかかるだろうけど、もし興味があるなら[[C Refactory website|http://jerry.cs.uiuc.edu/~garrido/CRefactory.html]]に首を突っ込むのも楽しいかもしれない。
AlejandraとRalphが書いた大量の論文と、メーリングリストに登録してもっと詳しい情報を手に入れる方法が書いてある。
