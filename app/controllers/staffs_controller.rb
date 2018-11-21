class StaffsController < ApplicationController

  def new
    @staff = Staff.new
  end

  def create
    @staff = Staff.create(staff_params)

    if @staff.save
      redirect_to staff_path
    end
  end

  def show
    @staff = Staff.find(params[:id])
  end
  
  private

  def staff_params
    params.permit(:staff).require(:email, :first_name, :second_name, primary_pnumber, secondary_pnumber, :is_active, :is_admin)
  end
end
