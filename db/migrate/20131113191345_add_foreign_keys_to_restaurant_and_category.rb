class AddForeignKeysToRestaurantAndCategory < ActiveRecord::Migration
  def change
  	change_table :restaurants do |t|
  		t.belongs_to :categories
  	end

  	change_table :categories do |t|
  		t.belongs_to :restaurants
  	end
  end
end
