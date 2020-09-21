class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :memberships, as: :memberable, dependent: :destroy
  has_many :patients, through: :memberships

  accepts_nested_attributes_for :patients, allow_destroy: true
end
