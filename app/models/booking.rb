class Booking < ApplicationRecord
  has_many :memberships, as: :memberable, dependent: :destroy
  has_many :patients, through: :memberships
  
  accepts_nested_attributes_for :patients, allow_destroy: true
end
