class BookingsController < ApplicationController

  before_action :set_bookmark, only: :destroy
  before_action :set_cosplay, only: [:new, :create]
  def index
    @bookings = Booking.all
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
      redirect_to cosplay_bookings_path(@cosplay)
    else
      @cosplay = Cosplay.new
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to cosplay_path(@booking.cosplay), status: :see_other
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
