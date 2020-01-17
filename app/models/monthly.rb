class Monthly < ApplicationRecord
  validates :price, presence: true
  validates :start_at, presence: true
  validates :finish_at, presence: true
  has_many :bubgets
  belongs_to :user
end
