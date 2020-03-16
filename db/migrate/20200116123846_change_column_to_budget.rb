# frozen_string_literal: true

class ChangeColumnToBudget < ActiveRecord::Migration[5.0]
  def change
    remove_reference :budgets, :category, foreign_key: true
  end
end
