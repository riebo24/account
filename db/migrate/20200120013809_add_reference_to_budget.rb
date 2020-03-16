# frozen_string_literal: true

class AddReferenceToBudget < ActiveRecord::Migration[5.0]
  def change
    add_reference :budgets, :category, foreign_key: true
  end
end
