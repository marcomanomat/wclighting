class ImagesController < ApplicationController

before_action :require_admin, only: [:create, :new, :edit, :update, :destroy]  

  def index
    # binding.pry
    @manufacturer = Manufacturer.find(params[:manufacturer_id])
    # @company = Company.find(param[:company_id])
    @manu_images = @manufacturer.images.all
    # @company_images = @company.images.all
  end

	def show
		@image = Image.find(params[:id])
	end


	def edit
		@image = Image.find(params[:id])
	end

  # def update
  # 	@image= Image.find(params[:id])
  #   @image.update_attributes(manufacturer_params)
  #   redirect_to "/manufacturers"
  # end

  def destroy
  	@image = Image.find(params[:id])
    @manufacturer = @image.manufacturer
    @image.destroy
    redirect_to "/manufacturers/#{@manufacturer.id}/edit"
  end

  def require_admin
    unless admin_signed_in?
      redirect_to "/"
    end
  end  


	private

 # def manufacturer_params
 #    params.require(:manufacturer).permit!#(:name, :profile, :website, :img, images_attributes:[:id, :img])
 #  end


end