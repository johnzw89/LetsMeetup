class ChangePhoneNumberToString < ActiveRecord::Migration
	def self.up
		change_column :restaurants, :phone_number, :string
	end

	def self.down
		change_column :restaurants, :phone_number, :integer
	end
end
