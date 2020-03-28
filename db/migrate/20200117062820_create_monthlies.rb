# frozen_string_literal: true

class CreateMonthlies < ActiveRecord::Migration[5.0]
  def change
    create_table :monthlies do |t|
      t.integer :price
      t.date :start_at
      t.date :finish_at
      t.timestamps
    end
  end
end
