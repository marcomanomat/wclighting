# class ImagesController < ApplicationController

# 	def index
# 		@manufacturers = Manufacturer.all
# 	end

# 	def show
# 		@image = Image.find(params[:id])
# 	end

#   def new
#     @image = Image.new
#     # @manufacturer.images.build
#     # binding.pry
#   end

# 	def create
# 		@manufacturer =  Manufacturer.find(manufacturer_params)
#     images = @manufacturer.images.build
# 		@image.save
#     binding.pry
#     if @manufacturer.save
#       redirect_to "/manufacturers"
#     else
#       render action: :new
#     end
# 	end

# 	# def edit
# 	# 	@manufacturer = Manufacturer.find(params[:id])
#  #    @manufacturer.images.build
# 	# end

#  #  def update
#  #  	@manufacturer = Manufacturer.find(params[:id])
#  #    @manufacturer.update_attributes(manufacturer_params)
#  #    redirect_to "/manufacturers"
#  #  end

#  #  def destroy
#  #  	@manufacturer = Manufacturer.find(params[:id])
#  #    @manufacturer.destroy
#  #    redirect_to "/manufacturers"
#  #  end


# 	private

#  def manufacturer_params
#     params.require(:manufacturer).permit!#(:name, :profile, :website, :img, images_attributes:[:id, :img])
#   end


# end