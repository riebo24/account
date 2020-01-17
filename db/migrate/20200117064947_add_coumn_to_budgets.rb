class AddCoumnToBudgets < ActiveRecord::Migration[5.0]
  def change
    remove_reference :budgets, :monthly_budget, foreign_key: true
    add_reference :budgets, :monthly, foreign_key: true
  end
end
