http://bliki-ja.github.io/

## 新しいエントリを作るとき

``_post/2004-08-03-C3.md``のようなファイルを作って編集してください。日付部分は原文のエントリ日を指定します。

ファイルの先頭には以下のような「[FrontMatter](http://jekyllrb.com/docs/frontmatter/)」を記述します。

```
---
title: C3（日本語のタイトル）
tags:
---
```

なお、``rake post title=2004-08-03-C3``のように指定すれば、あらかじめひな形を作ることもできます。

## 他のエントリにリンクするとき

``[バグが超少ないプロジェクト]({% post_url 2004-01-24-VeryLowDefectProject %})``のようにすれば、他のページにリンクすることができます。

日本語タイトルの部分が冗長ですが……Jekyllの仕様です。

## 手元で確認するとき

``jekyll serve``でローカルにサーバを起動して、ブラウザで確認してください。

## TODO

* _old_entries 以下の移行
* HikiDoc形式からMarkdownへの変換
