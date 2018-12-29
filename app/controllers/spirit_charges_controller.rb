class SpiritChargesController < ApplicationController
  before_action :set_spirit_charge, only: [:edit, :update, :destroy]

  def index
    @spirit_charges = SpiritCharge.all.order(created_at: :asc)
  end

  def new
    @spirit_charge = SpiritCharge.new
  end

  def edit
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
    if @spirit_charge.update_attributes(spirit_charge_params)
      redirect_to spirit_charges_path, :flash => { :success => "Successfully update spirit" }
    else
      render :edit
    end
  end

  def destroy
    @spirit_charge.destroy
    redirect_to spirit_charges_path, :flash => { :success => "Successfully delete spirit" }
  end

  private
    def spirit_charge_params
      params.require(:spirit_charge).permit(:title, :description)
    end

    def set_spirit_charge
      @spirit_charge = SpiritCharge.find params[:id]
    end
end
