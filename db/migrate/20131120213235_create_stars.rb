class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
    	t.belongs_to :restaurants
    	t.belongs_to :owners


      t.timestamps
    end
  end
end
