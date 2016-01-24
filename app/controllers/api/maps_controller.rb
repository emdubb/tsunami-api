class Api::MapsController < ApplicationController

  # POST /api/maps
  def create
    map = Map.new(map_params)

    if map.save
      render json: map
    else
      render status: :unprocessable_entity
    end
  end

  # GET /api/maps
  def index
    render json: Map.all
  end

  # GET /api/maps/:id
  def show
    if map = Map.find(params[:id])
      render json: map
    else
      render status: :not_found
    end
  end

  # PATCH/PUT /maps/:id
  def update
    map = Map.find(params[:id])

    if map && map.update(map_params)
      render json: map
    else
      render status: :unprocessable_entity
    end
  end

  # DELETE /maps/:id
  def destroy
    map = Map.find(params[:id])

    if map && map.destroy
      render json: map
    else
      render status: :unprocessable_entity
    end
  end

  private
    def map_params
      params.require(:map).permit(:city_id, :name, :map_type, :map_url)
    end

end
