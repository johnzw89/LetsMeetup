class AddEmailToReservations < ActiveRecord::Migration
  def change
  	change_table :reservations do |t|
  		t.string :email
  		t.date :date
  		t.time :time
  		t.string :message
  		t.belongs_to :restaurant
  	end
  end
end
