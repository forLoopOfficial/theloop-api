class AddCountAttributesToRespectiveModels < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :likes_count, :integer, default: 0
    add_column :users, :posts_count, :integer, default: 0
    add_column :posts, :likes_count, :integer, default: 0
  end
end
