class ReviewsController < ApplicationController

  def index
    reviews = Review.all.order(rating: :desc)
    render json: reviews, include: :dog_house
  end

  # def show
  #   review = Review.find(params[:id])
  #   render json: review, include: :dog_house
  # end
end
