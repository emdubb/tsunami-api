require 'auth_token'
class Api::UsersController < ApplicationController

  def create
    user = User.new(user_params)

    if user.save
      render json: user
    else
      render status: :unprocessable_entity
    end
  end

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

  def me
    auth_header = request.headers["Authorization"]

    if auth_header
      auth_token = auth_header.split(' ').last
      credentials = AuthToken.decode(auth_token)

      user = User.find_by(email: credentials[:email])

      if user
        render json: user
      else
        render status: :not_found
      end
    else
      render status: :bad_request
    end

  end

  # GET /api/users
  def index
    render json: User.all
  end

  # GET /api/user/:id
  def show
    if user = User.find(params[:id])
      render json: user
    else
      render status: :not_found
    end
  end

  def update

  end

  def destroy

  end

  private
    def user_params
      params.permit(:name, :email, :password)
    end
end
