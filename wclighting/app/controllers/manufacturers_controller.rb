class ManufacturersController < ApplicationController

	def index
		@manufacturers = Manufacturer.all
	end

	def show
		@manufacturer = Manufacturer.find(params[:id])
	end

	def create
		@manufacturer =  Manufacturer.new(manufactuer_params)
		@manufacturer.save
    if @manufacturer.save
      redirect_to "/manufacturers"
    else
      redirect_to "/",
      alert: "Sorry! Something went wrong. Please check that you've filled out all required information."
    end
	end

	def edit
		@manufacturer = Manufacturer.find(params[:id])
	end	

  def update
  	@manufacturer = Manufacturer.find(params[:id])
    @manufacturer.update_attributes(manufactuer_params)
    redirect_to "/manufacturers"
  end

  def destroy
  	@manufacturer = Manufacturer.find(params[:id])
    @manufacturer.destroy
    redirect_to "/manufacturers"
  end	


	private

 def manufactuer_params
    params.require(:manufacturer).permit(:name, :profile, :website, :img)
  end	
end
