class SpiritChargesController < ApplicationController

  def index
    @spirit_charges = SpiritCharge.all.order(created_at: :asc)
  end

  def new
    @spirit_charge = SpiritCharge.new
  end

  def edit
    @spirit_charge = SpiritCharge.find(params[:id])
  end

  def create
    @spirit_charge = SpiritCharge.new(spirit_charge_params)

    if @spirit_charge.save
      redirect_to spirit_charges_path, :flash => { :success => "Successfully create spirit" }
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private
    def spirit_charge_params
      params.require(:spirit_charge).permit(:title, :description)
    end
end
