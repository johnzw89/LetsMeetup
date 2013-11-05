class AddAddressFieldsToRestaurant < ActiveRecord::Migration
  def change 
  	change_table :restaurants do |t|
	  	t.remove :address
	  	t.string :street, :apt, :city, :state, :zip_code
	end
  end
end
