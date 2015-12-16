require 'auth_token'
class Api::UsersController < ApplicationController

  before_action :authorize, except: [:create, :token]

  # GET /api/users
  def index
    @users = User.all
  end

  # POST /api/users
  def create
    user = User.create(user_params)

    if user.save
      token
    else
      render status: :unprocessable_entity
    end
  end

  # GET /api/users/:id
  def show
    render status: :not_found unless @user = User.find(params[:id])
  end

  # PATCH/PUT /users/:id
  def update
    user = User.find(params[:id])

    if params[:map_id]
      map = Map.find(params[:map_id])

      if params[:add]
        if user.maps.include?(map)
          render json: {message: "Map already added!"}
        else
          user.add_map! map
          render json: {message: "Map added to user", map: map.id, user: user.id}
        end
      elsif params[:remove]
        user.remove_map!(map)
        render json: {message: "User no longer has map.", map: map.id, user: user.id, default_map: user.default_map}
      elsif params[:default]
        user.change_default_map!(map)
        render json: {message: "User default map updated", default_map: map.id, user: user.id}
      else
        render json: {message: "Missing params for map action: add, remove, or default."}
      end
    else
      render json: {message: "Missing map_id parameter."}
    end
  end

  # DELETE /users/:id
  def destroy
    user = User.find(params[:id])

    if user && user.destroy
      render json: user
    else
      render status: :unprocessable_entity
    end
  end

  # POST /api/token
  def token
    user = User.find_by(email: user_params[:email])

    if user && user.authenticate(user_params[:password])
      payload = {
        email: user.email
      }
      render json: {token: AuthToken.encode(payload)}
    else
      render status: :unauthorized
    end
  end

  # GET /api/me
  def me
    @user = User.find_by(email: @credentials[:email])
    render status: :not_found unless @user
  end

  private
    def user_params
      params.require(:user).permit(:fname, :lname, :email, :password,
        :default_map, :emer_hospital, :emer_meeting_area, :emer_name1,
        :emer_phone1, :emer_name2, :emer_phone2, :emer_name3, :emer_phone3, :maps)
    end
end
