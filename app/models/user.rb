class User < ApplicationRecord
  has_many :islands
  has_many :bookings
  has_many :received_bookings, through: :islands, source: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
