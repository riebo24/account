class Income < ApplicationRecord
  validates :name, presence: true
  has_many :revenues, dependent: :destroy
  belongs_to :user
end
