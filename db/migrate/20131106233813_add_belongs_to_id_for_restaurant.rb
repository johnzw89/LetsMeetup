class AddBelongsToIdForRestaurant < ActiveRecord::Migration
  def change
  	change_table :restaurants do |t|
  		t.belongs_to :owner
  	end
  end
end
