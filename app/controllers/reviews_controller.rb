class ReviewsController < ApplicationController

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(reviews_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    return redirect_to restaurant_path(@restaurant) if @review.save
    render :new
  end

  private

  def reviews_params
    params.require(:review).permit(:content, :rating)
  end
end
