class DropBudgetsCategories < ActiveRecord::Migration[5.0]
  def change
    drop_table :budgets_categories
    drop_table :monthly_budgets
  end
end
