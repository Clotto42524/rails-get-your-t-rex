class BookingsController < ApplicationController
  before_action :set_dinosaur, only: [:new, :create, :update]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.dinosaur = @dinosaur
    if @booking.save
      redirect_to dinosaurs_path
    else
      render :show, status: :unprocessable_entity
    end
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:dinosaur_id, :user_id)
  end

  def set_dinosaur
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
  end
end
