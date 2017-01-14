class ProductTypesController < ApplicationController

before_action :require_admin, only: [:create, :new, :edit, :update, :destroy]  

  def index
    @product_types = ProductType.all.order('name ASC')
    # binding.pry
  end

	def show
		@product_type = ProductType.find(params[:id])
	end

  def new
    @product_type = ProductType.new
  end

	def create
		@product_type =  ProductType.new(product_type_params)
		@product_type.save
    # binding.pry
    if @product_type.save
      redirect_to "/manufacturers"
    else
      render action: :new
    end
	end

	def edit
		@product_type = ProductType.find(params[:id])
	end

  def update
  	@product_type = ProductType.find(params[:id])
    @product_type.update_attributes(product_type_params)
    redirect_to "/admin_linecard"
  end

  def destroy
  	@product_type = ProductType.find(params[:id])
    @product_type.destroy
    redirect_to "/admin_linecard"
  end

  def require_admin
    unless admin_signed_in?
      redirect_to "/"
    end
  end  


	private

 def product_type_params
    params.require(:product_type).permit(:name)
  end

end