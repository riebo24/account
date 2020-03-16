# frozen_string_literal: true

class AddCoulmToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :date, :date
  end
end
