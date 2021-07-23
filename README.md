# README

# アプリ名

turimo

# 概要

役立つ釣具を紹介する釣り攻略アプリ

# 本番環境

# 製作背景（意図）

私は釣りが好きで釣り番組やyoutubeの釣り系ユーチューバーの動画を見ているときに出演者が使っている道具が紹介されている時に、その道具はいつどのように使われるのか、特徴やコツをあまり言わないので知りたいと思った。

# DEMO

トップページ
[![Image from Gyazo](https://i.gyazo.com/88b540d45aa22a41393873b4bae5e9b0.jpg)](https://gyazo.com/88b540d45aa22a41393873b4bae5e9b0)

アイテムページ
<a href="https://gyazo.com/ecd0e0d0377b59b97f40c573f45c14db"><img src="https://i.gyazo.com/ecd0e0d0377b59b97f40c573f45c14db.gif" alt="Image from Gyazo" width="1000"/></a>

# 工夫したポイント

・様々な種類のアイテムがあるのでそれらを綺麗にまとめ、わかりやすくページを作った事。
・レイアウトを複雑にしないで簡潔に表示させた事。

# 使用技術（開発環境）

## バックエンド
Ruby, Ruby on Rails

## ソース管理
GitHub, GitHubDesktop

## テスト
RSpec

## エデｲタ
VSCode

# 課題や今後実装したい機能

・もっとデザインをおしゃれにしたいにしたいのでカラーリングなどを見直す
・一つのアイテムに複数の画像投稿や動画投稿を可能にしたい
・コメント機能をもっとわかりやすくデザインしたい

# テーブル設計

https://turimo-35267.herokuapp.com/

ログイン情報 (テスト用)
・Eメール test1@com
・パスワード test1test1

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false, unique: true|
| encrypted_password | string | null: false |
| j_name   | string | null: felse |
| j_k_name | string | null: false |
| j_k_n_name | string | null: false |
| j_k_n_c_name | string | null: false |
| birthday | date | null: false |

### Association

- has_many :items
- has_many :comments 

## items テーブル

| Column   | Type       | Options                        |
| ------   | ---------- | ------------------------------ |
| item_name | text       | null: false |
| item_description   | text | null: false |
| category_id | integer | null: false |
| condiion_id | integer | null: false |
| burden_id   | integer | null: false |
| area_id     | integer | null: false |
| days_id     | integer | null: false |
| price    | integer | null: false |
| user_id  | integer | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments 



## comments テーブル

| Column  | Type       | Options                         |
| ------- | ---------- | ------------------------------  |
| user_id | integer |  |
| item_id | integer |  |
| text | text | null: false |

### Association

- belongs_to :item
- belongs_to :user
