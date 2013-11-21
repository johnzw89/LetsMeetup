class Rename < ActiveRecord::Migration
  def up
  	rename_column :back_pockets, :owners_id, :owner_id
  	rename_column :back_pockets, :restaurants_id, :restaurant_id
  end

  def down
  end
end
