class Post < ApplicationRecord
  validates :p_price, presence:true
  validates :memo , length: { maximum: 30 }
  validates :date, presence:true
  has_many :tags, through: :post_tags
  has_many :post_tags, dependent: :destroy
  belongs_to :category, optional: true
  belongs_to :user, optional: true

  def start_time
    self.date
  end
  
end
