class CreateBudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :budgets do |t|
      t.integer :price
      t.date :start_at
      t.date :finish_at
      t.timestamps
    end
  end
end
