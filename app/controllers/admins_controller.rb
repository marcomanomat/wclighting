class AdminsController < ApplicationController

before_action :require_admin, only: [:create, :new, :edit, :update, :destroy]  

	def index
		@admins = Admin.all
	end

	def show
		@admin = Admin.find(params[:id])
	end

  def new
    @admin = Admin.new
  end  

	def create
		@admin =  Admin.new(admin_params)
		@admin.save
    if @admin.save
      redirect_to "/"
    else
      redirect_to "admin/new"
	end
 end 

	def edit
		@admin = Admin.find(params[:id])
	end

  def update
  	@admin = Admin.find(params[:id])
    @admin.update_attributes(admin_params)
    redirect_to "/"
  end

  def destroy
  	@admin = Admin.find(params[:id])
    @admin.destroy
    redirect_to "/"
  end

  def require_admin
    unless admin_signed_in?
      redirect_to "/"
    end
  end  


	private

 def admin_params
    params.require(:admin).permit(:email, :password)
 end
end 
