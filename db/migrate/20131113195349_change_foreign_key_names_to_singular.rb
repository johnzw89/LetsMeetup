class ChangeForeignKeyNamesToSingular < ActiveRecord::Migration
  def up
  	rename_column :restaurants, :category_ids, :category_id
  	rename_column :categories, :restaurant_ids, :restaurant_id
  end

  def down
  end
end
