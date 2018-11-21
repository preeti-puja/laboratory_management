class LaboratoriesController < ApplicationController
  def new
    @lab = Laboratory.new
    @lab.staffs.build
  end

  def create
    @lab = Laboratory.create(lab_params)
    if @lab.save!
      redirect_to laboratories_path
    else
      render 'new'
    end
  end

  private
  
  def lab_params
    params.permit(:laboratory).require(:name, :address1, :address2, :city, :state, :country, :zip)
  end
end
