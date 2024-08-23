class BookingsController < ApplicationController
  # def new
  #   @island = Island.find(params[:island_id])
  #   @bookings = Booking.new
  # end

  def create
    @island = Island.find(params[:island_id])
    @booking = Booking.new(booking_params)
    @booking.island_id = params[:island_id]
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to dashboard_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    if params[:status] == "true"
      @booking.update(status: true)
    elsif params[:status] == "false"
      @booking.update(status: false)
    end
    redirect_to dashboard_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status, :number_of_guests)
  end
end
