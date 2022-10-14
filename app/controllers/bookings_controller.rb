class BookingsController < ApplicationController

  before_action :set_booking, only: :destroy
  before_action :set_cosplay, only: [:new, :create]
  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
    @cosplay = Cosplay.find(params[:cosplay_id])
    @booking = Booking.new
  end

  def create
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.cosplay = @cosplay
    @booking.user = @user
    if @booking.save
      redirect_to bookings_path
    else
      @cosplay = Cosplay.new
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:cosplay_id, :starting_date, :ending_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_cosplay
    @cosplay = Cosplay.find(params[:cosplay_id])
  end
end
