class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :steak_night
end
