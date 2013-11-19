class AddRoleToOwners < ActiveRecord::Migration
  def change
  	add_column :owners, :role, :string, default: "user"
  end
end
