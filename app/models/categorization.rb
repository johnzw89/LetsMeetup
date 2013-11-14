class Categorization < ActiveRecord::Base
	attr_accessible :restaurant_ids, :category_ids

	belongs_to :restaurant
	belongs_to :category

end