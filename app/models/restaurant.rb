class Restaurant < ActiveRecord::Base
  attr_accessible :name, :address, :description, :phone_number, :photo
  mount_uploader :photo, PhotoUploader
end
