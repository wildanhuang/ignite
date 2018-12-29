class SpiritChargesController < ApplicationController

  def index
    @spirit_charges = SpiritCharge.all.order(created_at: :asc)
  end

  def new
    @spirit_charge = SpiritCharge.new
  end
end
