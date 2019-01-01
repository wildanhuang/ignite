class ReadingsController < ApplicationController
  def index
    @readings = current_user.readings
    @spirit_charge_size = SpiritCharge.count.to_f
  end
end
