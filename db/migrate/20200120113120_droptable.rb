class Droptable < ActiveRecord::Migration[5.0]
  def change
    drop_table :posts_tags
    drop_table :post_tags
  end
end
