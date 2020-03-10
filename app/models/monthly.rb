class Monthly < ApplicationRecord
  validates :start_at, presence: true
  validates :finish_at, presence: true
  validate   :finish_cannot_be_before_start
  has_many :budgets, dependent: :destroy
  accepts_nested_attributes_for :budgets
  belongs_to :user

  def finish_cannot_be_before_start
    if start_at >= finish_at
      errors.add(:start_at, "start dayはfinish dayより先の日付を設定してください")
    end
  end

end
