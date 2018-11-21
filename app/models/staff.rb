class Staff < ApplicationRecord
  belongs_to :laboratory

  validates :email, :primary_pnumber, presence: true
end
