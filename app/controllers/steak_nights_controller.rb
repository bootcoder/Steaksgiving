class SteakNightsController < ApplicationController
  before_action :set_steak_night, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @steak_nights = SteakNight.all
    respond_with(@steak_nights)
  end

  def show
    respond_with(@steak_night)
  end

  def new
    @steak_night = SteakNight.new
    respond_with(@steak_night)
  end

  def edit
  end

  def create
    @steak_night = SteakNight.new(steak_night_params)
    @steak_night.save
    respond_with(@steak_night)
  end

  def update
    @steak_night.update(steak_night_params)
    respond_with(@steak_night)
  end

  def destroy
    @steak_night.destroy
    respond_with(@steak_night)
  end

  private
    def set_steak_night
      @steak_night = SteakNight.find(params[:id])
    end

    def steak_night_params
      params.require(:steak_night).permit(:title, :night, :max_guests, :cover)
    end
end
