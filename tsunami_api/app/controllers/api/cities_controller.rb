class Api::CitiesController < ApplicationController

  before_action :authorize, except: [:index, :show]

  #GET /api/cities
  def index
    @cities = City.all
    # render json: City.all
  end

  #POST /api/cities
  def create
    city = City.create(city_params)

    if city.save
      render json: city
    else
      render status: :unprocessable_entity
    end
  end

  #GET /api/cities/:id
  def show
    render status: :not_found unless @city = City.find(params[:id])
  end

  #PATCH/PUT /users/:id
  def update
    city = City.find(params[:id])

    if city && city.update(city_params)
      render json: city
    else
      render status: :unprocessable_entity
    end
  end

  #DELETE /users/:id
  def destroy
    city = City.find(params[:id])

    if city && city.destroy
      render json: city
    else
      render status: :unprocessable_entity
    end
  end

  private
    def city_params
      params.require(:city).permit(:name, :county, :twitter, :email,
        :website1, :website2, :website3, :mobile_app, :facebook, :staion)
    end

end
