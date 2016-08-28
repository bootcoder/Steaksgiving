class User < ActiveRecord::Base
  has_many :bookings
  has_many :steak_nights, through: :bookings
end
