class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :posts
  belongs_to :budgets, optional: true
  belongs_to :user, optional: true
  has_many :budgets, through: :budgets_categories
  has_many :budgets_categories
end
