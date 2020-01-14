class Post < ApplicationRecord
  validates :price, presence:true
  validates :memo , length: { maximum: 30 }
end
