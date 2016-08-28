class SteakNight < ActiveRecord::Base
  has_many :bookings
  has_many :users, through: :bookings
  belongs_to :location
end
