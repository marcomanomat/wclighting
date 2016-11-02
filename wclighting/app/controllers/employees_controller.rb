class EmployeesController < ApplicationController

	def index
		@employees = Employee.all
    @employees = @employees.sort_by {|e| e.last_name.downcase}
	end

  def new
    @employee = Employee.new
  end

	def create
		@employee =  Employee.new(employee_params)
    if @employee.save
      redirect_to "/employees"
    else
      redirect_to "/",
      alert: "Sorry! Something went wrong. Please check that you've filled out all required information."
    end
	end

	def edit
		@employee = Employee.find(params[:id])
	end

  def show
    @employee = Employee.find(params[:id])
  end


  def update
  	@employee = Employee.find(params[:id])
    @employee.update_attributes(employee_params)
    redirect_to "/employees"
  end

  def destroy
  	@employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to "/employees"
  end


	private

 def employee_params
    params.require(:employee).permit(:first_name, :last_name, :title, :email, :phone, :img)
  end
end