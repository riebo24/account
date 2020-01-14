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

#家計簿アプリ　データベース設計
## postsテーブル
|Column|Type|Options|
|------|----|-------|
|price|integer|null: false|
### Association
- has_many :tags, though: :posts_tags
- has_many :posts_tags
- belongs_to :categoly


##　tagsテーブル
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


## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :posts
- bolongs_to :budgets


## budgetsテーブル
|Column|Type|Options|
|------|----|-------|
|price|integer|null: false|
|start_on|date|null: false|
|end_on|date|null: false|
### Association
- has_many :posts, though: :posts_tags
- has_many :posts_tags
- has_on :categoly











# Chat-space DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false, unique: true, index: true|
|price|string|null: false|
|password|string|null: false|
### Association
- has_many :groups, through: :groups_users
- has_many :groups_users

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
### Association
- has_many :users, through: :groups_users
- has_many :groupsreference_users

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|reference|null: false, foreign_key: true|
|group_id|reference|null: false, foreign_key: true|
### Association
- belongs_to :grou
- belongs_to :user

## chatsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text||
|image|text||
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group