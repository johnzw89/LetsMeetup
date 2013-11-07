class ChangeRestaurantsDestriptionToText < ActiveRecord::Migration
  def up
  	change_column :restaurants, :description, :text
  end

  def down
  	change_column :restaurants, :description, :string
  end
end
