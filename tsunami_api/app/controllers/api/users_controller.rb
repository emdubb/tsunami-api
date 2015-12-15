require 'auth_token'
class Api::UsersController < ApplicationController

  # POST /api/users
  def create
    user = User.new(user_params)

    if user.save
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
    auth_header = request.headers["Authorization"]

    if auth_header
      auth_token = auth_header.split(' ').last
      credentials = AuthToken.decode(auth_token)

      @user = User.find_by(email: credentials[:email])

      render status: :not_found unless @user

    else
      render status: :bad_request
    end
  end

  # GET /api/users
  def index
    @users = User.all
  end

  # GET /api/users/:id
  def show
    render status: :not_found unless @user = User.find(params[:id])
  end

  # PATCH/PUT /users/:id
  def update
    user = User.find(params[:id])

    if user && user.update(user_params)
      render json: user
    else
      render status: :unprocessable_entity
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

  private
    def user_params
      params.require(:user).permit(:fname, :lname, :email, :password,
        :default_map, :emer_hospital, :emer_meeting_area, :emer_name1,
        :emer_phone1, :emer_name2, :emer_phone2, :emer_name3, :emer_phone3, :maps)
    end
end
