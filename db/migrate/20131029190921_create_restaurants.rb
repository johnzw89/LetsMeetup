class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
    	t.string :name
    	t.string :description
    	t.string :address
    	t.integer :phone_number
    	t.timestamps
    end
  end
end
