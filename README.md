# README

# アプリ名

turitoku

# 概要

役立つ釣具を紹介する釣り攻略アプリ

# 製作背景（意図）

私は釣りが好きで釣り番組やyoutubeの釣り系ユーチューバーの動画を見ているときに出演者が使っている道具が紹介されている時に、その道具はいつどのように使われるのか、特徴やコツをあまり言わないので知りたいと思った。

# テーブル設計

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
