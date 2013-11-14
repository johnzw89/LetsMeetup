class AddCategorizationTable < ActiveRecord::Migration
  def up
  	create_table :categorization do |t|
      t.belongs_to :restaurant
      t.belongs_to :category

      t.timestamps
  	end
  end

  def down
  end
end
