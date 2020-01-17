class AddCulmnToMonthly < ActiveRecord::Migration[5.0]
  def change
    add_reference :monthlies, :user, foreign_key: true
  end
end
