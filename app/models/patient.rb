class Patient < ApplicationRecord
  has_many :memberships
  has_many :users, through: :memberships, source: :memberable, source_type: 'User'
  has_many :referrals, through: :memberships, source: :memberable, source_type: 'Referral'
  has_many :bookings, through: :memberships, source: :memberable, source_type: 'Booking'
end
