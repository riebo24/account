# frozen_string_literal: true

class AddUserIdToTag < ActiveRecord::Migration[5.0]
  def change
    add_reference :tags, :user, foreign_key: true
  end
end
