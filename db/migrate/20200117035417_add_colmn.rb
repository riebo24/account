class AddColmn < ActiveRecord::Migration[5.0]
  def change
    add_reference :budgets, :monthly_budget, foreign_key: true
    remove_column :budgets, :start_at
    remove_column :budgets, :finish_at
  end
end
