class ManufacturersController < ApplicationController
# before_filter :authenticate_admin!, only: [:new, :edit, :destroy]

	def index
		@manufacturers = Manufacturer.all
	end

	def show
		@manufacturer = Manufacturer.find(params[:id])
	end

  def new
    @manufacturer = Manufacturer.new
  end

	def create
		@manufacturer =  Manufacturer.new(manufacturer_params)
		@manufacturer.save
    # binding.pry
    if @manufacturer.save
      redirect_to "/manufacturers"
    else
      render action: :new
    end
	end

	def edit
		@manufacturer = Manufacturer.find(params[:id])
	end

  def update
  	@manufacturer = Manufacturer.find(params[:id])
    # binding.pry
    @manufacturer.update_attributes!(manufacturer_params)
    # binding.pry
    redirect_to "/manufacturers"
  end

  def destroy
  	@manufacturer = Manufacturer.find(params[:id])
    @manufacturer.destroy
    redirect_to "/manufacturers"
  end


	private

 def manufacturer_params
    params.require(:manufacturer).permit(:name, :profile, :website, :logo, images_attributes:[:id, :img, :destroy], product_type_ids: [])
  end


end
