class ImagesController < ApplicationController

  def index
    # binding.pry
    @manufacturer = Manufacturer.find(params[:manufacturer_id])
    @images = @manufacturer.images.all
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


	private

 # def manufacturer_params
 #    params.require(:manufacturer).permit!#(:name, :profile, :website, :img, images_attributes:[:id, :img])
 #  end


end