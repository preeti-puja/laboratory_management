class Laboratory < ApplicationRecord
  has_many :staffs, dependent: :destroy

  validates :name, :address1, :address2, :city, :state, :country, :zip, presence: true

  accept_nested_attributes_for :staffs
end
