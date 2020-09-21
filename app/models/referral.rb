class Referral < ApplicationRecord
  has_many :memberships, as: :memberable, dependent: :destroy
  has_many :patients, through: :memberships
end
