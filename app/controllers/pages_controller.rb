class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user
    @bookings = Booking.all
    @requested_bookings = @bookings.select do |booking|
      booking.dinosaur.user == @user && booking.confirmation_status == false
    end
    @reserved_bookings = @user.bookings.where(confirmation_status: true)
    @dinosaurs = @user.dinosaurs
  end

  def bookings
    @user = current_user
    @bookings = Booking.all
    @requested_bookings = @bookings.select do |booking|
      booking.dinosaur.user == @user && booking.confirmation_status == false
    end
    @reserved_bookings = @user.bookings.where(confirmation_status: true)
  end
end
