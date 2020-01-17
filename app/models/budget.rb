class Budget < ApplicationRecord
  validates :price, presence: true
  validates :start_at, presence: true
  validates :finish_at, presence: true
  
  belongs_to :user, optional: true
  belongs_to :monthly

  has_many :categories, through: :budgets_categories
  has_many :budgets_categories
end
