class Revenue < ApplicationRecord
  validates :r_price, presence:true                                                                                                                                                                                            validates :p_price, presence:true
  validates :memo , length: { maximum: 30 }
  validates :date, presence:true
  belongs_to :user
  belongs_to :income
end
