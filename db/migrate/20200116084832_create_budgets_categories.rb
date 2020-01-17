class CreateBudgetsCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :budgets_categories do |t|
      t.references :budget
      t.references :category
      t.timestamps
    end
  end
end
