class Post < ApplicationRecord
  validates :price, presence:true
  validates :memo , length: { maximum: 30 }

  has_many :tags, through: :posts_tags
  has_many :posts_tags
  belongs_to :categoly
  belongs_to :user

end
