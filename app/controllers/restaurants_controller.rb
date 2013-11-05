class RestaurantsController < ApplicationController

	def index
		@asdf = Restaurant.all
	end

	def show
		@restaurant = Restaurant.find(params[:id])
		@address = @restaurant.address.split(' ').join('+').to_str
		@map_url = "http://maps.googleapis.com/maps/api/staticmap?&markers=color:blue|#{@address}&zoom=13&size=600x300&sensor=false&key=AIzaSyA0vhNQ5sapyK1I7QE-iKn55eQ3J6rJluo"
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(params[:restaurant])
		#how does it know :restaurant exists. where did it come from?
		#rails has a convention to name :restaurant to match the model Restaurant.  I also have named it :restaurant.
		#how would I rename it, if I wanted to call it something else?
		@restaurant.save
		redirect_to @restaurant
	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	def update
		@restaurant = Restaurant.find(params[:id])
		@restaurant.update_attributes(params[:restaurant])
		redirect_to @restaurant
	end

	def destroy
		@restaurant = Restaurant.find(params[:id])
		@restaurant.destroy
		redirect_to restaurants_path
	end

end
