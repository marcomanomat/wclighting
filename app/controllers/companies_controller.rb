class CompaniesController < ApplicationController

  before_action :require_admin, only: [:create, :new, :edit, :update, :destroy]

  def index
    @companies = Company.all.order('name ASC')
    # binding.pry
  end

	def show
		@company = Company.find(params[:id])
	end

  def new
    @company = Company.new
  end

	def create
		@company =  Company.new(company_params)
		@company.save
    # binding.pry
    if @company.save
      redirect_to "/"
    else
      render action: :new
    end
	end

	def edit
		@company = Company.find(params[:id])
	end

  def update
  	@company = Company.find(params[:id])
    if @company.update_attributes(company_params)
      redirect_to "/"
    else
      render 'edit'
    end
  end

  def destroy
  	@company = Company.find(params[:id])
    @company.destroy
    redirect_to "/"
  end

  def require_admin
    unless admin_signed_in?
      redirect_to "/"
    end
  end  


	private

 def company_params
    params.require(:company).permit(:name, :phone, :address, :email, :logo, images_attributes:[:id, :img, :destroy])
  end

end