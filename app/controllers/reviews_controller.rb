class ReviewsController < ApplicationController
  def new
    # @review = Review.new
  end

  def create
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
    @review = Review.new(review_params)
    @review.dinosaur = @dinosaur
    if @review.save
      redirect_to dinosaur_path(@dinosaur)
    else
      render "dinosaur/show", status: :unprocessable_entity
    end
  end

  private

  def review_params

  end
end
