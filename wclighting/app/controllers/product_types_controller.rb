class ProductTypesController < ApplicationController

  def index
    # binding.pry
    # @manufacturer = Manufacturer.find(params[:manufacturer_id])
    # @product_types = ProductType.all
#     @collection = []
#     # @collection << ProductType.where(id: params[:product_type][:product_type_ids])
#     # binding.pry
#     @collection = @collection.flatten
# # binding.pry
#     @mmanufacturers = []
#     # binding.pry
#     @collection.each do |pt|
#     		binding.pry
#     	@mmanufacturers << pt.manufacturers 
#     	@mmanufacturers = @mmanufacturers.flatten.uniq
    # end


    # @mmanufacturers
    # binding.pry
    # @filtered = ProductType.find(params[:id])
  end

	def show
		@product_type = ProductType.find(params[:id])
	end


	def edit
		@product_type = ProductType.find(params[:id])
	end

  # def update
  # 	@product_type= ProductType.find(params[:id])
  #   @product_type.update_attributes(manufacturer_params)
  #   redirect_to "/manufacturers"
  # end

  def destroy
  	@product_type = ProductType.find(params[:id])
    @manufacturer = @product_type.manufacturer
    @product_type.destroy
    redirect_to "/manufacturers/#{@manufacturer.id}/edit"
  end


	private

 # def all_product_types
 #    {product_type_ids: []}
 #  end

end