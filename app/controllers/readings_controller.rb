class ReadingsController < ApplicationController
  def index
    @readings = current_user.readings
  end
end
