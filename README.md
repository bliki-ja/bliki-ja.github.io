http://bliki-ja.github.io/

## 新しいエントリを作るとき

``_post/2004-08-03-C3.md``のようなファイルを作って編集してください。日付部分は原文のエントリ日を指定します。日付がない場合は、便宜的に``2000-01-01-``を指定してください。

ファイルの先頭には以下のような「[FrontMatter](http://jekyllrb.com/docs/frontmatter/)」を記述します。

```
---
title: C3（日本語のタイトル）
tags: [tag1, tag2]
---
```

なお、``rake post title=2004-08-03-C3``のように指定すれば、あらかじめひな形を作ることもできます。

なおなお、``rake post_from url="http://martinfowler.com/bliki/C3.html"``のように指定すれば、あらかじめひな形を（もっと詳細に）作ることもできます。

## 他のエントリにリンクするとき

ページ名をURLに設定しているので、``[バグが超少ないプロジェクト](/VeryLowDefectProject)``のようにすればリンクできます。

日本語タイトルの部分がリンク先のページと冗長になりますが……Jekyllの仕様です。いいアイデアがあればください。

## 手元で確認するとき

``jekyll serve``でローカルにサーバを起動して、ブラウザで確認してください。

## TODO

* _old_entries 以下の移行
* HikiDoc形式からMarkdownへの変換
