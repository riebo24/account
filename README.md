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



# README

#家計簿アプリ データベース設計

## budgetsテーブル
|Column|Type|Options|
|------|----|-------|
|price|integer|null: false|
|start_on|date|null: false|
|end_on|date|null: false|
### Association
- has_one :categoly


## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :posts
- belongs_to :budgets


## postsテーブル
|Column|Type|Options|
|------|----|-------|
|price|integer|null: false|
### Association
- has_many :tags, through: :posts_tags
- has_many :posts_tags
- belongs_to :categoly


## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :posts, though: :posts_tags
- has_many :posts_tags


## posts_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|reference|null: false, foreign_key: true|
|tag_id|reference|null: false, foreign_key: true|
### Association
- belongs_to :posts
- belongs_to :tags














