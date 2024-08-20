class BookingsController < ApplicationController
  def new
    @island = Island.find(params[:island_id])
    @bookings = Booking.new
  end

  def create
    @island = Island.find(params[:island_id])
    @booking = Booking.new(booking_params)
    @booking.island_id = params[:island_id]
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to islands_path # this should redirect either to a booking confirmation or user dashboard
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :number_of_guests)
  end
end
