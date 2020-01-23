class Budget < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :monthly, optional: true
  has_many :categories, through: :budgets_categories
  has_many :budgets_categories
  belongs_to :category, optional: true
end
