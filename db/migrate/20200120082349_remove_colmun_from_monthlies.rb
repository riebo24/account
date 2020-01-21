class RemoveColmunFromMonthlies < ActiveRecord::Migration[5.0]
  def change
    remove_column :monthlies, :price
  end
end
