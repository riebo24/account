class Budget < ApplicationRecord
  validates :price, presence: true
  validates :start_at, presence: true
  validates :finish_at, presence: true

  has_one :categoly
  belongs_to :user
end
