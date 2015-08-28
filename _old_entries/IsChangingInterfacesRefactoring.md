http://www.martinfowler.com/bliki/IsChangingInterfacesRefactoring.html

2007/9/2

[[RefactoringBoundary]]のひとつ。

//Is changing the interface of part of the code a refactoring?

!!部分的なインタフェースの変更はリファクタリングか？

//The answer to this question is pretty simple - changing an interface is a refactoring providing you change all the callers too. A great example of this is Rename Method, which is an interface changing refactoring present on pretty much all refactoring tools.

答えは簡単——インタフェースの変更はリファクタリングだ。
もちろんすべての呼び出し元を変更する必要はある。
このよい例が[[メソッド名の変更|http://www.refactoring.com/catalog/renameMethod.html]]だ。
このインタフェースの変更によるリファクタリングは、
ほとんどすべてのリファクタリングツールでサポートされている。

//The changing of all the callers is an essential part of this refactoring. Just changing an interface declaration will break the system - and thus isn't a behavior preserving change.

すべての呼び出し元を変更するというのが、この種のリファクタリングでの肝となる。
インタフェースの宣言を変更しただけでは、システムは壊れてしまうので、
リファクタリングの定義が示すような振る舞いを保った変更にはならない。

//Interface changing refactorings do assume that you can get hold of all the callers, which is why you have to be much more careful with PublishedInterfaces. With a published interface, the interface itself is part of the observable behavior of the system.

インタフェースの変更によるリファクタリングは、あなたがすべての呼び出し元を把握しているという前提に立っている。
そのため、PublishedInterfaceを扱うときには注意が必要だ。
PublishedInterfaceでは、インタフェースそのものがシステムの振る舞いとみなされるからだ。

//Dynamic languages can make these changes much more awkward. Static typing really does help here in pinning down exactly which interface is being called at various points. Reflective calls that can also make it harder to find, either by embedding method names in strings or even composing them at run-time. This is another area where tests are essential even in environments that have refactoring tools.

動的型言語では、この種の変更は比較的ひどいことになってしまう。
静的型言語では、様々な点でインタフェースの呼び出しについて縛りを設けているため、ここではうまいことやってくれる。
リフレクションを使って呼び出しというのも、その箇所が見つけられずにひどいことになる。
文字列のメソッド名を実行時に組み立てるなんてのも、これまたひどいことになる。
つまり、ここでもやはりテストが重要になってくるのだ。
たとえリファクタリングツールのある環境でもだ。
