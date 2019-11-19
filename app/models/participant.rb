class Participant < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  before_create :create_code

  def create_code
    self.code = (0...8).map { (65 + rand(26)).chr }.join
  end
end
