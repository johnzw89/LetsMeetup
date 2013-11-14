class ChangeForeignKeyNames < ActiveRecord::Migration
  def up
  	rename_column :restaurants, :categories_id, :category_ids
  	rename_column :categories, :restaurants_id, :restaurant_ids
  end

  def down
  end
end
