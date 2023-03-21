class DogHousesController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  # def index
  #   render json: DogHouse.all, except: [:created_at, :updated_at]
  # end

  def show
    dog_house = DogHouse.find(params[:id])
    render json: dog_house, include: :reviews, except: [:created_at, :updated_at]
  end

  private

  def render_not_found_response
    render json: { error: "Dog house not found" }, status: :not_found
  end

end
