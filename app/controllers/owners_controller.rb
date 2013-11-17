class OwnersController < ApplicationController
	before_filter :authenticate_owner!, except: [:index]

	def index
		@owners = Owner.all
	end

	def dashboard
		@owner = Owner.find(params[:id])
		@restaurants = @owner.restaurants
		@reservations = @owner.reservations
	end
end