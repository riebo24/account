class AddCoumnToBudgets < ActiveRecord::Migration[5.0]
  def change
    add_reference :budgets, :monthly, foreign_key: true
  end
end
