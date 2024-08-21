class PagesController < ApplicationController
  def home
    @islands = Island.all
  end

  def dashboard
    @user = current_user.id
    @islands = Island.where(user_id: @user)
    @user_bookings = Booking.where(user_id: @user)
    @bookings = Booking.joins(:island).where("islands.user_id = ?", @user)
  end
end
