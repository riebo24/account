# README

#家計簿アプリ データベース設計

## budgetsテーブル
|Column|Type|Options|
|------|----|-------|
|price|integer|null: false|
|user_id|reference|null: false, foreign_key: true|
|monthly_id|reference|null: false, foreign_key: true|
|category_id|reference|null: false, foreign_key: true|
### Association
- belongs_to :users
- belongs_to :monthlies
- belongs_to :categories


## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :posts
- belongs_to :users


## monthliesテーブル
|Column|Type|Options|
|------|----|-------|
|start_at|datetime|null: false|
|finish_at|datetime|null: false|
|user_id|reference|null: false, foreign_key: true|
### Association
- belogs_to :users


## postsテーブル
|Column|Type|Options|
|------|----|-------|
|p_price|integer|null: false|
|memo|string||
|date|datetime|null: false|
|user_id|reference|null: false, foreign_key: true|
|category_id|reference|null: false, foreign_key: true|
### Association
- has_many :tags, through: :posts_tags
- has_many :posts_tags
- belongs_to :category


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

# usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|e-mail|string|null: false|
### Association
- has_many :budgets
- has_many :categories
- has_many :monthlies
- has_many :posts
- has_many :tags








