class BudgetsCategory < ApplicationRecord
  belongs_to :budget, optional: true
  belongs_to :category, optional: true
end
