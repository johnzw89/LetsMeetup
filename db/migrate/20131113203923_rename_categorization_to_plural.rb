class RenameCategorizationToPlural < ActiveRecord::Migration
  def up
  	rename_table :categorization, :categorizations
  end

  def down
  end
end
