class Booking < ApplicationRecord
  belongs_to :user
  has_many :memberships, as: :memberable, dependent: :destroy
  has_many :patients, through: :memberships
  
  accepts_nested_attributes_for :patients, allow_destroy: true
end
