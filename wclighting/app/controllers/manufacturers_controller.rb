class ManufacturersController < ApplicationController

	def index
		@manufactuers = Manufacturer.all
	end

	def show
		@manufactuer = Manufacturer.find(params[:id])
	end

end
