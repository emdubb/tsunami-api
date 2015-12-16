class City < ActiveRecord::Base

  before_action :authorize, except: [:index, :show]

  #POST /api/cities
  def create
    city = City.create(city_params)

    if city.save
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
