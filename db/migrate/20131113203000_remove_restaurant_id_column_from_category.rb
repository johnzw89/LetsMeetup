class RemoveRestaurantIdColumnFromCategory < ActiveRecord::Migration
  def up
  	remove_column :restaurants, :category_id
  	remove_column :categories, :restaurant_id
  end

  def down
  end
end
