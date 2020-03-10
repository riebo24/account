class Tag < ApplicationRecord
  validates :name, presence:true
  has_many :posts, through: :post_tags
  has_many :post_tags, dependent: :destroy
  belongs_to :user
end
