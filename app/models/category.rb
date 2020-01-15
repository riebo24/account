class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :posts
  belongs_to :budgets, optional: true
  belongs_to :user, optional: true
end
