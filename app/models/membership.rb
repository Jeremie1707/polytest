class Membership < ApplicationRecord
  belongs_to :patient, optional:true
  belongs_to :memberable, polymorphic: true
end
