---
title: 自己テストコード
tags: [agile, delivery, testing, extreme programming, clean code, continuous integration, refactoring]
---

http://martinfowler.com/bliki/SelfTestingCode.html

**自己テスト用コード（Self-testing Code）**は、私が『リファクタリング』で使った言葉です。
機能的なソフトウェアと一緒に、結合テストにおける包括的な自動テストを書くプラクティスのことを指します。

自己テスト用コードを書く方法として、私は[テスト駆動開発](/TestDrivenDevelopment)を好んでいます（が、それが唯一というわけではありません）。
機能的なコードの直前ではなく直後に自己テスト用コードを書くことで、
テストから多くの利点を得ることができます。
自己テスト用コードの重要なポイントは、
テストを書くということであり、
どのようにテストを書き始めたかではありません。

