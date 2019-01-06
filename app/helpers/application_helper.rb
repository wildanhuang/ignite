module ApplicationHelper
  def readings_progress(readings)
    (readings.size.to_f / SpiritCharge.count.to_f * 100).ceil.to_s
  end
end
