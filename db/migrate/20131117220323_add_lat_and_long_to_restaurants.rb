class AddLatAndLongToRestaurants < ActiveRecord::Migration
  def change
  	change_table :restaurants do |t|
  		t.float :longitude
  		t.float :latitude
  	end
  end
end
