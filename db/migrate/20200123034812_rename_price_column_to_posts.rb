# frozen_string_literal: true

class RenamePriceColumnToPosts < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :price, :p_price
  end
end
