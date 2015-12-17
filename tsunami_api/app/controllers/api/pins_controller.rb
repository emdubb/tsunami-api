class Api::PinsController < ApplicationController

  before_action :authorize

  #POST /api/users/:id/pins
  def create
    user = User.find(params[:user_id])
    map = Map.find(params[:map_id])
    if user.maps.include?(map)
      pin = Pin.create(
        name: params[:pin]["name"],
        address: params[:pin]["address"],
        phone: params[:pin]["phone"],
        map_id: map.id,
        user_id: user.id
        )
      if pin.save
        render json: {message: "Pin successfully added", pin_id: pin.id}
      else
        render status: :unprocessable_entity
      end
    else
      render json: {message: "User has not added this map", map: map.id}
    end
  end

  #PATCH/PUT /api/users/:id/pins/:id
  def update
    pin = Pin.find(params[:id])

    if pin && pin.update(pin_params)
      render json: {message: "Pin successfully updated", pin: pin}
    else
      render status: :unprocessable_entity
    end
  end

  #DELETE /api/users/:id/pins/:id
  def destroy
    pin = Pin.find(params[:id])

    if pin && pin.destroy
      render json: {message: "Pin deleted", pin_name: pin.name, pin_id: pin.id}
    else
      render status: :unprocessable_entity
    end
  end

  private
    def pin_params
      params.require(:pin).permit(:name, :address, :phone, :coordinates,
        :css_location, :user_id, :map_id)
    end

end
