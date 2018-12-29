class SpiritCharge < ApplicationRecord
  validates :title, presence: true

  has_many :readings
end
