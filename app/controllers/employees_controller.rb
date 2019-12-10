class EmployeesController < ApplicationController
  before_action :require_login, except: [:index]
  def index
  end

  def new
    @employee=Employee.new
  end
  def create
    @employee = Employee.new(employee_params)

    if(@employee.save)
      redirect_to Employee
    else
      render 'new'
    end
  end

  def destroy
    @employee = Employee.find(params[:id])

    @employee.destroy

    redirect_to Employee
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])

    if(@employee.update(employee_params))
      redirect_to Employee
    else
      render 'edit'
    end
  end

  private def employee_params
    params.require(:employee).permit( :name, :position, :gender, :phone_number, :birthday, :salary)
  end
end
