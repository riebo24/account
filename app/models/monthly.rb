class Monthly < ApplicationRecord
<<<<<<< Updated upstream
  validates :price, presence: true
  validates :start_at, presence: true
  validates :finish_at, presence: true
  has_many :budgets, inverse_of: :monthly
=======
  validates  :start_at, presence: true
  validates  :finish_at, presence: true
  validate   :finish_cannot_be_before_start
  has_many   :budgets, dependent: :destroy
>>>>>>> Stashed changes
  accepts_nested_attributes_for :budgets
  belongs_to :user, optional: true

  def finish_cannot_be_before_start
    if start_at >= finish_at
      errors.add(:start_at, ":日付を確認してください")
    end
  end



end
