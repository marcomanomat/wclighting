class ManufacturersController < ApplicationController
# before_filter :authenticate_admin!, only: [:new, :edit, :destroy]

	def index
    if params[:product_type].nil?  || params[:product_type][:product_type_ids] == ""
      @manufacturers = Manufacturer.all.order('name ASC')
      # binding.pry
    else
      @collection = [] 
      @collection << ProductType.where(id: params[:product_type][:product_type_ids])
      # binding.pry
      @collection = @collection.flatten
  # binding.pry
      @filtered_manufacturers = []
      # binding.pry
      @collection.each do |pt|
          # binding.pry
        @filtered_manufacturers << pt.manufacturers 
        @filtered_manufacturers = @filtered_manufacturers.flatten.uniq
        @selected_pt = @collection.last
        # @product_type = @collection.first
        # binding.pry
  	end
  end

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
