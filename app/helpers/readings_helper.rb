module ReadingsHelper
  def readings_progress
    (@readings.size.to_f / @spirit_charge_size * 100).ceil.to_s
  end
end
