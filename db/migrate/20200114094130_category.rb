# frozen_string_literal: true

class Category < ActiveRecord::Migration[5.0]
  def change
    add_reference :categories, :budget, foreign_key: true
  end
end
