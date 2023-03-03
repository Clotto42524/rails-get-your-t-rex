class DinosaursController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_dinosaur, only: [:show, :destroy]

  def index
    @dinosaurs = Dinosaur.all
  end

  def show
    @booking = Booking.new
    total_ratings = []
    @dinosaur.reviews.map do |review|
      total_ratings << review.rating
    end
    if total_ratings.count.positive?
      @avg_rating = total_ratings.sum / total_ratings.count
    else
      @avg_rating = 0
    end
  end

  def new
    @dinosaur = Dinosaur.new
  end

  def create
    @dinosaur = Dinosaur.new(dinosaur_params)
    @dinosaur.user = current_user
    if @dinosaur.save
      redirect_to dinosaurs_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @dinosaur.destroy
    redirect_to dinosaurs_path, status: :see_other
  end

  private

  def dinosaur_params
    params.require(:dinosaur).permit(:name, :description, :age, :photo)
  end

  def set_dinosaur
    @dinosaur = Dinosaur.find(params[:id])
  end
end
