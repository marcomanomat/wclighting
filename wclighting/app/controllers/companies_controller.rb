class CompaniesController < ApplicationController

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
    @company.update_attributes(company_params)
    redirect_to "/"
  end

  def destroy
  	@company = Company.find(params[:id])
    @company.destroy
    redirect_to "/"
  end


	private

 def company_params
    params.require(:company).permit(:name, :phone, :address, :email, :logo, images_attributes:[:id, :img, :destroy])
  end

end