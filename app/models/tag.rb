class Tag < ApplicationRecord
  validates :name, presence:true

  has_many :posts, through: :posts_tags
  has_many :posts_tags  
end
