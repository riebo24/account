class Revenue < ApplicationRecord
  validates :r_price, presence: true
  validates :date, presence: true
  belongs_to :user
  belongs_to :income
end
