# frozen_string_literal: true

class AddColmn < ActiveRecord::Migration[5.0]
  def change
    remove_column :budgets, :start_at
    remove_column :budgets, :finish_at
  end
end
