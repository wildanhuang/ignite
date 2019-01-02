class SpiritChargesController < ApplicationController
  before_action :set_spirit_charge, only: [:edit, :update, :destroy]

  def index
    per_page = params[:page] || 1
    @spirit_charges = SpiritCharge.where.not(id: current_user.readings.map(&:spirit_charge_id))
      .order(created_at: :asc).page(per_page).per(30)
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

  def read
    spirit_charge = SpiritCharge.find params[:spirit_charge_id]
    reading = current_user.readings.create(spirit_charge_id: spirit_charge.id)

    if reading.errors.present?
      redirect_to spirit_charges_path, :flash => { :error => reading.errors.messages[:spirit_charge_id].last }
    else
      redirect_to spirit_charges_path, :flash => { :success => "Successfully Read: #{spirit_charge.title}" }
    end
  end

  private
    def spirit_charge_params
      params.require(:spirit_charge).permit(:title, :description)
    end

    def set_spirit_charge
      @spirit_charge = SpiritCharge.find params[:id]
    end
end
