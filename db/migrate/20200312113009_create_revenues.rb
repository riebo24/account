class CreateRevenues < ActiveRecord::Migration[5.0]
  def change
    create_table :revenues do |t|
      t.integer :r_price
      t.string :memo
      t.date :date
      t.references :income, foreign_key: true      
      t.references :user, foreign_key: true     
      t.timestamps
    end
  end
end
