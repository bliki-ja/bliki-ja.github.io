---
title: デコレートコマンド
tags: [API design]
---

https://martinfowler.com/bliki/DecoratedCommand.html

これはありふれたパターンで、とても単純なものである。というのも、Decoratorパターンをコマンドに適用したというだけであるから。私は、[コマンド指向インターフェイス](/CommandOrientedInterface)で多数使われているのを見たことがある。アスペクト指向プログラミングでinterceptorsと呼ばれているのを聞いたことがあるかもしれない。

commandの例から始めよう。通常それは基本的な機能の形式から構成されていて、あとで機能が追加される可能性があるものだ。したがって例えば、請求書の支払い(PayInvoice) というようなある問題領域(ドメイン)のためのcommandとなるかもしれない。これらcommandは、実行メソッドの一種である。


```c#
 // C#風
 class PayInvoiceCommand : Command ...
 void Execute() {
   // 対象ドメインのロジックを実行
 }
```

これをトランザクションの中で実行したいとしよう。適切なトランザクション用のデコレータを用いてcommandをデコレートすることができる。

```c#
 // C#風
 class TransactionalDecorator : CommandDecorator ...
   void Execute() {
     Transaction t = TransactionManager.beginTransaction();
     try {
       Component.Execute();
       t.commit();
     } catch (Exception) {
       t.rollback();
     }
   }
```

こうすればセキュリティチェックもできる。

```c#
 // C#風
 class SecurityDecorator : CommandDecorator ...
   void Execute() {
     if (passesSecurityCheck())
       Component.Execute();
    }
```

これらのクラスを適切に用いると、それらを組み合わせて正しい振る舞いをさせることが簡単にできるようになる。

```c#
 //psuedo C#
   // 請求書支払いトランザクション
   Command c = new TransactionalDecorator(new PayInvoiceCommand(invoice));
   c.Execute();
   // トランザクションの安全な支払い
   Command c = new SecurityDecorator(
                   new TransactionalDecorator(
                       new PayInvoiceCommand(invoice)));
   c.Execute();
```

ダイナミックに振る舞いを追加するこの能力は、実際[コマンド指向インターフェース](/CommandOrientedInterface)の大きな利益である。

この類のことをするのに、アスペクト指向の大々的なやり方ではたくさんの手間が掛けられている。このパターンよりもっとあるかどうか、いくつかの点について、もう少し掘り下げてみることにしよう。

これはアスペクト的だが、アスペクト指向プログラミングすべきところはもっとある。アスペクトでは、デコレーターはドメインのコマンドの実行メソッドに、adviceを提供する。しかしながらこれを行うには、実行メソッドしか通知されないのに、コマンドのまわりに全てを準備しなければならない。より柔軟なアスペクト指向プログラミングのツール、例えば aspectJを使うと、好きなメソッドの通知やフィールドのアクセスのようなことも実際できるようになる。
