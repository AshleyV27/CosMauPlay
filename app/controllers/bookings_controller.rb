class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.cosplay = @cosplay
    if @booking.save
      redirect_to cosplay_path(@cosplay)
    else
      @cosplay = cosplay.new
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to cosplay_path(@booking.cosplay), status: :see_other
  end
end

  private

  def booking_params
    params.require(:booking).permit(:cosplay_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
