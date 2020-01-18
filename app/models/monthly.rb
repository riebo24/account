class Monthly < ApplicationRecord
  validates :price, presence: true
  validates :start_at, presence: true
  validates :finish_at, presence: true
  has_many :budgets, dependent: :destroy
  accepts_nested_attributes_for :budgets
  belongs_to :user, optional: true
end
