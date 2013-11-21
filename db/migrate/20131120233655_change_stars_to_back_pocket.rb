class ChangeStarsToBackPocket < ActiveRecord::Migration
  def up
  	rename_table :stars, :back_pockets
  end

  def down
  end
end
