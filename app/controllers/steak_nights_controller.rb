class SteakNightsController < ApplicationController

  def index
    @steak_nights = SteakNight.all
  end

end
