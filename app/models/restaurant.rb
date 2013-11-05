class Restaurant < ActiveRecord::Base
  attr_accessible :name, :description, :phone_number, :photo, :street, :apt, :city, :state, :zip_code
  mount_uploader :photo, PhotoUploader
  
  validates :name, presence: true
  validates :phone_number, presence: true

  def address
  	[street, apt, city, state, zip_code].join(', ')
  end

end
