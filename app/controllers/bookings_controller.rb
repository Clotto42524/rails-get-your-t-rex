class BookingsController < ApplicationController
  before_action :set_dinosaur, only: [:new, :create, :update]
  before_action :set_booking, only: [:update, :destroy]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.dinosaur = @dinosaur
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render :show, status: :unprocessable_entity
    end
  end

  def update

    @booking.confirmation_status = true
    @booking.save
    redirect_to dashboard_path
  end

  def destroy
    @booking.destroy
    redirect_to
  end

  private

  def booking_params
    params.require(:booking).permit(:dinosaur_id)
  end

  def set_dinosaur
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
