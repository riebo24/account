# frozen_string_literal: true

class ChangeColumnToCategory < ActiveRecord::Migration[5.0]
  def change
    remove_reference :categories, :budget, foreign_key: true
  end
end
