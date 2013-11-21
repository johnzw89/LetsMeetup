class RestaurantsController < ApplicationController
	before_filter :authenticate_owner!, except: [:index, :show]

	def index
		# @restaurants = Restaurant.all
		@restaurant = Restaurant.search(params[:search])
		@hash = Gmaps4rails.build_markers(Restaurant.all) do |restaurant, marker|
			  marker.lat restaurant.latitude
			  marker.lng restaurant.longitude
		end
	end

	def show
		@restaurant = Restaurant.find(params[:id])
		@address = @restaurant.address.split(' ').join('+').to_str
		@map_url = "http://maps.googleapis.com/maps/api/staticmap?&markers=color:blue|#{@address}&zoom=15&size=600x300&sensor=false&key=AIzaSyA0vhNQ5sapyK1I7QE-iKn55eQ3J6rJluo"
		@reservation = @restaurant.reservations.new
	end

	def new
		@owner = current_owner
		@restaurant = current_owner.restaurants.new
	end

	def create
		@owner = current_owner
		@restaurant = current_owner.restaurants.new(params[:restaurant])
		#how does it know :restaurant exists. where did it come from?
		#rails has a convention to name :restaurant to match the model Restaurant.  I also have named it :restaurant.
		#how would I rename it, if I wanted to call it something else?
		@restaurant.save

		respond_to do |format|
	      if @restaurant.save
	        format.html { redirect_to @restaurant, notice: 'Restaurant was successfully added!' }
	        format.json { render json: @restaurant, status: :created, location: @restaurant }
	      else
	        format.html { render action: "new" }
	        format.json { render json: @restaurant.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	def update
		@owner = current_owner
		@restaurant = current_owner.restaurants.find(params[:id])
		@restaurant.update_attributes(params[:restaurant])
		redirect_to @restaurant
	end

	def destroy
		@owner = current_owner
		@restaurant = Restaurant.find(params[:id])
		@restaurant.destroy
		redirect_to root_path
	end

	def back_pocket
		@restaurant = Restaurant.find(params[:restaurant_id])
		type = params[:type]
		if type == "add"
			current_owner.back_pocket_restaurants << @restaurant
			redirect_to @restaurant, flash: { success: "Added location to back pocket for future explorations!" }
		elsif type == "drop"
			current_owner.back_pocket_restaurants.delete(@restaurant)
			redirect_to @restaurant, flash: { success: "Removed location from back pocket!"}
		else
			redirect_to @restaurant, noice: "Nothing happened..."		
		end
	end

	#def pocketed?(restaurant)
	#	back_pockets.where(owner_id: current_user.id, restaurant_id: restaurant.id)
	#end

end
