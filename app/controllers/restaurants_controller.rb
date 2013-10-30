class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all
	end

	def show
		@restaurant = Restaurant.find(params[:id])
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(params[:restaurant])
		#how does it know :restaurant exists. where did it come from?
		@restaurant.save
		redirect_to @restaurant
	end

	def update
		@restaurant = Restaurant.find(params[:id])
		redirect_to @restaurant
	end

	def destroy
		@restaurant = Restaurant.find(params[:id])
		@restaurant.destroy
		redirect_to restaurants_path
	end

end
