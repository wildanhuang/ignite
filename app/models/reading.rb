class Reading < ApplicationRecord
  belongs_to :user
  belongs_to :spirit_charge

  validates :spirit_charge_id, uniqueness: { scope: :user_id,
    message: "You can't read twice. Please read another one." }
end
