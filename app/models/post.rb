class Post < ApplicationRecord
  validates :price, presence:true
  validates :memo , length: { maximum: 30 }

  has_many :tags, through: :post_tags
  has_many :posts_tags
  belongs_to :categoly, optional: true
  belongs_to :user, optional: true

end
