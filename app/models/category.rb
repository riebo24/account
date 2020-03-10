class Category < ApplicationRecord
  validates :name, presence: true
  has_many :posts, dependent: :destroy
  has_many :budgets, dependent: :destroy
  has_many :monthlies, through: :monthlies_categories
  has_many :monthlies_categories
  belongs_to :user
end
