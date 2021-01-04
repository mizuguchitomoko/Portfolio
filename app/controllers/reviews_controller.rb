class ReviewsController < ApplicationController
  def index
    @review = Review.new
    @reviews = Review.all.page(params[:page]).per(6)
  end

  def create
    review = Review.new(review_params)
    review.score = Language.get_data(review_params[:review_text])
    review.save
    redirect_to reviews_path
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to reviews_path
  end

  private
  def review_params
    params.require(:review).permit(:review_name, :review_text)
  end
end
