class Membership < ApplicationRecord
  belongs_to :patients
  belongs_to :memberable, polymorphic: true
end
