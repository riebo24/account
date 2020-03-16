# frozen_string_literal: true

class AddCategoryIdToBudget < ActiveRecord::Migration[5.0]
  def change
    add_reference :budgets, :category, foreign_key: true
  end
end
