# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# user table
|name      |string     |ユーザー名｜
|id        |integer    |ユーザーID|
|email     |string     |メールアドレス|
|password  |string     |パスワード|

# coment table
|id        |integer   |投稿ID|
|title     |string    |投稿タイトル｜
|content   |text      |投稿内容　|
|user_id   |bigint    |投稿ユーザーID|

# leply  table
|user_id   |integer  |投稿ID|
|content   |text     |投稿内容|

# like table
|user_id  |bigint  |投稿ID|
|leply_id  |bigint  |店舗からの返答|

# post
|user_id|bigint|user table|
|content|text  |投稿内容|


## ポートフォリオ資料

## アプリ概要

# アプリ概要
# ここ店舗（Ruby on rails店のみ）へについて、お客様からのご意見を投稿

# コンセプト
# お客様からのご意見投稿サービス機能、それに応じて店舗からの返信、店舗からの返信には参考になったボタンが押せる機能。そして、お客様からの意見はサイト全体から見える仕様。

# 内容
# お客様が店舗（ruby on rails店）について、どう思っているか投稿出来る。それを店舗のスタッフが確認する。店舗のスタッフはお客様の投稿に返信出来る。店舗からの返信には参考になったボタンが押せる仕組み。

# アプリを制作した理由
# お客様からの意見はとても重要で、お客様の意見を元に接客応対向上につなげていきたいから。店舗として良い対応を目指していきたいから。

# 使用技術（予定）
# Ruby on Rails,Ruby,HTML,CSS,Javascript,jQuery,PostgreSQL,AWS

# 機能一覧
# ログインとログアウト機能,ゲストログイン機能,ご意見投稿機能,意見に対してのコメント機能（全体に見える）,マイページ機能,他ユーザーの投稿一覧機能,参考になった機能（いいね機能と同じ仕組み）


