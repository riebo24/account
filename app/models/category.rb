class Category < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :posts
  belongs_to :budgets
  
end
