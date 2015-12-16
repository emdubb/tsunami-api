class Api::PinsController < ApplicationController

  before_action :authorize

  #GET /api/pins
  def index
    @pins = Pins.all
  end

end
