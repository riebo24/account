class Budget < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :monthly, optional: true
  has_many :categories, through: :budgets_categories
  has_many :budgets_categories
  belongs_to :category, optional: true

  validates :price, presence: true 
  # もしかしたら、このバリデーションがあったら、月予算の投稿でエラーがでるかも

  attribute :price, :integer, default: 0


end
